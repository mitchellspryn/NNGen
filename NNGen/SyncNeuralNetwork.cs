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
    /// A class representing a synchronous neural network
    /// </summary>
    public class SyncNeuralNetwork : Entity
    {
        /// <summary>
        /// The entity name
        /// </summary>
        private string name = "NNSync";

        /// <summary>
        /// The list of input ports to the network 
        /// </summary>
        public Port[] nnInputPorts { get; private set; }

        /// <summary>
        /// The list of output ports to the network
        /// </summary>
        public Port[] nnOutputPorts { get; private set; }

        /// <summary>
        /// This signal will go high when the network has been initialized after a reset. 
        /// It will go low when the device is in reset
        /// </summary>
        public Port ready { get; private set; }

        /// <summary>
        /// A clock used for synchronous loading of the neuron weights from memory
        /// </summary>
        public Port clk { get; private set; }

        /// <summary>
        /// An active high reset for the network
        /// </summary>
        public Port reset { get; private set; }

        /// <summary>
        /// The activation types for each layer of the network. 
        /// The i-th member corresponds to the activations of the i-th layer of the network
        /// </summary>
        public TransferFunctionWrapper.MemoryActivationType[] activationTypes { get; private set; }

        /// <summary>
        /// The number of neurons in each layer of the network.
        /// The i-th member corresponds to the i-th layer of the network
        /// </summary>
        public int[] neuronCounts { get; private set; }

        /// <summary>
        /// The bias values for each layer. 
        /// The i-th member corresponds to the bias value fed into the i+1-th layer of the network
        /// </summary>
        public double[] biasValues { get; private set; }

        /// <summary>
        /// The TransferFunctionWrappers to implement in the final design
        /// </summary>
        public List<TransferFunctionWrapper> TransferFunctionWrappers { get; private set; }

        /// <summary>
        /// A mapping between the output of the neuron layer and the transfer function to use
        /// </summary>
        public SortedDictionary<int, Signal> TransferFunctionMemoriesOutputs { get; private set; }

        /// <summary>
        /// A memory instance for the neuron weights
        /// </summary>
        public WeightMemory weightMemory { get; private set; }

        /// <summary>
        /// An array of neurons to implement in the design. The i-th element corresponds for the neuron object in the i-th row
        /// </summary>
        public SyncNeuron[] neurons;

        /// <summary>
        /// The latches for the inputs to the network. The inputs are sampled once each time the network is run; 
        /// latching ensures that they remain constant while the network is in operation
        /// </summary>
        public Signal[] input_latched { get; private set; }

        /// <summary>
        /// The latches for the output to the network. Ensures that the outputs don't fluctuate while the network is computing
        /// </summary>
        public Signal[] output_latched { get; private set; }

        /// <summary>
        /// An array of outputs for each of the neurons
        /// </summary>
        public ArraySignal NeuronOutputs { get; private set; }

        /// <summary>
        /// The output of the neurons after they've been run thorugh the respective thresholding functions
        /// </summary>
        public ArraySignal ThreshNeuronOutputs { get; private set; }

        /// <summary>
        /// The current neuron output to feed into the thresholding function
        /// </summary>
        public Signal CurrentNeuronOutput { get; private set; }

        /// <summary>
        /// The current neuron output from the thresholding function
        /// </summary>
        public Signal CurrentThreshNeuronOutput { get; private set; }

        /// <summary>
        /// A signal to determine whether the network has been loaded with the weights and is ready to accept inputs
        /// </summary>
        public Signal internalReady { get; private set; }

        /// <summary>
        /// The output of the weight memory
        /// </summary>
        public Signal WMOut { get; private set; }

        /// <summary>
        /// The value of the output of the weight memory to be loaded into the neuron
        /// </summary>
        public Signal LoadVal { get; private set; }

        /// <summary>
        /// The offset in the neuron's memory at which the memory is to be loaded
        /// </summary>
        public Signal LoadOff { get; private set; }

        /// <summary>
        /// The address from which to read in the weight memory
        /// </summary>
        public Signal WMAddr { get; private set; }

        /// <summary>
        /// When high, pauses the WM clk signal. Needed during the load process to avoid skipping weights
        /// </summary>
        public Signal HoldWM { get; private set; }

        /// <summary>
        /// The clock signal for the weight memory.
        /// </summary>
        public Signal WMClk { get; private set; }

        /// <summary>
        /// A signal used to determine which neurons are active. When the i-th bit is '1', the i-th layer is computing
        /// </summary>
        public Signal ActivateSig { get; private set; }

        /// <summary>
        /// A counter used to compute when the different bits of ActivateSig should be set
        /// </summary>
        public Signal ClockCount { get; private set; }

        /// <summary>
        /// A signal to hold the FinalLoad signals from the neurons
        /// </summary>
        public Signal FinalLoads { get; private set; }

        /// <summary>
        /// A signal used to enable or disable loading of the weights of a neuron
        /// </summary>
        public Signal LoadEnables { get; private set; }

        /// <summary>
        /// The outputs from the TransferFunctionMemoryWrappers. Eventually multiplexed into CurrentThreshNeuronOutput
        /// </summary>
        public List<Signal> transferFxnOutputs { get; private set; }

        /// <summary>
        /// If the neural network is to be used for classification, then this variable should be set to true. 
        /// This will instantiate comparitors on the output neurons. 
        /// </summary>
        public bool isClassifier { get; private set; }

        /// <summary>
        /// The number of integer bits to be used for the neural network inputs
        /// </summary>
        public int numIntBits { get; private set; }

        /// <summary>
        /// The number of fractional bits to be used for the neural network inputs and for the neural network weights
        /// </summary>
        public int numFracBits { get; private set; }

        /// <summary>
        /// The number of integer bits to be used for the neural network weights. 
        /// </summary>
        public int numWeightUpperBits { get; private set; }

        /// <summary>
        /// The values to be used for thresholding the output neurons. 
        /// The i-th member of this array corresponds to the theshold value for the i-th output neuron.
        /// If the network is not a classification network (i.e. isClassifier = false), then this member is unused.
        /// </summary>
        public double[] classifierThresholds { get; private set; }

        /// <summary>
        /// The constructor for a neural network object. Calling this method's write() function will write the entire network.
        /// </summary>
        /// <param name="_neuronCounts">The number of neurons in each layer, excluding the bias node.</param>
        /// <param name="_biasValues">The bias value feeding forward into the next layer. </param>
        /// <param name="_activationTypes">The activation types for the neurons in each layer</param>
        /// <param name="_numIntBits">The number of integer bits to use for the inputs for each neuron (Sigmoid activated neurons automatically get this set to zero)</param>
        /// <param name="_numFracBits">The number of fractional bits to use for the inputs for each neuron</param>
        /// <param name="_numWeightUpperBits">The number of integer bits used for the weights for each neuron.</param>
        /// <param name="_isClassifier">If true, a comparitor will be instantiatated at the output to each node, comparing the output layer nodes to the threshold value.</param>
        /// <param name="_classifierThresholds">The threshold values for the output comparitors</param>
        /// <param name="_weights">The list of weights read in for the neurons from WeightReader.readWeightsFromFile()</param>
        /// <remark> For example, to intialize a classification neural network with three inputs, two hidden sigmoid-activated nodes, and one linear output node, use the following line:</remark>
        /// <remarks> NeuralNetwork nn = new NeuralNetwork([3, 2, 1], [-1, -1], [..SIGMOID_POLY_APPROX, ..LINEAR], 4, 4, 4, true, [0.5], _weights);</remarks>
        public SyncNeuralNetwork(int[] _neuronCounts, double[] _biasValues, TransferFunctionWrapper.MemoryActivationType[] _activationTypes, int _numIntBits, int _numFracBits, int _numWeightUpperBits, bool _isClassifier, double[] _classifierThresholds, List<double> _weights)
        {
            /*Copy over member variables*/
            this.neuronCounts = _neuronCounts;
            this.biasValues = _biasValues;
            this.activationTypes = _activationTypes;
            this.numIntBits = _numIntBits;
            this.numFracBits = _numFracBits;
            this.numWeightUpperBits = _numWeightUpperBits;
            this.classifierThresholds = _classifierThresholds;
            this.isClassifier = _isClassifier;

            int numNeurons = 0;
            int maxNumNeurons = 0;
            for (int i = 1; i < this.neuronCounts.Length; i++)
            {
                numNeurons += this.neuronCounts[i];
                if (maxNumNeurons < this.neuronCounts[i])
                    maxNumNeurons = this.neuronCounts[i];
            }

            /*Initialize input ports and latches*/
            this.nnInputPorts = new Port[this.neuronCounts[0]];
            this.input_latched = new Signal[this.neuronCounts[0]];
            for (int i = 0; i < this.neuronCounts[0]; i++)
            {
                this.nnInputPorts[i] = new Port(Port.portDirection.IN, String.Format("nnIn_{0}", i), Utilities.VHDLDataType.SIGNED_FIXED_POINT, this.numIntBits, this.numFracBits * -1);
                this.input_latched[i] = new Signal(String.Format("nnIn_{0}_latched", i), Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, this.numIntBits, this.numFracBits * -1);
            }
            this.clk = new Port(Port.portDirection.IN, "clk", Utilities.VHDLDataType.STD_LOGIC, 0, 0);
            this.reset = new Port(Port.portDirection.IN, "reset", Utilities.VHDLDataType.STD_LOGIC, 0, 0);

            /*Initialize neuron output signals*/
            Signal underlyingSignal = new Signal("neuronOutputArray", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, this.numIntBits, this.numFracBits * -1);
            this.NeuronOutputs = new ArraySignal(underlyingSignal, "neuronOutputs", numNeurons - 1, 0);
            this.ThreshNeuronOutputs = new ArraySignal(underlyingSignal, "threshNeuronOutputs", numNeurons - 1, 0);

            this.CurrentNeuronOutput = new Signal("currentNeuronOutput", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, this.numIntBits, this.numFracBits * -1);
            this.CurrentThreshNeuronOutput = new Signal("currentThreshNeuronOutput", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, this.numIntBits, this.numFracBits * -1);

            /*Weight memory signals*/
            this.WMOut = new Signal("wmOut", Utilities.VHDLDataType.STD_LOGIC_VECTOR, null, this.numIntBits + this.numFracBits, 0);
            this.WMAddr = new Signal("wmAddr", Utilities.VHDLDataType.UNSIGNED, null, Utilities.getNumUnsignedBits(_weights.Count) - 1, 0);
            this.LoadVal = new Signal("loadVal", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, this.numIntBits, -1 * this.numFracBits);
            this.LoadOff = new Signal("loadOff", Utilities.VHDLDataType.UNSIGNED, null, Utilities.getBusWidth(maxNumNeurons), 0);
            this.HoldWM = new Signal("holdWM", Utilities.VHDLDataType.STD_LOGIC, "'1'", 0, 0);
            this.WMClk = new Signal("wmClk", Utilities.VHDLDataType.STD_LOGIC, null, 0, 0);

            /*Activate signals*/
            this.ActivateSig = new Signal("activateSig", Utilities.VHDLDataType.STD_LOGIC_VECTOR, null, this.neuronCounts.Length - 2, 0);
            this.ClockCount = new Signal("clockCount", Utilities.VHDLDataType.INTEGER, "0", this.nnInputPorts.Length + numNeurons - 2, 0);
            this.FinalLoads = new Signal("finalLoads", Utilities.VHDLDataType.STD_LOGIC_VECTOR, null, numNeurons - 1, 0);
            this.LoadEnables = new Signal("loadEnables", Utilities.VHDLDataType.STD_LOGIC_VECTOR, null, numNeurons - 1, 0);
            this.ready = new Port(Port.portDirection.OUT, "ready", Utilities.VHDLDataType.STD_LOGIC, 0, 0);
            this.internalReady = new Signal("internalReady", Utilities.VHDLDataType.STD_LOGIC, "'0'", 0, 0);

            /*Initialize the weight memory*/
            this.weightMemory = new WeightMemory(this.numWeightUpperBits, this.numFracBits, _weights);

            /*Initialize the transfer function memories*/
            this.TransferFunctionWrappers = new List<TransferFunctionWrapper>();
            this.transferFxnOutputs = new List<Signal>();
            this.TransferFunctionMemoriesOutputs = new SortedDictionary<int, Signal>();
            Signal CurrentTransferFunctionMemoryOutput = null; //will be assigned on first iter
            for (int i = 0; i < this.activationTypes.Length; i++)
            {
                if (!this.TransferFunctionWrappers.Any<TransferFunctionWrapper>(x => x.activationType == this.activationTypes[i]))
                {
                    TransferFunctionWrapper tw = new TransferFunctionWrapper(this.numIntBits, this.numFracBits, this.activationTypes[i]);
                    CurrentTransferFunctionMemoryOutput = new Signal(String.Format("{0}_{1}_out", Utilities.GetDescription<TransferFunctionWrapper.MemoryActivationType>(this.activationTypes[i]), i), Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, numIntBits, -1 * numFracBits);
                    this.transferFxnOutputs.Add(CurrentTransferFunctionMemoryOutput);
                    this.TransferFunctionWrappers.Add(tw);
                }
                this.TransferFunctionMemoriesOutputs.Add(i, CurrentTransferFunctionMemoryOutput);
            }

            /*Initialize neurons*/
            /*Initialize input neuron*/
            this.neurons = new SyncNeuron[this.neuronCounts.Length - 1];
            for (int i = 0; i < this.neuronCounts.Length - 1; i++)
            {
                Port[] nextLayerInputs = new Port[this.neuronCounts[i] + 1];
                for (int j = 0; j < nextLayerInputs.Length - 1; j++)
                {
                    nextLayerInputs[j] = new Port(Port.portDirection.IN, String.Format("in_{0}", j), Utilities.VHDLDataType.SIGNED_FIXED_POINT, this.numIntBits, -1 * this.numFracBits);
                }
                nextLayerInputs[nextLayerInputs.Length - 1] = new Port(Port.portDirection.IN, "BIAS", Utilities.VHDLDataType.SIGNED_FIXED_POINT, this.numIntBits, -1 * this.numFracBits);
                this.neurons[i] = new SyncNeuron(nextLayerInputs, this.numIntBits, this.numFracBits, this.numWeightUpperBits, String.Format("neuron_layer_{0}", i));
            }

            /*Initialize outputs*/
            this.output_latched = new Signal[this.neuronCounts[this.neuronCounts.Length - 1]];
            this.nnOutputPorts = new Port[this.neuronCounts[this.neuronCounts.Length - 1]];
            for (int i = 0; i < this.neuronCounts[this.neuronCounts.Length - 1]; i++)
            {
                this.output_latched[i] = new Signal(String.Format("output_latch_{0}", i), Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, this.numIntBits, -1 * this.numFracBits);
                if (!this.isClassifier)
                {
                    this.nnOutputPorts[i] = new Port(Port.portDirection.OUT, String.Format("nnOut_{0}", i), Utilities.VHDLDataType.SIGNED_FIXED_POINT, this.numIntBits, -1 * this.numFracBits);
                }
                else
                {
                    this.nnOutputPorts[i] = new Port(Port.portDirection.OUT, String.Format("nnOut_{0}", i), Utilities.VHDLDataType.STD_LOGIC, 0, 0);
                }
            }

            return;
        }

        /// <summary>
        /// Returns the name of the entity.
        /// </summary>
        /// <returns>The name of the entity</returns>
        public override string getName()
        {
            return this.name;
        }

        /// <summary>
        /// Returns the input ports of the entity.
        /// </summary>
        /// <returns>The input ports of the entity</returns>
        public override Port[] getInputPorts()
        {
            Port[] inputs = new Port[this.nnInputPorts.Length + 2];
            this.nnInputPorts.CopyTo(inputs, 0);
            inputs[inputs.Length - 2] = this.clk;
            inputs[inputs.Length - 1] = this.reset;
            return inputs;
        }

        /// <summary>
        /// Returns the output ports of the entity.
        /// </summary>
        /// <returns>The output ports of the entity</returns>
        public override Port[] getOutputPorts()
        {
            Port[] outputs = new Port[this.nnOutputPorts.Length + 1];
            this.nnOutputPorts.CopyTo(outputs, 0);
            outputs[outputs.Length - 1] = this.ready;
            return outputs;
        }

        /// <summary>
        /// Returns the internal signals of the entity.
        /// </summary>
        /// <returns>The internal signals of the entity</returns>
        public override Signal[] getInternalSignals()
        {
            Signal[] internalSignals = new Signal[this.input_latched.Length + this.output_latched.Length + this.transferFxnOutputs.Count + 15];
            this.input_latched.CopyTo(internalSignals, 0);
            this.output_latched.CopyTo(internalSignals, this.input_latched.Length);
            this.transferFxnOutputs.ToArray().CopyTo(internalSignals, this.input_latched.Length + this.output_latched.Length);
            int offset = this.input_latched.Length + this.output_latched.Length + this.transferFxnOutputs.Count;
            internalSignals[offset] = this.NeuronOutputs;
            internalSignals[offset + 1] = this.ThreshNeuronOutputs;
            internalSignals[offset + 2] = this.CurrentNeuronOutput;
            internalSignals[offset + 3] = this.CurrentThreshNeuronOutput;
            internalSignals[offset + 4] = this.WMOut;
            internalSignals[offset + 5] = this.LoadVal;
            internalSignals[offset + 6] = this.LoadOff;
            internalSignals[offset + 7] = this.WMAddr;
            internalSignals[offset + 8] = this.ActivateSig;
            internalSignals[offset + 9] = this.ClockCount;
            internalSignals[offset + 10] = this.FinalLoads;
            internalSignals[offset + 11] = this.LoadEnables;
            internalSignals[offset + 12] = this.internalReady;
            internalSignals[offset + 13] = this.HoldWM;
            internalSignals[offset + 14] = this.WMClk;
            return internalSignals;

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
                List<Entity> dependentEntities = new List<Entity>();
                dependentEntities.Add(this.weightMemory);
                foreach (TransferFunctionWrapper tfw in this.TransferFunctionWrappers)
                {
                    dependentEntities.Add(tfw);
                }
                foreach (SyncNeuron sn in this.neurons)
                {
                    dependentEntities.Add(sn);
                }

                if (!((this.writeVHDLIncludes(sw)) && (this.writeVHDLEntity(sw)) && (this.writeArchitectureStatement(sw)) && (this.writeVHDLDependencies(sw, dependentEntities)) && (this.writeVHDLSignals(sw))))
                {
                    return false;
                }

                /*Memory writes*/
                sw.WriteLine(String.Format("\t{0} <= {1} AND NOT {2};", this.WMClk.name, this.clk.portName, this.HoldWM.name));
                sw.WriteLine(String.Format("\twm: {0} PORT MAP", this.weightMemory.name));
                sw.WriteLine(String.Format("\t("));
                sw.WriteLine(String.Format("\t\t{0} => std_logic_vector({1}),", this.weightMemory.addr.portName, this.WMAddr.name));
                sw.WriteLine(String.Format("\t\t{0} => {1},", this.weightMemory.clk.portName, this.WMClk.name));
                sw.WriteLine(String.Format("\t\t{0} => {1}", this.weightMemory.data.portName, this.WMOut.name));
                sw.WriteLine(String.Format("\t);"));
                sw.WriteLine(String.Format("\t{0} <= to_sfixed({1}, {0});", this.LoadVal.name, this.WMOut.name));
                sw.WriteLine("");

                /*Neuron writes*/
                int offset = 0;
                int neuronIndex = 0;
                for (int i = 1; i < this.neuronCounts.Length; i++)
                {
                    for (int j = 0; j < this.neuronCounts[i]; j++)
                    {
                        sw.WriteLine(String.Format("\tNeuron_{0}_{1}: {2} PORT MAP", i, j, this.neurons[i - 1].name));
                        sw.WriteLine(String.Format("\t("));
                        /*Input layer*/
                        if (i == 1)
                        {
                            for (int k = 0; k < this.nnInputPorts.Length; k++)
                            {
                                sw.WriteLine(String.Format("\t\t{0} => {1},", this.neurons[0].neuronInputs[k].portName, this.nnInputPorts[k].portName));
                            }
                            sw.WriteLine(String.Format("\t\t{0} => \"{1}\",", this.neurons[0].neuronInputs[this.nnInputPorts.Length].portName, Utilities.getFixedPointRepresentation(this.biasValues[i - 1], numIntBits, numFracBits)));
                        }
                        else
                        {
                            for (int k = 0; k < this.neurons[i - 1].neuronInputs.Length - 1; k++)
                            {
                                sw.WriteLine(String.Format("\t\t{0} => {1}({2}),", this.neurons[i - 1].neuronInputs[k].portName, this.ThreshNeuronOutputs.arraySignalName, offset + k));
                            }
                            sw.WriteLine(String.Format("\t\t{0} => \"{1}\",", this.neurons[i - 1].neuronInputs[this.neurons[i - 1].neuronInputs.Length - 1].portName, Utilities.getFixedPointRepresentation(this.biasValues[i - 1], numIntBits, numFracBits)));
                        }
                        sw.WriteLine(String.Format("\t\t{0} => {1}({2}),", this.neurons[i - 1].Activate.portName, this.ActivateSig.name, i - 1));
                        sw.WriteLine(String.Format("\t\t{0} => {1}({2}),", this.neurons[i - 1].loadEnable.portName, this.LoadEnables.name, neuronIndex));
                        sw.WriteLine(String.Format("\t\t{0} => {1},", this.neurons[i - 1].clk.portName, this.clk.portName));
                        sw.WriteLine(String.Format("\t\t{0} => {1},", this.neurons[i - 1].loadValue.portName, this.LoadVal.name));
                        sw.WriteLine(String.Format("\t\t{0} => {1}({2} downto {3}),", this.neurons[i - 1].loadOffset.portName, this.LoadOff.name, this.neurons[i - 1].loadOffset.top, this.neurons[i - 1].loadOffset.bottom));
                        sw.WriteLine(String.Format("\t\t{0} => {1}({2})", this.neurons[i - 1].neuronOutput.portName, this.NeuronOutputs.arraySignalName, neuronIndex));
                        sw.WriteLine(String.Format("\t);"));
                        sw.WriteLine("");
                        neuronIndex++;
                    }
                    if (i > 1)
                    {
                        offset += this.neuronCounts[i - 1];
                    }
                }

                /*Load process write*/
                sw.WriteLine(String.Format("\tprocess ({0}) begin", this.clk.portName));
                sw.WriteLine(String.Format("\t\tif (rising_edge({0})) then", this.clk.portName));
                sw.WriteLine(String.Format("\t\t\tif ({0} = '1') then", this.reset.portName));
                sw.WriteLine(String.Format("\t\t\t\t{0} <= (others => '0');", this.WMAddr.name));
                sw.WriteLine(String.Format("\t\t\t\t{0} <= (0 => '1', others => '0');", this.LoadEnables.name));
                sw.WriteLine(String.Format("\t\t\t\t{0} <= (others => '0');", this.LoadOff.name));
                sw.WriteLine(String.Format("\t\t\t\t{0} <= '0';", this.internalReady.name));
                sw.WriteLine(String.Format("\t\t\t\t{0} <= '0';", this.HoldWM.name));
                sw.WriteLine(String.Format("\t\t\telsif ({0} = '0') then", this.internalReady.name));
                for (int i = 0; i < this.ClockCount.top; i++)
                {
                    if (i == 0)
                        sw.Write(String.Format("\t\t\t\tif "));
                    else
                        sw.Write(String.Format("\t\t\t\telsif "));
                    sw.WriteLine(String.Format("({0}({1}) = '1') then", this.FinalLoads.name, i));
                    sw.WriteLine(String.Format("\t\t\t\t\t{0} <= (others => '0');", this.LoadOff.name));
                    if (i < this.ClockCount.top - 1)
                    {
                        sw.WriteLine(String.Format("\t\t\t\t\t{0}({1}) <= '0';", this.LoadEnables.name, i));
                        sw.WriteLine(String.Format("\t\t\t\t\t{0}({1}) <= '1';", this.LoadEnables.name, i + 1));
                    }
                    else
                    {
                        sw.WriteLine(String.Format("\t\t\t\t\t{0} <= (others => '0');", this.LoadEnables.name));
                        sw.WriteLine(String.Format("\t\t\t\t\t{0} <= '1';", this.internalReady.name));
                    }
                    sw.WriteLine(String.Format("\t\t\t\t\t{0} <= '1';", this.HoldWM.name));
                }
                sw.WriteLine(String.Format("\t\t\t\telse"));
                sw.WriteLine(String.Format("\t\t\t\t\t{0} <= {0} + 1;", this.LoadOff.name));
                sw.WriteLine(String.Format("\t\t\t\t\t{0} <= {0} + 1;", this.WMAddr.name));
                sw.WriteLine(String.Format("\t\t\t\t\t{0} <= '0';", this.HoldWM.name));
                sw.WriteLine(String.Format("\t\t\t\tend if;"));
                sw.WriteLine(String.Format("\t\t\tend if;"));
                sw.WriteLine(String.Format("\t\tend if;"));
                sw.WriteLine(String.Format("\tend process;"));
                sw.WriteLine("");

                /*Memory mapping writes*/
                for (int i = 0; i < this.TransferFunctionWrappers.Count; i++)
                {
                    sw.WriteLine(String.Format("\tmem_{0}: {1} PORT MAP", i, this.TransferFunctionWrappers[i].name));
                    sw.WriteLine(String.Format("\t("));
                    sw.WriteLine(String.Format("\t\t{0} => {1},", this.TransferFunctionWrappers[i].clk.portName, this.clk.portName));
                    sw.WriteLine(String.Format("\t\t{0} => {1},", this.TransferFunctionWrappers[i].addr.portName, this.CurrentNeuronOutput.name));
                    sw.WriteLine(String.Format("\t\t{0} => {1}", this.TransferFunctionWrappers[i].data.portName, this.transferFxnOutputs[i].name));
                    sw.WriteLine(String.Format("\t);"));
                    sw.WriteLine("");
                }

                /*Write the memory output mux*/
                int memMuxRowIndex = 0;
                int nextRowCountIncr = this.neuronCounts[0] + this.neuronCounts[1] - 1;
                sw.WriteLine("\twith {0} select {1} <= ", this.ClockCount.name, this.CurrentThreshNeuronOutput.name);
                for (int i = 0; i <= this.ClockCount.top; i++)
                {
                    sw.Write(String.Format("\t\tresize({0}, {1}'high, {1}'low) when {2}", this.TransferFunctionMemoriesOutputs[memMuxRowIndex].name, this.CurrentThreshNeuronOutput.name, i));
                    if (i == this.ClockCount.top)
                        sw.WriteLine(String.Format(";"));
                    else
                        sw.WriteLine(String.Format(","));
                    if (i > nextRowCountIncr)
                    {
                        memMuxRowIndex++;
                        nextRowCountIncr += this.neuronCounts[memMuxRowIndex];
                    }
                }
                sw.WriteLine("");


                /*Run Process*/
                sw.WriteLine(String.Format("\tprocess({0}) begin", this.clk.portName));
                sw.WriteLine(String.Format("\t\tif (rising_edge({0})) then", this.clk.portName));
                sw.Write(String.Format("\t\tif ( {0} = '1' ", this.reset.portName));
                for (int i = 0; i < this.nnInputPorts.Length; i++)
                {
                    sw.Write(String.Format("or {0} /= {1} ", this.nnInputPorts[i].portName, this.input_latched[i].name));
                }
                sw.WriteLine(String.Format(") then"));
                for (int i = 0; i < this.input_latched.Length; i++)
                {
                    sw.WriteLine(String.Format("\t\t\t{0} <= {1};", this.input_latched[i].name, this.nnInputPorts[i].portName));
                }
                sw.WriteLine(String.Format("\t\t\t{0} <= 0;", this.ClockCount.name));
                sw.WriteLine(String.Format("\t\telse"));
                sw.WriteLine(String.Format("\t\t\tcase {0} is", this.ClockCount.name));
                int activatedIndex = 0;
                int rowIndex = 0;
                for (int i = 0; i < this.ClockCount.top; i++)
                {
                    sw.WriteLine(String.Format("\t\t\t\twhen {0} => ", i));
                    sw.WriteLine(String.Format("\t\t\t\t\t{0} <= ({1} => '1', others => '0');", this.ActivateSig.name, rowIndex));
                    if (i >= this.nnInputPorts.Length - 1)
                    {
                        sw.WriteLine(String.Format("\t\t\t\t\t{0} <= {1}({2});", this.CurrentNeuronOutput.name, this.NeuronOutputs.arraySignalName, i - (this.nnInputPorts.Length - 1)));
                        sw.WriteLine(String.Format("\t\t\t\t\t{0}({1}) <= {2};", this.ThreshNeuronOutputs.arraySignalName, i - (this.nnInputPorts.Length - 1), this.CurrentThreshNeuronOutput.name));
                    }
                    sw.WriteLine(String.Format("\t\t\t\t\t{0} <= {0} + 1;", this.ClockCount.name));
                    activatedIndex++;
                    if (activatedIndex >= this.neuronCounts[rowIndex])
                    {
                        activatedIndex = 0;
                        rowIndex++;
                    }
                }
                sw.WriteLine(String.Format("\t\t\t\twhen {0} => ", this.ClockCount.top));
                sw.WriteLine(String.Format("\t\t\t\t\t{0} <= ({1} => '1', others => '0');", this.ActivateSig.name, this.ActivateSig.top));
                sw.WriteLine(String.Format("\t\t\t\t\t{0} <= {1}({2});", this.CurrentNeuronOutput.name, this.NeuronOutputs.arraySignalName, this.NeuronOutputs.top - 1));
                int neuronOutputStartIndex = this.neuronCounts.Sum() - this.neuronCounts[this.neuronCounts.Length - 1] - this.neuronCounts[0];
                for (int i = 0; i < this.output_latched.Length - 1; i++)
                {
                    sw.WriteLine(String.Format("\t\t\t\t\t{0} <= {1}({2});", this.output_latched[i].name, this.ThreshNeuronOutputs.arraySignalName, i + neuronOutputStartIndex));
                }
                sw.WriteLine(String.Format("\t\t\t\t\t{0} <= {1};", this.output_latched[this.output_latched.Length - 1].name, this.CurrentThreshNeuronOutput.name));
                sw.WriteLine(String.Format("\t\t\t\t\t{0} <= 0;", this.ClockCount.name));
                sw.WriteLine(String.Format("\t\t\t\tend case;"));
                sw.WriteLine(String.Format("\t\t\tend if;"));
                sw.WriteLine(String.Format("\t\tend if;"));
                sw.WriteLine(String.Format("\tend process;"));
                sw.WriteLine("");

                sw.WriteLine(String.Format("\t{0} <= {1};", this.ready.portName, this.internalReady.name));
                sw.WriteLine("");

                if (!this.isClassifier)
                {
                    for (int i = 0; i < this.output_latched.Length; i++)
                    {
                        sw.WriteLine(String.Format("\t{0} <= {1};", this.nnOutputPorts[i].portName, this.output_latched[i].name));
                    }
                    sw.WriteLine("");
                }

                else
                {
                    for (int i = 0; i < this.output_latched.Length; i++)
                    {
                        sw.WriteLine(String.Format("\tprocess ({0}) begin", this.output_latched[i].name));
                        sw.WriteLine(String.Format("\t\tif ({0} > to_sfixed({1}, {0})) then", this.output_latched[i].name, this.classifierThresholds[i]));
                        sw.WriteLine(String.Format("\t\t\t{0} <= '1';", this.nnOutputPorts[i].portName));
                        sw.WriteLine(String.Format("\t\telse"));
                        sw.WriteLine(String.Format("\t\t\t{0} <= '0';", this.nnOutputPorts[i].portName));
                        sw.WriteLine(String.Format("\t\tend if;"));
                        sw.WriteLine(String.Format("\tend process;"));
                    }
                    sw.WriteLine("");
                }

                /*Write dependent entities*/
                foreach (Entity e in dependentEntities)
                {
                    if (!e.writeVHDL(file))
                    {
                        return false;
                    }
                }

                successfulWrite = this.writeVHDLFooter(sw);
            }

            return successfulWrite;
        }
    }
}
