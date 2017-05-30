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
    /// An entity that infers memory intended to be used for initializing a neural network
    /// </summary>
    public class WeightMemory : Entity
    {
        /// <summary>
        /// The clock signal. The memory device output is rising-edge registered 
        /// </summary>
        public Port clk { get; private set; }

        /// <summary>
        /// The address lines for the memory
        /// </summary>
        public Port addr { get; private set; }

        /// <summary>
        /// Memory output. On rising edge, the contents of memory pointed to by "addr" will appear on "q"
        /// </summary>
        public Port data { get; private set; }

        /// <summary>
        /// The initialization values for the memory. the i-th element will appear in the i-th address on startup.
        /// </summary>
        public List<string> weights_str { get; private set; }

        /// <summary>
        /// The name of the entity
        /// </summary>
        public string name { get; private set; }

        /// <summary>
        /// Initializes the entity
        /// </summary>
        /// <param name="_numIntBits">The number of integer bits to be used on the output bus</param>
        /// <param name="_numFracBits">The number of fractional bits to be used on the output bus</param>
        /// <param name="_weights">The list of startup weights (see weights_str)</param>
        public WeightMemory(int _numIntBits, int _numFracBits, List<double> _weights)
        {
            /*Initialize ports*/
            this.clk = new Port(Port.portDirection.IN, "clk", Utilities.VHDLDataType.STD_LOGIC, 0, 0);

            int numAddrBits = Utilities.getNumUnsignedBits(_weights.Count);
            this.addr = new Port(Port.portDirection.IN, "addr", Utilities.VHDLDataType.STD_LOGIC_VECTOR, numAddrBits - 1, 0);
            this.data = new Port(Port.portDirection.OUT, "data", Utilities.VHDLDataType.STD_LOGIC_VECTOR, _numIntBits + _numFracBits, 0);


            /*Initialize weight constant*/
            this.weights_str = new List<string>();

            for (int i = 0; i < _weights.Count; i++)
            {
                this.weights_str.Add(Utilities.getFixedPointRepresentation(_weights[i], _numIntBits, -1 * _numFracBits));
            }

            this.name = "weightMemory";

            return;
        }

        /// <summary>
        /// Returns the name of the entity
        /// </summary>
        /// <returns>The name of the entity</returns>
        public override string getName()
        {
            return this.name;
        }

        /// <summary>
        /// Returns the inputs to the device
        /// </summary>
        /// <returns>The inputs to the device</returns>
        public override Port[] getInputPorts()
        {
            return new Port[]
            {
                this.clk,
                this.addr,
            };
        }

        /// <summary>
        /// Returns the outputs to the device
        /// </summary>
        /// <returns>The outputs to the device</returns>
        public override Port[] getOutputPorts()
        {
            return new Port[] { this.data };
        }

        /// <summary>
        /// Returns the internal signals for the device
        /// </summary>
        /// <returns>The internal signals for the device</returns>
        public override Signal[] getInternalSignals()
        {
            return null;
        }

        /// <summary>
        /// Writes the .vhd files necessary to compile this entity.
        /// All other necessary entities (i.e. neurons, thresholding functions, etc.) will also be written 
        /// when this function returns
        /// </summary>
        /// <param name="file">The file path in which to write the files (do NOT include "...name.vhd"</param>
        /// <returns>true if the files were written successfully, false otherwise</returns>
        public override bool writeVHDL(string file)
        {
            bool successfulWrite = false;
            string entityFile = file + this.name + ".vhd";
            using (StreamWriter sw = new StreamWriter(entityFile))
            {
                if (!((this.writeVHDLIncludes(sw)) && (this.writeVHDLEntity(sw)) && (this.writeArchitectureStatement(sw))))
                {
                    return false;
                }

                int numAddressSpaces = Convert.ToInt32(Math.Pow(2, this.addr.top));

                /*Declare types*/
                sw.WriteLine(String.Format("\ttype RAM_TYPE is array (0 to {0}) of std_logic_vector({1} downto 0);", numAddressSpaces-1, this.data.top));
                sw.WriteLine("");
                sw.WriteLine(String.Format("\tconstant MEM_INIT : RAM_TYPE := "));
                sw.WriteLine(String.Format("\t("));
                string null_string = new String('1', numAddressSpaces + 1);
                for (int i = 0; i < numAddressSpaces; i++)
                {
                    if (i < this.weights_str.Count)
                    {
                        sw.Write(String.Format("\t\t\"{0}\"", this.weights_str[i]));
                    }
                    else
                    {
                        sw.Write(String.Format("\t\t\"{0}\"", null_string));
                    }
                    if (i != numAddressSpaces - 1)
                    {
                        sw.Write(",");
                    }
                    sw.WriteLine("");
                }
                sw.WriteLine(String.Format("\t);"));

                /*Declare signals*/
                sw.WriteLine(String.Format("\tsignal ram : RAM_TYPE := MEM_INIT;"));

                sw.WriteLine("begin");

                sw.WriteLine(String.Format("\tprocess ({0})", this.clk.portName));
                sw.WriteLine(String.Format("\tbegin"));
                sw.WriteLine(String.Format("\t\tif (rising_edge({0})) then", this.clk.portName));
                sw.WriteLine(String.Format("\t\t\t{0} <= ram(to_integer(unsigned({1})));", this.data.portName, this.addr.portName));
                sw.WriteLine(String.Format("\t\tend if;"));
                sw.WriteLine(String.Format("\tend process;"));

                successfulWrite = this.writeVHDLFooter(sw);

            }

            return successfulWrite;
        }
    }
}
