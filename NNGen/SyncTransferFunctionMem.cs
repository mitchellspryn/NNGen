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
    /// A synchronous transfer function stored in memory. 
    /// The transfer function is assumed to be symmetric around x = 0
    /// </summary>
    public class SyncTransferFunctionMem : Entity
    {
        /// <summary>
        /// The address from which to read the memory
        /// </summary>
        public Port addr { get; private set; }

        /// <summary>
        /// The clock signal for the memory
        /// </summary>
        public Port clk { get; private set; }

        /// <summary>
        /// The output of the memory
        /// </summary>
        public Port data { get; private set; }

        /// <summary>
        /// The number of integer bits to use for the memory
        /// </summary>
        public int numIntBits { get; private set; }

        /// <summary>
        /// The number of fractional bits to use for the memory
        /// </summary>
        public int numFracBits { get; private set; }

        /// <summary>
        /// The name of the memory instance
        /// </summary>
        public string name { get; private set; }

        /// <summary>
        /// The transfer function to implement
        /// </summary>
        public TransferFunctionWrapper.MemoryActivationType activationType;

        /// <summary>
        /// Create a new instance of a memory implementation of a synchronous transfer function
        /// </summary>
        /// <param name="_numIntBits">The number of integer bits to use in the implementation</param>
        /// <param name="_numFracBits">The number of fractional bits to use in the implementation</param>
        /// <param name="_activationType">The transfer function to implement</param>
        /// <param name="_name">The name of the memory entity</param>
        public SyncTransferFunctionMem(int _numIntBits, int _numFracBits, TransferFunctionWrapper.MemoryActivationType _activationType, string _name)
        {
            this.numIntBits = _numIntBits;
            this.numFracBits = _numFracBits;
            this.activationType = _activationType;
            this.name = _name;

            this.addr = new Port(Port.portDirection.IN, "addr", Utilities.VHDLDataType.STD_LOGIC_VECTOR, this.numIntBits + this.numFracBits - 1, 0);
            this.data = new Port(Port.portDirection.OUT, "data", Utilities.VHDLDataType.STD_LOGIC_VECTOR, this.numIntBits + this.numFracBits, 0);
            this.clk = new Port(Port.portDirection.IN, "clk", Utilities.VHDLDataType.STD_LOGIC, 0, 0);

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
                this.addr
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
            return null; //intentionally hiding internal signal
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

                int numAddressSpaces = Convert.ToInt32(Math.Pow(2, this.addr.top + 1)) - 1;

                /*Declare types*/
                sw.WriteLine(String.Format("\ttype RAM_TYPE_{2} is array (0 to {0}) of std_logic_vector({1} downto 0);", numAddressSpaces, this.data.top, this.name));
                sw.WriteLine("");
                sw.WriteLine(String.Format("\tconstant MEM_INIT_{0} : RAM_TYPE_{0} := ", this.name));
                sw.WriteLine(String.Format("\t("));
                double valueLimits = Math.Pow(2.0, this.numIntBits + this.numFracBits) / Math.Pow(2.0, this.numFracBits);
                double step = 1.0 / Math.Pow(2.0, this.numFracBits);
                double i = 0;
                /*Iter down*/
                while (i < valueLimits)
                {
                    double activationForThisIndex;
                    switch (this.activationType)
                    {
                        case TransferFunctionWrapper.MemoryActivationType.BIPOLAR_SIGMOID:
                            activationForThisIndex = -1.0 + (2.0 / (1.0 + Math.Exp(i)));
                            break;
                        case TransferFunctionWrapper.MemoryActivationType.LINEAR:
                            activationForThisIndex = i;
                            break;
                        case TransferFunctionWrapper.MemoryActivationType.UNIPOLAR_SIGMOID:
                            activationForThisIndex = 1.0 / (1.0 + Math.Exp(i));
                            break;
                        case TransferFunctionWrapper.MemoryActivationType.HYPERBOLIC_TANGENT:
                            activationForThisIndex = (Math.Exp(2 * i) - 1) / (Math.Exp(2 * i) + 1);
                            break;
                        default:
                            throw new Exception("Unrecognized NeuronActivationType");
                    }
                    sw.Write("\t\t\"{0}\"", Utilities.getFixedPointRepresentation(activationForThisIndex, this.numIntBits, this.numFracBits));

                    i += step;
                    if (i < valueLimits)
                        sw.WriteLine(",");
                   
                }
                
                sw.WriteLine("");
                sw.WriteLine("\t);");
                sw.WriteLine("");

                sw.WriteLine(String.Format("\tSIGNAL ram : RAM_TYPE_{0} := MEM_INIT_{0};", this.name));
                sw.WriteLine("");
                sw.WriteLine("BEGIN");
                sw.WriteLine("");

                sw.WriteLine(String.Format("\tprocess({0})", this.clk.portName));
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
