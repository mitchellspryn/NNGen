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
using System.Reflection;
using System.ComponentModel;

namespace NNGen
{
    /// <summary>
    /// An abstraction of a single neuron within a network
    /// </summary>
    public class AsyncNeuron : Entity
    {
        /// <summary>
        /// An enumeration representing the different output activation functions supported by the neuron
        /// </summary>
        public enum NeuronActivationType
        {
            /// <summary>
            /// A linear neuron
            /// </summary>
            [Description("LINEAR")]
            LINEAR,
            /// <summary>
            /// A sigmoid approximation using f(x) ~ (1/2)*(1 + (x/(x+1)) )
            /// </summary>
            [Description("SIGMOID_POLY_APPROX")]
            SIGMOID_POLY_APPROX,
            /// <summary>
            /// Represents no activation function, used for input neurons
            /// </summary>
            [Description("NONE")]
            NONE
        };

        /// <summary>
        /// The inputs to the neuron
        /// </summary>
        public Port[] neuronInputs { get; private set; }

        /// <summary>
        /// A clock port used for the synchornous loading of the neuron weights
        /// </summary>
        public Port loadClkPort { get; private set; }

        /// <summary>
        /// When high, the loading process will be enabled.
        /// </summary>
        public Port loadEnablePort { get; private set; }

        /// <summary>
        /// During weight loading, the value presented on this port will be clocked into one of the weight signals on the rising edge of loadClkPort
        /// </summary>
        public Port loadValuePort { get; private set; }

        /// <summary>
        /// During weight loading, the weight signal pointed to by this signal will be loaded with the value of loadValuePort
        /// </summary>
        public Port loadOffsetPort { get; private set; }

        /// <summary>
        /// This port goes high once the final weight has been loaded
        /// </summary>
        public Port finalLoadPort { get; private set; }

        /// <summary>
        /// The output port from the neuron
        /// </summary>
        public Port neuronOutput { get; private set; }

        /// <summary>
        /// The signals used for holding the value of the product (weight_i * input_i)
        /// </summary>
        public Signal[] productSignals { get; private set; }

        /// <summary>
        /// The signals used for holding the weights of the network
        /// </summary>
        public Signal[] weightSignals { get; private set; }

        /// <summary>
        /// The signal used for holding the value of sum(product_i)
        /// </summary>
        public Signal sum { get; private set; }

        /// <summary>
        /// The signal used for holding the output of the thresholding function
        /// </summary>
        public Signal thresholdedSum { get; private set; }

        /// <summary>
        /// The number of fractional bits to maintain on the output of the neuron
        /// </summary>
        public int numOutputFracBits { get; private set; }

        /// <summary>
        /// The number of integer bits to maintain on the output of the neuron
        /// </summary>
        public int numOutputIntBits { get; private set; }

        /// <summary>
        /// The thresholding function used for the neuron
        /// </summary>
        public NeuronActivationType activationType { get; private set; }

        /// <summary>
        /// The name of this particular neuron
        /// </summary>
        public string name { get; private set; }

        /// <summary>
        /// If this neuron uses the SIGMOID_POLY_APPROX method of thresholding, this member will hold a reference
        /// to a sigmoid_polyApprox object. Otherwise, it will be null.
        /// </summary>
        private Sigmoid_PolyApprox sigmoid_poly = null;

        /// <summary>
        /// The neuron constructor
        /// </summary>
        /// <param name="_inputPorts">An array of input ports to the neuron</param>
        /// <param name="_numOutputIntBits">The number of integer bits to use on the output</param>
        /// <param name="_numOutputFracBits">The number of fractional bits to be used on the output</param>
        /// <param name="_numWeightIntBits">The number of integer bits used to represent the weights</param>
        /// <param name="_activationType">The thresholding function used to compute the output of the neuron</param>
        /// <param name="_name">The name of the neuron</param>
        public AsyncNeuron(Port[] _inputPorts, int _numOutputIntBits, int _numOutputFracBits, int _numWeightIntBits, NeuronActivationType _activationType, string _name)
        {
            /*Copy arguments*/
            this.neuronInputs = _inputPorts;
            this.numOutputFracBits = _numOutputFracBits;
            this.numOutputIntBits = _numOutputIntBits;
            this.activationType = _activationType;
            this.name = _name;

            /*Initialize weight signals*/
            this.weightSignals = new Signal[this.neuronInputs.Length];
            int weightTopVal = _numWeightIntBits; //NOT -1 => signed
            int weightBottomVal = this.neuronInputs[0].bottom;
            for (int i = 0; i < this.neuronInputs.Length; i++)
            {
                this.weightSignals[i] = new Signal(String.Format("w_{0}", i), Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, weightTopVal, weightBottomVal);
            }

            /*Initialize product signals*/
            this.productSignals = new Signal[this.neuronInputs.Length];
            int productTopVal = _numWeightIntBits + this.neuronInputs[0].top + 1;
            int productBottomVal = 2 * (weightBottomVal);
            for (int i = 0; i < this.neuronInputs.Length; i++)
            {
                this.productSignals[i] = new Signal(String.Format("p_{0}", i), Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, productTopVal, productBottomVal);
            }

            /*Initialize sum signal*/
            int sumTopVal = productTopVal + this.neuronInputs.Length;
            int sumBottomVal = productBottomVal;
            this.sum = new Signal("sum", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, sumTopVal, sumBottomVal);

            /*Initialize thresholded sum signal*/
            int threshTopVal = this.numOutputIntBits; //NOT -1 => signed
            int threshBottomVal = this.numOutputFracBits;
            this.thresholdedSum = new Signal("thresh_sum", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, threshTopVal, -1 * threshBottomVal);

            /*Initialize loading signals*/
            int numOffsetBits = Utilities.getNumUnsignedBits(this.weightSignals.Length);
            this.loadClkPort = new Port(Port.portDirection.IN, "loadClk", Utilities.VHDLDataType.STD_LOGIC, 0, 0);
            this.finalLoadPort = new Port(Port.portDirection.OUT, "finalLoad", Utilities.VHDLDataType.STD_LOGIC, 0, 0);
            this.loadEnablePort = new Port(Port.portDirection.IN, "loadEnable", Utilities.VHDLDataType.STD_LOGIC, 0, 0);
            this.loadOffsetPort = new Port(Port.portDirection.IN, "loadOff", Utilities.VHDLDataType.UNSIGNED, numOffsetBits - 1, 0);
            this.loadValuePort = new Port(Port.portDirection.IN, "loadVal", Utilities.VHDLDataType.SIGNED_FIXED_POINT, weightTopVal, weightBottomVal);

            /*Initialize output*/
            this.neuronOutput = new Port(Port.portDirection.OUT, "neuron_out", Utilities.VHDLDataType.SIGNED_FIXED_POINT, this.numOutputIntBits, -1 * this.numOutputFracBits); //NOT -1 => signed


            /*Initialize attached entities*/
            if (this.activationType == NeuronActivationType.SIGMOID_POLY_APPROX)
            {
                this.sigmoid_poly = new Sigmoid_PolyApprox(this.sum, Math.Abs(this.thresholdedSum.top) + 1, Math.Abs(this.thresholdedSum.bottom), String.Format("sigmoid_poly_{0}_{1}", this.numOutputIntBits, this.numOutputFracBits));
            }
            else
            {
                /*Linear node has no dependent entities!*/
            }

            return;
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
            Port[] ports = new Port[this.neuronInputs.Length + 4];
            this.neuronInputs.CopyTo(ports, 0);
            ports[ports.Length - 4] = this.loadEnablePort;
            ports[ports.Length - 3] = this.loadClkPort;
            ports[ports.Length - 2] = this.loadValuePort;
            ports[ports.Length - 1] = this.loadOffsetPort;
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
                this.finalLoadPort, 
                this.neuronOutput
            };
        }

        /// <summary>
        /// Returns a list of internal signals for the neuron
        /// </summary>
        /// <returns>The internal signals for the neuron</returns>
        public override Signal[] getInternalSignals()
        {
            Signal[] signals = new Signal[this.weightSignals.Length + this.productSignals.Length + 2];
            this.weightSignals.CopyTo(signals, 0);
            this.productSignals.CopyTo(signals, this.weightSignals.Length);
            signals[signals.Length - 2] = this.sum;
            signals[signals.Length - 1] = this.thresholdedSum;
            return signals;
        }

        /// <summary>
        /// Writes the .vhd file that describes the neuron. 
        /// </summary>
        /// <param name="file">The root file path for the network. Do not include "(name).vhd" in the filepath</param>
        /// <returns>True if the file was written successfully, false otherwise</returns>
        public override bool writeVHDL(string file)
        {
            bool successfulWrite = false;
            string entityFile = file + this.name + ".vhd";
            using (StreamWriter sw = new StreamWriter(entityFile))
            {
                if (!((this.writeVHDLIncludes(sw)) && (this.writeVHDLEntity(sw)) && (this.writeArchitectureStatement(sw)) && (this.writeVHDLDependencies(sw, new List<Entity>(){this.sigmoid_poly})) && (this.writeVHDLSignals(sw))))
                {
                    return false;
                }

                /*Write product statements*/
                for (int i = 0; i < this.neuronInputs.Length; i++)
                {
                    sw.WriteLine(String.Format("\t{0} <= {1} * {2};", this.productSignals[i].name, this.neuronInputs[i].portName, this.weightSignals[i].name));
                }
                sw.WriteLine("");

                /*Write sum statement*/
                sw.Write("\t{0} <= resize(", this.sum.name);
                for (int i = 0; i < this.productSignals.Length-1; i++)
                {
                    sw.Write(String.Format("{0} + ", this.productSignals[i].name));
                }
                sw.WriteLine(String.Format("{0}, {1});", this.productSignals[productSignals.Length - 1].name, this.sum.name));
                sw.WriteLine("");

                if (this.activationType == NeuronActivationType.SIGMOID_POLY_APPROX)
                {
                   /*TODO: Figure out better way to perform this mapping*/
                    sw.WriteLine(String.Format("\tc1: {0} port map", this.sigmoid_poly.getName()));
                    sw.WriteLine("\t(");
                    sw.WriteLine(String.Format("\t\t{0} => {1},", this.sigmoid_poly.getInputPorts()[0].portName, this.sum.name));
                    sw.WriteLine(String.Format("\t\t{0} => {1}", this.sigmoid_poly.getOutputPorts()[0].portName, this.thresholdedSum.name));
                    sw.WriteLine("\t);");
                }

                /*Output signal assignment*/
                sw.WriteLine(String.Format("\t{0} <= {1}({2} downto {3});", this.neuronOutput.portName, this.thresholdedSum.name, this.neuronOutput.top, this.neuronOutput.bottom));


                /*Load process*/
                sw.WriteLine(String.Format("\tprocess ({0})", this.loadClkPort.portName));
                sw.WriteLine(String.Format("\tbegin"));
                sw.WriteLine(String.Format("\t\tif (rising_edge({0})) then", this.loadClkPort.portName));
                sw.WriteLine(String.Format("\t\t\tif ({0} = '1') then", this.loadEnablePort.portName));
                sw.WriteLine(String.Format("\t\t\t\tcase {0} is", this.loadOffsetPort.portName));

                int busWidth = this.loadOffsetPort.top - this.loadOffsetPort.bottom + 1;

                for (int i = 0; i < this.weightSignals.Length; i++)
                {
                    string iter_twos = Utilities.getTwosComplement(i, busWidth);
                    sw.WriteLine(String.Format("\t\t\t\t\twhen \"{0}\" => ", iter_twos));
                    sw.WriteLine(String.Format("\t\t\t\t\t\t{0} <= {1};", this.weightSignals[i].name, this.loadValuePort.portName));
                    if (i != this.weightSignals.Length - 1)
                    {
                        sw.WriteLine(String.Format("\t\t\t\t\t\t{0} <= '0';", this.finalLoadPort.portName));
                    }
                    else
                    {
                        sw.WriteLine(String.Format("\t\t\t\t\t\t{0} <= '1';", this.finalLoadPort.portName));
                    }
                }

                sw.WriteLine(String.Format("\t\t\t\t\twhen others =>"));
                sw.WriteLine(String.Format("\t\t\t\t\t\t{0} <= '0';", this.finalLoadPort.portName));

                sw.WriteLine(String.Format("\t\t\t\tend case;"));
                sw.WriteLine(String.Format("\t\t\tend if;"));
                sw.WriteLine(String.Format("\t\tend if;"));
                sw.WriteLine(String.Format("\tend process;"));

                if (this.activationType == NeuronActivationType.SIGMOID_POLY_APPROX)
                {
                    if (!this.sigmoid_poly.writeVHDL(file))
                    {
                        return false;
                    }
                }

                successfulWrite = this.writeVHDLFooter(sw);
            }
            return successfulWrite;
        }

        /// <summary>
        /// Determines if two neurons are equal
        /// </summary>
        /// <param name="obj">Object to compare to this neuron</param>
        /// <returns>True if the objects are equal, false otherwise</returns>
        public override bool Equals(object obj)
        {
            if (obj == null)
                return false;

            AsyncNeuron n_obj = obj as AsyncNeuron;
            if (n_obj == null)
                return false;

            var n_obj_inputPorts = n_obj.getInputPorts();
            var n_obj_internalSignals = n_obj.getInternalSignals();
            var n_obj_outputs = n_obj.getOutputPorts();
            var n_obj_activation = n_obj.activationType;

            if (n_obj.activationType != this.activationType)
                return false;

            if (n_obj_inputPorts.Length != this.neuronInputs.Length || n_obj_internalSignals.Length != this.getInternalSignals().Length)
                return false;
            
            /*TODO: Handle zero edge cases*/
            if (n_obj_inputPorts[0].top != this.neuronInputs[0].top || n_obj_inputPorts[0].bottom != this.neuronInputs[0].bottom || n_obj_inputPorts[0].type != this.neuronInputs[0].type)
                return false;
            if (n_obj_outputs[0].top != this.neuronOutput.top || n_obj_outputs[0].bottom != this.neuronOutput.bottom || n_obj_outputs[0].type != this.neuronOutput.type)
                return false;

            if (n_obj.numOutputIntBits != this.numOutputIntBits || n_obj.numOutputFracBits != this.numOutputFracBits)
                return false;

            return true;
        }

        /// <summary>
        /// Returns the hash code of the object
        /// </summary>
        /// <returns>The hash code of the object</returns>
        public override int GetHashCode()
        {
            return base.GetHashCode();
        }

    }
}
