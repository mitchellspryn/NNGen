/* Author: Mitchell Spryn (mitchell.spryn@gmail.com) 
 * There is no warranty with this code. I provide it with the intention of being interesting/helpful, but make no
 * guarantees about its correctness or robustness. 
 * This code is free to use as you please, as long as this header comment is left in all of the files and credit is attributed to me for the original content that I have created.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;


namespace NNGen
{
    /// <summary>
    /// An interface for any object that will eventually generate a VHDL entity
    /// </summary>
    public abstract class Entity
    {
        /// <summary>
        /// Returns a string representing the name of the entity
        /// (i.e. the XXX in the line "ENTITY XXX IS ...")
        /// </summary>
        /// <returns>Name of the entity</returns>
        public abstract string getName();

        /// <summary>
        /// Returns an array of Ports representing the inputs to the entity
        /// </summary>
        /// <returns>The inputs to the entity</returns>
        public abstract Port[] getInputPorts();

        /// <summary>
        /// Returns an array of Ports representing the outputs of the entity
        /// </summary>
        /// <returns>The outputs of the entity</returns>
        public abstract Port[] getOutputPorts();

        /// <summary>
        /// Returns an array of singnals representing the internal signals of the entity
        /// </summary>
        /// <returns>The internal signals of the entity</returns>
        public abstract Signal[] getInternalSignals();

        /// <summary>
        /// Writes the VHDL entity to file.
        /// </summary>
        /// <param name="file">The file path to which the entity is to be written</param>
        /// <returns>True if the file was written successfully, false otherwise.</returns>
        public abstract bool writeVHDL(string file);

        /// <summary>
        /// Writes the "library" and "use" include statements for the project
        /// </summary>
        /// <param name="sw">The stream in which to write. Must be open and valid</param>
        /// <returns>True if the lines were written successfully, false otherwise</returns>
        public bool writeVHDLIncludes(StreamWriter sw)
        {
            if (sw.BaseStream == null)
            {
                return false;
            }

            /*Write header*/
            sw.WriteLine("LIBRARY ieee;");
            sw.WriteLine("USE ieee.std_logic_1164.all;");
            sw.WriteLine("USE ieee.numeric_std.all;");
            sw.WriteLine("USE work.fixed_pkg.all;");
            sw.WriteLine("");

            sw.Flush();
            return true;
        }

        /// <summary>
        /// Writes an entity statement 
        /// "ENTITY ... IS PORT ( ... ); END ...;
        /// </summary>
        /// <param name="sw">The stream in which to write. Must be open and valid</param>
        /// <returns>True if the lines were written successfully, false otherwise</returns>
        public bool writeVHDLEntity(StreamWriter sw)
        {
            if (sw.BaseStream == null)
            {
                return false;
            }

            /*Entity declaration*/
            sw.WriteLine(String.Format("ENTITY {0} IS", this.getName()));

            if (!this.writeVHDLPorts(sw))
            {
                return false;
            }
                       
            sw.WriteLine(String.Format("END {0};", this.getName()));
            sw.WriteLine("");

            sw.Flush();
            return true;

        }

        /// <summary>
        /// Writes a component statment, used to declare smaller entities within a larger entity
        /// COMPONENT ... PORT ( ... ); END COMPONENT;
        /// </summary>
        /// <param name="sw">The stream in which to write. Must be open and valid</param>
        /// <returns>True if the lines were written successfully, false otherwise</returns>
        public bool writeVHDLComponent(StreamWriter sw)
        {
            if (sw.BaseStream == null)
            {
                return false;
            }

            sw.WriteLine(String.Format("COMPONENT {0}", this.getName()));

            if (!this.writeVHDLPorts(sw))
            {
                return false;
            }

            sw.WriteLine("END COMPONENT;");
            return true;
        }

        /// <summary>
        /// Writes the port statement for a VHDL entity
        /// PORT ( ... );
        /// </summary>
        /// <param name="sw">The stream in which to write. Must be open and valid</param>
        /// <returns>True if the lines were written successfully, false otherwise</returns>
        public bool writeVHDLPorts(StreamWriter sw)
        {
            if (sw.BaseStream == null)
            {
                return false;
            }

            sw.WriteLine("PORT");
            sw.WriteLine("(");

            Port[] inputPorts = this.getInputPorts();
            Port[] outputPorts = this.getOutputPorts();

            Port[] allPorts = new Port[inputPorts.Length + outputPorts.Length];
            inputPorts.CopyTo(allPorts, 0);
            outputPorts.CopyTo(allPorts, inputPorts.Length);

            for (int i = 0; i < allPorts.Length; i++)
            {
                sw.WriteLine(String.Format("\t{0}", allPorts[i].VHDLString(i == (allPorts.Length - 1))));
            }

            sw.WriteLine(");");
            return true;
        }

        /// <summary>
        /// Writes the component statment for each of the entities in dependentEntities
        /// See writeVHDLComponent()
        /// </summary>
        /// <param name="sw">The stream in which to write. Must be open and valid</param>
        /// <param name="dependentEntities">The entities for which to write the component statements</param>
        /// <returns>True if the lines were written successfully, false otherwise</returns>
 
        public bool writeVHDLDependencies(StreamWriter sw, List<Entity> dependentEntities)
        {
            if (sw.BaseStream == null)
            {
                return false;
            }

            for (int i = 0; i < dependentEntities.Count; i++)
            {
                if (dependentEntities[i] != null)
                {
                    dependentEntities[i].writeVHDLComponent(sw);
                    sw.WriteLine("");
                }
            }

            return true;
        }


        /// <summary>
        /// Writes the internal signals for the entity 
        /// SIGNAL ...
        /// </summary>
        /// <param name="sw">The stream in which to write. Must be open and valid</param>
        /// <returns>True if the lines were written successfully, false otherwise</returns>
        public bool writeVHDLSignals(StreamWriter sw)
        {
            if (sw.BaseStream == null)
            {
                return false;
            }

            

            Signal[] signals = this.getInternalSignals();

            List<ArraySignal> arraySignalNames = new List<ArraySignal>();
            for (int i = 0; i < signals.Length; i++)
            {
                if (signals[i] != null && signals[i] is ArraySignal)
                {
                    var arraySignal = (ArraySignal) signals[i];
                    if (!arraySignalNames.Any<ArraySignal>(x => x.baseSignal.name == arraySignal.baseSignal.name))
                    {
                        sw.WriteLine(String.Format("\t{0}",arraySignal.Declare()));
                        arraySignalNames.Add(arraySignal);
                    }
                }
            }

            for (int i = 0; i < signals.Length; i++)
            {
                if (signals[i] != null)
                    sw.WriteLine(String.Format("\t{0}", signals[i].VHDLString()));
            }

            sw.WriteLine("");
            sw.WriteLine("BEGIN");
            sw.WriteLine("");
            return true;
        }

        /// <summary>
        /// Writes the architecture statment for the entity
        /// ARCHITECTURE ... OF ... IS
        /// </summary>
        /// <param name="sw">The stream in which to write. Must be open and valid</param>
        /// <returns>True if the lines were written successfully, false otherwise</returns>
        public bool writeArchitectureStatement(StreamWriter sw)
        {
            if (sw.BaseStream == null)
            {
                return false;
            }

            /*Architecture line*/
            sw.WriteLine(String.Format("ARCHITECTURE behavorial OF {0} IS ", this.getName()));
            sw.WriteLine("");

            sw.Flush();
            return true;
        }

        /// <summary>
        /// Writes the VHDL footer for the entity and flushes the stream
        /// END ARCHITECTURE;
        /// </summary>
        /// <param name="sw">The stream in which to write. Must be open and valid</param>
        /// <returns>True if the lines were written successfully, false otherwise</returns>
        public bool writeVHDLFooter(StreamWriter sw)
        {
            if (sw.BaseStream == null)
            {
                return false;
            }

            sw.WriteLine("END ARCHITECTURE;");

            sw.Flush();
            return true;
        }

    }
}
