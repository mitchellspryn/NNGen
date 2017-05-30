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
    /// A class representing a singular neuron in a synchronous neural network
    /// </summary>
    public class SyncNeuron : Entity
    {
        /// <summary>
        /// The inputs to the neuron
        /// </summary>
        public Port[] neuronInputs { get; private set; }

        /// <summary>
        /// The output to the neuron
        /// </summary>
        public Port neuronOutput { get; private set; }

        /// <summary>
        /// The neuron's clock signal. Used for both loading and computing 
        /// </summary>
        public Port clk { get; private set; }

        /// <summary>
        /// When high, the neuron will continue the computation process. When low, it will pause.
        /// </summary>
        public Port Activate { get; private set; }

        /// <summary>
        /// When high, the neuron will continue the weight loading process. When low, it will pause the load process.
        /// </summary>
        public Port loadEnable { get; private set; }

        /// <summary>
        /// The value to load into the weight signal indexed by loadOffset
        /// </summary>
        public Port loadValue { get; private set; }

        /// <summary>
        /// The offset at which to load loadValue into the weight signals
        /// </summary>
        public Port loadOffset { get; private set; }

        /// <summary>
        /// When high, the final weight signal has been loaded
        /// </summary>
        public Port finalLoad { get; private set; }

        /// <summary>
        /// The weights of each of the individual inputs
        /// </summary>
        public Signal[] weightSignals { get; private set; }

        /// <summary>
        /// A signal used to count the number of clocks that have elapsed
        /// </summary>
        public Signal clockIter { get; private set; }

        /// <summary>
        /// Holds the current product of a weight and an input
        /// </summary>
        public Signal currentProduct { get; private set; }

        /// <summary>
        /// Holds the sum of currentProduct and the cumulative sum of the previous states of currentProduct
        /// </summary>
        public Signal currentSum { get; private set; }

        /// <summary>
        /// Holds the cumulative sum of the states of currentProduct
        /// </summary>
        public Signal sum { get; private set; }

        /// <summary>
        /// A latch so the output doesn't fluctuate while being computed
        /// </summary>
        public Signal latchOut { get; private set; }

        /// <summary>
        /// The name of the neuron
        /// </summary>
        public string name { get; private set; }

        /// <summary>
        /// Create a synchronous neuron
        /// </summary>
        /// <param name="_inputPorts">The inputs to the network</param>
        /// <param name="_numOutputIntBits">The number of output integer bits from the neuron</param>
        /// <param name="_numOutputFracBits">The number of output fractional bits from the neuron</param>
        /// <param name="_numWeightIntBits">The number of integer bits to use in the weight signals</param>
        /// <param name="_name">The name of the neuron</param>
        public SyncNeuron(Port[] _inputPorts, int _numOutputIntBits, int _numOutputFracBits, int _numWeightIntBits, string _name)
        {
            this.name = _name;
            this.neuronInputs = _inputPorts;
            this.neuronOutput = new Port(Port.portDirection.OUT, "neuronOut", Utilities.VHDLDataType.SIGNED_FIXED_POINT, _numOutputIntBits, -1 * _numOutputFracBits);

            /*Set up weight signals*/
            this.weightSignals = new Signal[this.neuronInputs.Length];
            for (int i = 0; i < this.neuronInputs.Length; i++)
            {
                this.weightSignals[i] = new Signal(String.Format("w_{0}", i), Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, _numWeightIntBits, _numOutputFracBits * -1);
            }

            /*Set up clock iteration counter*/
            int maxClkCounterValue = Utilities.getNumUnsignedBits(_inputPorts.Length);
            this.clockIter = new Signal("clockIter", Utilities.VHDLDataType.UNSIGNED, new String('0', maxClkCounterValue), maxClkCounterValue - 1, 0);

            /*Set up currentProduct, sum and currentSum signals*/
            this.currentProduct = new Signal("currentProduct", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, this.weightSignals[0].top + this.neuronInputs[0].top + 1, this.weightSignals[0].bottom + this.neuronInputs[0].bottom);
            this.sum = new Signal("sum", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, this.currentProduct.top + 2, this.currentProduct.bottom);
            this.currentSum = new Signal("currentSum", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, this.sum.top, this.sum.bottom);

            /*Set up output latch*/
            this.latchOut = new Signal("latchOut", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, this.neuronOutput.top, this.neuronOutput.bottom);

            /*Set up ports*/
            this.clk = new Port(Port.portDirection.IN, "clk", Utilities.VHDLDataType.STD_LOGIC, 0, 0);
            this.loadEnable = new Port(Port.portDirection.IN, "loadEnable", Utilities.VHDLDataType.STD_LOGIC, 0, 0);
            this.Activate = new Port(Port.portDirection.IN, "activate", Utilities.VHDLDataType.STD_LOGIC, 0, 0);
            this.loadValue = new Port(Port.portDirection.IN, "loadValue", Utilities.VHDLDataType.SIGNED_FIXED_POINT, this.weightSignals[0].top, this.weightSignals[0].bottom);
            this.loadOffset = new Port(Port.portDirection.IN, "loadOffset", Utilities.VHDLDataType.UNSIGNED, maxClkCounterValue - 1, 0);
            this.finalLoad = new Port(Port.portDirection.OUT, "finalLoad", Utilities.VHDLDataType.STD_LOGIC, 0, 0);
        }

        /// <summary>
        /// Returns the name of the neuron
        /// </summary>
        /// <returns>The name of the neuron</returns>
        public override string getName()
        {
            return this.name;
        }

        /// <summary>
        /// Returns the input ports to the neuron
        /// </summary>
        /// <returns>The input ports to the neuron</returns>
        public override Port[] getInputPorts()
        {
            Port[] ports = new Port[this.neuronInputs.Length + 5];
            this.neuronInputs.CopyTo(ports, 0);
            ports[ports.Length - 5] = this.clk;
            ports[ports.Length - 4] = this.Activate;
            ports[ports.Length - 3] = this.loadEnable;
            ports[ports.Length - 2] = this.loadValue;
            ports[ports.Length - 1] = this.loadOffset;
            return ports;
        }

        /// <summary>
        /// Returns the output ports of the neuron
        /// </summary>
        /// <returns>The output ports of the neuron</returns>
        public override Port[] getOutputPorts()
        {
            return new Port[] 
            { 
                this.finalLoad, 
                this.neuronOutput
            };
        }

        /// <summary>
        /// Returns a list of internal signals for the neuron
        /// </summary>
        /// <returns>The internal signals for the neuron</returns>
        public override Signal[] getInternalSignals()
        {
            Signal[] signals = new Signal[this.weightSignals.Length + 5];
            this.weightSignals.CopyTo(signals, 0);
            signals[signals.Length - 5] = this.latchOut;
            signals[signals.Length - 4] = this.currentProduct;
            signals[signals.Length - 3] = this.currentSum;
            signals[signals.Length - 2] = this.sum;
            signals[signals.Length - 1] = this.clockIter;
            return signals;
        }

        /// <summary>
        /// Writes the .vhd file that describes the neuron. 
        /// </summary>
        /// <param name="filePath">The root file path for the network. Do not include "(name).vhd" in the filepath</param>
        /// <returns>True if the file was written successfully, false otherwise</returns>
        public override bool writeVHDL(string filePath)
        {
            bool successfulWrite = false;
            string entityFile = filePath + this.name + ".vhd";
            using (StreamWriter sw = new StreamWriter(entityFile))
            {
                if (!((this.writeVHDLIncludes(sw)) && (this.writeVHDLEntity(sw)) && (this.writeArchitectureStatement(sw)) && (this.writeVHDLSignals(sw))))
                {
                    return false;
                }

                /*Write loading process*/
                sw.WriteLine(String.Format("\tprocess({0}) begin", this.clk.portName));
                sw.WriteLine(String.Format("\t\tif (rising_edge({0})) then", this.clk.portName));
                sw.WriteLine(String.Format("\t\t\tif ({0} = '1') then", this.loadEnable.portName));
                sw.WriteLine(String.Format("\t\t\t\tcase {0} is", this.loadOffset.portName));
                for (int i = 0; i < this.weightSignals.Length; i++)
                {
                    sw.WriteLine(String.Format("\t\t\t\t\twhen \"{0}\" =>", Utilities.getTwosComplement(i, this.clockIter.top + 1)));
                    sw.WriteLine(String.Format("\t\t\t\t\t\t{0} <= {1};", this.weightSignals[i].name, this.loadValue.portName));
                    sw.Write(String.Format("\t\t\t\t\t\t{0} <= ", this.finalLoad.portName));
                    if (i == this.weightSignals.Length - 1)
                        sw.WriteLine(@"'1';");
                    else
                        sw.WriteLine(@"'0';");
                }
                sw.WriteLine(String.Format("\t\t\t\t\twhen others => "));
                sw.WriteLine(String.Format("\t\t\t\t\t\t{0} <= '0';", this.finalLoad.portName));
                sw.WriteLine(String.Format("\t\t\t\tend case;"));
                sw.WriteLine(String.Format("\t\t\tend if;"));
                sw.WriteLine(String.Format("\t\tend if;"));
                sw.WriteLine(String.Format("\tend process;"));
                sw.WriteLine("");

                /*Write pipelined sync neuron logic*/
                sw.WriteLine(String.Format("\tprocess({0}, {1}) begin", this.clk.portName, this.Activate.portName));
                sw.WriteLine(String.Format("\t\tif rising_edge({0}) then", this.clk.portName));
                sw.WriteLine(String.Format("\t\t\tcase {0} is", this.clockIter.name));
                for (int i = 0; i <= this.weightSignals.Length; i++)
                {
                    sw.WriteLine(String.Format("\t\t\t\twhen \"{0}\" =>", Utilities.getTwosComplement(i, this.clockIter.top + 1)));
                    if (i == 0)
                    {
                        sw.WriteLine(String.Format("\t\t\t\t\t{0} <= {1} * {2};", this.currentProduct.name, this.neuronInputs[i].portName, this.weightSignals[i].name));
                        sw.WriteLine(String.Format("\t\t\t\t\t{0} <= to_sfixed(0, {0});", this.currentSum.name));
                        sw.WriteLine(String.Format("\t\t\t\t\t{0} <= to_unsigned({1}, {0}'length);", this.clockIter.name, i + 1));
                    }
                    else if (i == this.weightSignals.Length)
                    {
                        sw.WriteLine(String.Format("\t\t\t\t\t{0} <= to_sfixed(0, {0});", this.currentProduct.name));
                        sw.WriteLine(String.Format("\t\t\t\t\t{0} <= {1};", this.currentSum.name, this.sum.name));
                        sw.WriteLine(String.Format("\t\t\t\t\t{0} <= {1}({2} downto {3});", this.latchOut.name, this.sum.name, this.latchOut.top, this.latchOut.bottom));
                    }
                    else
                    {
                        sw.WriteLine(String.Format("\t\t\t\t\t{0} <= {1} * {2};", this.currentProduct.name, this.neuronInputs[i].portName, this.weightSignals[i].name));
                        sw.WriteLine(String.Format("\t\t\t\t\t{0} <= {1};", this.currentSum.name, this.sum.name));
                        sw.WriteLine(String.Format("\t\t\t\t\t{0} <= to_unsigned({1}, {0}'length);", this.clockIter.name, i + 1));
                    }
                }
                sw.WriteLine("\t\t\t\t when others =>");
                sw.WriteLine("\t\t\t\t\tnull;");
                sw.WriteLine("\t\t\tend case;");

                sw.WriteLine(String.Format("\t\t\tif ({0} = '1') then", this.Activate.portName));
                sw.WriteLine(String.Format("\t\t\t\t\tif ({0} = to_unsigned(0, {0}'length)) then", this.clockIter.name));
                sw.WriteLine(String.Format("\t\t\t\t\t{0} <= to_unsigned(1, {0}'length);", this.clockIter.name));
                sw.WriteLine(String.Format("\t\t\t\tend if;"));
                sw.WriteLine(String.Format("\t\t\telsif ({0} = '0') then", this.Activate.portName));
                sw.WriteLine(String.Format("\t\t\t\tif ({0} = to_unsigned({1}, {0}'length)) then", this.clockIter.name, this.weightSignals.Length));
                sw.WriteLine(String.Format("\t\t\t\t\t{0} <= to_unsigned(0, {0}'length);", this.clockIter.name));
                sw.WriteLine(String.Format("\t\t\t\tend if;"));
                sw.WriteLine(String.Format("\t\t\tend if;"));
                sw.WriteLine(String.Format("\t\tend if;"));
                sw.WriteLine(String.Format("\tend process;"));
                sw.WriteLine("");

                /*Write async processes*/
                sw.WriteLine(String.Format("\t{0} <= resize({1} + {2}, {0});", this.sum.name, this.currentSum.name, this.currentProduct.name));
                sw.WriteLine(String.Format("\t{0} <= {1};", this.neuronOutput.portName, this.latchOut.name));
                sw.WriteLine("");

                successfulWrite = this.writeVHDLFooter(sw);
            }
            return successfulWrite;
        }

    }
}
