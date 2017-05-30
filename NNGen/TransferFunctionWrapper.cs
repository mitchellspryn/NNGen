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
using System.Reflection;
using System.ComponentModel;
using System.IO;

namespace NNGen
{
    /// <summary>
    /// Initializes a wrapper for the transfer function memory element.
    /// As all implemented functions are symmetric around x = 0, we can save memory by only saving the values for x greater than 0 value in memory, and computing the x less than 0 values by (value = 1.0 - abs(x))
    /// Also, the functions implemented (aside from the Linear node) are very close to 1 or -1 when abs(x) >= 6.0, so when the input is in that range, the output is computed as:
    ///     (out = 1.0 * sgn(x)) (sgn = {1 if x > 0, -1 otherwise})
    ///     (note, for Unipolar Sigmoid, the lower limit is 0, not -1)
    /// </summary>
    public class TransferFunctionWrapper : Entity
    {
        /// <summary>
        /// The supported memory activation types
        /// </summary>
        public enum MemoryActivationType
        {
            /// <summary>
            /// Linear: F(x) = x
            /// </summary>
            [Description("LINEAR")]
            LINEAR,

            /// <summary>
            /// Unipolar sigmoid: F(x) = 1 / (1 + exp(-x))
            /// </summary>
            [Description("UNIPOLAR_SIGMIOD")]
            UNIPOLAR_SIGMOID,

            /// <summary>
            /// Bipolar sigmoid: F(x) = -1 + (2 / (1 + exp(-x))
            /// </summary>
            [Description("BIPOLAR_SIGMOID")]
            BIPOLAR_SIGMOID,

            /// <summary>
            /// Hyperbolic Tangent: F(X) = tanh(x)
            /// </summary>
            [Description("HYPERBOLIC_TAN")]
            HYPERBOLIC_TANGENT
        }

        /// <summary>
        /// The name of the TransferFunctionWrapper entity
        /// </summary>
        public string name { get; private set; }

        /// <summary>
        /// The address requested from memory (i.e. the value of x)
        /// </summary>
        public Port addr { get; private set; }

        /// <summary>
        /// The clock signal for the memory
        /// </summary>
        public Port clk { get; private set; }

        /// <summary>
        /// The output from the wrapper
        /// </summary>
        public Port data { get; private set; }

        /// <summary>
        /// Used in computing the value (-1 * Addr) 
        /// </summary>
        public Signal inverseAddrTemp { get; private set; }

        /// <summary>
        /// Holds the value (-1 * Addr)
        /// </summary>
        public Signal inverseAddr { get; private set; }

        /// <summary>
        /// The address from memory to grab
        /// </summary>
        public Signal memAddr { get; private set; }

        /// <summary>
        /// The output of the memory
        /// </summary>
        public Signal memOut { get; private set; }

        /// <summary>
        /// The output of the memory, cast to sfixed
        /// </summary>
        public Signal memOut_sfixed { get; private set; }

        /// <summary>
        /// Holds the value of 1 - output (used to compute the values when the input is less than 0)
        /// </summary>
        public Signal oneMinusMemOut_sfixed { get; private set; }

        /// <summary>
        /// The output of the device
        /// </summary>
        public Signal outSig { get; private set; }

        /// <summary>
        /// The memory activation type to implement 
        /// </summary>
        public MemoryActivationType activationType { get; private set; }

        /// <summary>
        /// The memory entity from which to read the transfer function
        /// </summary>
        public SyncTransferFunctionMem sm { get; private set; }

        /// <summary>
        /// Determined whether the transfer function wrapper is of the linear type or a different type. 
        /// </summary>
        private bool isLinear = false;

        /// <summary>
        /// Create a TransferFunctionWrapper entity
        /// </summary>
        /// <param name="_numIntBits">The number of integer bits to use</param>
        /// <param name="_numFracBits">The number of fractional bits to use</param>
        /// <param name="_activationType">The activation type to implement</param>
        public TransferFunctionWrapper(int _numIntBits, int _numFracBits, MemoryActivationType _activationType)
        {
            this.name = String.Format("TFWrapper_{0}", Utilities.GetDescription<MemoryActivationType>(_activationType));
            this.activationType = _activationType;

            /*Init IO ports*/
            this.addr = new Port(Port.portDirection.IN, "addr", Utilities.VHDLDataType.SIGNED_FIXED_POINT, _numIntBits, -1 * _numFracBits);
            this.clk = new Port(Port.portDirection.IN, "clk", Utilities.VHDLDataType.STD_LOGIC, 0, 0);
            this.data = new Port(Port.portDirection.OUT, "data", Utilities.VHDLDataType.SIGNED_FIXED_POINT, _numIntBits, -1 * _numFracBits);

            /*Init internal signals*/
            if (activationType == MemoryActivationType.LINEAR)
            {
                /*No internal signals needed!*/
                this.inverseAddr = null;
                this.memAddr = null;
                this.memOut = null;
                this.memOut_sfixed = null;
                this.oneMinusMemOut_sfixed = null;
                this.outSig = null;
                this.sm = null;
                this.isLinear = true;
            }
            else
            {
                this.inverseAddr = new Signal("inverseAddr", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, _numIntBits, _numFracBits * -1);
                this.inverseAddrTemp = new Signal("inverseAddrTemp", Utilities.VHDLDataType.UNSIGNED, null, _numIntBits + _numFracBits, 0);
                this.memAddr = new Signal("memAddr", Utilities.VHDLDataType.STD_LOGIC_VECTOR, null, _numIntBits + _numFracBits - 1, 0);
                this.memOut = new Signal("memOut", Utilities.VHDLDataType.STD_LOGIC_VECTOR, null, _numFracBits + _numIntBits, 0);
                this.memOut_sfixed = new Signal("memOut_sfixed", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, _numIntBits, _numFracBits * -1);
                this.oneMinusMemOut_sfixed = new Signal("oneMinusMemOut_sfixed", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, _numIntBits, _numFracBits * -1);
                this.outSig = new Signal("outSig", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, _numIntBits, _numFracBits * -1);
                this.sm = new SyncTransferFunctionMem(_numIntBits, _numFracBits, activationType, String.Format("TFWrap_Mem_{0}", Utilities.GetDescription<MemoryActivationType>(activationType)));
                this.isLinear = false;
            }

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
            return new Signal[]
            {
                this.inverseAddr,
                this.inverseAddrTemp,
                this.memAddr, 
                this.memOut, 
                this.memOut_sfixed,
                this.oneMinusMemOut_sfixed,
                this.outSig
            };
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

                if (!this.isLinear)
                {
                    List<Entity> DependentEntities = new List<Entity>();
                    DependentEntities.Add(this.sm);
                    if (!(this.writeVHDLDependencies(sw, DependentEntities) && this.writeVHDLSignals(sw)))
                        return false;

                    sw.WriteLine(String.Format("\t{0} <= not(unsigned({1})) + 1;", this.inverseAddrTemp.name, this.addr.portName));
                    sw.WriteLine(String.Format("\t{0} <= to_sfixed(std_logic_vector({1}), {0});", this.inverseAddr.name, this.inverseAddrTemp.name));
                    sw.WriteLine("");

                    sw.WriteLine(String.Format("\tprocess({0}) begin", this.addr.portName));
                    sw.WriteLine(String.Format("\t\tif ({0} >= 0) then", this.addr.portName));
                    sw.WriteLine(String.Format("\t\t\t{0} <= to_slv({1}({2} downto {3}));", this.memAddr.name, this.addr.portName, this.addr.top - 1, this.addr.bottom));
                    sw.WriteLine(String.Format("\t\telse"));
                    sw.WriteLine(String.Format("\t\t\t{0} <= to_slv({1}({2} downto {3}));", this.memAddr.name, this.inverseAddr.name, this.inverseAddr.top - 1, this.inverseAddr.bottom));
                    sw.WriteLine(String.Format("\t\tend if;"));
                    sw.WriteLine(String.Format("\tend process;"));
                    sw.WriteLine("");

                    sw.WriteLine(String.Format("\tsm: {0} PORT MAP", this.sm.name));
                    sw.WriteLine(String.Format("\t("));
                    sw.WriteLine(String.Format("\t\t{0} => {1},", sm.addr.portName, this.memAddr.name));
                    sw.WriteLine(String.Format("\t\t{0} => {1},", sm.clk.portName, this.clk.portName));
                    sw.WriteLine(String.Format("\t\t{0} => {1}", sm.data.portName, this.memOut.name));
                    sw.WriteLine(String.Format("\t);"));
                    sw.WriteLine(String.Format("\t{0} <= to_sfixed({1}, {0});", this.memOut_sfixed.name, this.memOut.name));
                    sw.WriteLine("");

                    sw.WriteLine(String.Format("\t{0} <= resize(to_sfixed(1, {0}) - {1}, {1}'high, {1}'low);", this.oneMinusMemOut_sfixed.name, this.memOut_sfixed.name));
                    sw.WriteLine("");

                    sw.WriteLine(String.Format("\tprocess({0}) begin", this.addr.portName));
                    sw.WriteLine(String.Format("\t\tif ({0} > to_sfixed(6, {0})) then", this.addr.portName));
                    sw.WriteLine(String.Format("\t\t\t{0} <= to_sfixed(1, {0});", this.outSig.name));
                    sw.WriteLine(String.Format("\t\telsif({0} < to_sfixed(6, {0})) then", this.addr.portName));
                    if (this.activationType != MemoryActivationType.UNIPOLAR_SIGMOID)
                        sw.WriteLine(String.Format("\t\t\t{0} <= to_sfixed(-1, {0});", this.outSig.name));
                    else
                        sw.WriteLine(String.Format("\t\t\t{0} <= to_sfixed(0, {0});", this.outSig.name));
                    sw.WriteLine(String.Format("\t\telsif (({0} >= to_sfixed(0, {0})) AND ({0} < to_sfixed(6, {0}))) then", this.addr.portName));
                    sw.WriteLine(String.Format("\t\t\t{0} <= {1};", this.outSig.name, this.memOut_sfixed.name));
                    sw.WriteLine(String.Format("\t\telse"));
                    sw.WriteLine(String.Format("\t\t\t{0} <= {1};", this.outSig.name, this.oneMinusMemOut_sfixed.name));
                    sw.WriteLine(String.Format("\t\tend if;"));
                    sw.WriteLine(String.Format("\tend process;"));
                    sw.WriteLine("");

                    sw.WriteLine(String.Format("\t{0} <= {1};", this.data.portName, this.outSig.name));
                }
                else
                {
                    if (!this.writeVHDLSignals(sw))
                        return false;
                    sw.WriteLine(String.Format("{0} <= {1};", this.data.portName, this.addr.portName));
                }

                successfulWrite = this.writeVHDLFooter(sw);

                if (sm != null && !sm.writeVHDL(file))
                    return false;
            }

            return successfulWrite;
        }
    }
}
