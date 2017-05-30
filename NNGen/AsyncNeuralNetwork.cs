/* Author: Mitchell Spryn (mitchell.spryn@gmail.com) 
 * There is no warranty with this code. I provide it with the intention of being interesting/helpful, but make no
 * guarantees about its correctness or robustness. 
 * This code is free to use as you please, as long as this header comment is left in all of the files and credit is attributed
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
    /// An abstraction of a neural network entity.
    /// </summary>
    public class AsyncNeuralNetwork : Entity
    {
        /// <summary>
        /// The entity name
        /// </summary>
        private string name = "AsyncNeuralNetwork";

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
        public AsyncNeuron.NeuronActivationType[] activationTypes { get; private set; }

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
        /// A signal used to enable a single neuron to accept weights from memory
        /// </summary>
        public Signal load_sig { get; private set; }

        /// <summary>
        /// A signal to hold the values of data coming from memory
        /// </summary>
        public Signal loadVal { get; private set; }

        /// <summary>
        /// A signal used to index into an individual neuron's weight signals
        /// Used during the load process
        /// </summary>
        public Signal loadOffset { get; private set; }

        /// <summary>
        /// A signal used to index into memory to obtain the weights during the load process
        /// </summary>
        public Signal addrCounter { get; private set; }

        /// <summary>
        /// The signals that will hold the outputs to each individual neuron
        /// </summary>
        public Signal[] neuron_outputs { get; private set; }

        /// <summary>
        /// A signal used in determining whether the device has completed the loading process
        /// </summary>
        public Signal ready_signal { get; private set; }

        /// <summary>
        /// A collection of signals to hold the final_load outputs from the individual neurons in the network
        /// </summary>
        public Signal[] finalLoadSignals { get; private set; }

        /// <summary>
        /// A signal used to convert the output of memory (STD_LOGIC_VECTOR) into the appropriate type 
        /// to be used in the neuron (SIGNED_FIXED_POINT)
        /// </summary>
        public Signal loadValConv { get; private set; }

        /// <summary>
        /// The values to be used for thresholding the output neurons. 
        /// The i-th member of this array corresponds to the theshold value for the i-th output neuron.
        /// If the network is not a classification network (i.e. isClassifier = false), then this member is unused.
        /// </summary>
        public double[] classifierThresholds { get; private set; }

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
        /// A memory entity used to store and load the neural network weights on startup
        /// </summary>
        public WeightMemory wm { get; private set; }

        /// <summary>
        /// An array of the neurons in the network. It is sequentually loaded, first by layer, then by order within the layer. 
        /// So, for a net of N layers, each with M neurons in the layer, the array will be 
        /// [Neuron_0_0, Neuron_0_1, ..., Neuron_0_M, Neuron_1_0, Neuron_1_1, ..., Neuron_N_M]
        /// </summary>
        public AsyncNeuron[] neuronEntities { get; private set; }

        /// <summary>
        /// A list of the unique neuron entities for which separate VHDL files will need to be generated.
        /// </summary>
        public List<AsyncNeuron> uniqueNeuronEntities { get; private set; }

        /// <summary>
        /// The bus widths for each neuron
        /// </summary>
        public int[] intBusWidths { get; private set; }

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
        public AsyncNeuralNetwork(int[] _neuronCounts, double[] _biasValues, AsyncNeuron.NeuronActivationType[] _activationTypes, int _numIntBits, int _numFracBits, int _numWeightUpperBits, bool _isClassifier, double[] _classifierThresholds, List<double> _weights)
        {
            /*Copy member variables*/
            this.neuronCounts = _neuronCounts;
            this.biasValues = _biasValues;
            this.activationTypes = _activationTypes;
            this.numIntBits = _numIntBits;
            this.numFracBits = _numFracBits;
            this.numWeightUpperBits = _numWeightUpperBits;
            this.classifierThresholds = _classifierThresholds;
            this.isClassifier = _isClassifier;

            /*Some useful variables for computing the signals*/
            int numNeurons = 0;
            int maxWeights = neuronCounts[0];
            for (int i = 1; i < neuronCounts.Length; i++)
            {
                numNeurons += neuronCounts[i];
                if (maxWeights < neuronCounts[i])
                {
                    maxWeights = neuronCounts[i];
                }
            }

            int offsetWidth = Utilities.getNumUnsignedBits(maxWeights);
            int addrCounterWidth = Utilities.getNumUnsignedBits(_weights.Count);

            /*Initialize memory signals and entities*/
            this.wm = new WeightMemory(_numWeightUpperBits, _numFracBits, _weights);

            this.load_sig = new Signal("load_sig", Utilities.VHDLDataType.STD_LOGIC_VECTOR, new String('0', numNeurons), numNeurons - 1, 0);
            this.loadVal = new Signal("loadVal", Utilities.VHDLDataType.SIGNED_FIXED_POINT, null, numWeightUpperBits, -1 * numFracBits); //NOT -1 => signed
            this.loadOffset = new Signal("loadOff", Utilities.VHDLDataType.UNSIGNED, new String('0', offsetWidth), offsetWidth - 1, 0);
            this.addrCounter = new Signal("addrCounter", Utilities.VHDLDataType.UNSIGNED, new String('0', addrCounterWidth), addrCounterWidth - 1, 0);
            this.ready_signal = new Signal("ready_sig", Utilities.VHDLDataType.STD_LOGIC, null, 0, 0);

            this.finalLoadSignals = new Signal[numNeurons];
            int arrCounter = 0;
            for (int i = 1; i < neuronCounts.Length; i++)
            {
                for (int j = 0; j < neuronCounts[i]; j++)
                {
                    this.finalLoadSignals[arrCounter] = new Signal(String.Format("finalLoad_{0}_{1}", i - 1, j), Utilities.VHDLDataType.STD_LOGIC, null, 0, 0);
                    arrCounter++;
                }
            }

            this.loadValConv = new Signal("loadValConv", Utilities.VHDLDataType.STD_LOGIC_VECTOR, null, _numWeightUpperBits + _numFracBits, 0);

            /*Compute the bus widths between neurons*/
            int maxNeuronInput = Convert.ToInt32(Math.Pow(2, this.numIntBits)) - 1;
            int currentNeuronInput = Convert.ToInt32(Math.Pow(2, this.numIntBits)) - 1;
            this.intBusWidths = new int[numNeurons + this.neuronCounts[0]];
            double[] maxValues = new double[numNeurons + this.neuronCounts[0]];
            int neuronStart = 0;
            int weightCounter = 0;

            for (neuronStart = 0; neuronStart < this.neuronCounts[0]; neuronStart++)
            {
                maxValues[neuronStart] = (double)maxNeuronInput;
                this.intBusWidths[neuronStart] = Utilities.getNumUnsignedBits(Convert.ToInt32(Math.Ceiling((double)maxNeuronInput)));
            }
            neuronStart = 0;

            for (int i = 1; i < this.neuronCounts.Length; i++)
            {
                int[] currentNeuronMaxIntWidths = new int[this.neuronCounts[i]];
                if (this.activationTypes[i - 1] == AsyncNeuron.NeuronActivationType.SIGMOID_POLY_APPROX)
                {
                    for (int j = 0; j < this.neuronCounts[i]; j++)
                    {
                        maxValues[neuronStart + this.neuronCounts[i-1]] = 0.9999;
                        this.intBusWidths[neuronStart + this.neuronCounts[i-1]] = 0;
                        neuronStart++;
                    }
                }
                else if (this.activationTypes[i - 1] == AsyncNeuron.NeuronActivationType.NONE)
                {
                    throw new Exception("YOU DUN FUCKED UP HERE TOO"); //debugging
                }
                else if (this.activationTypes[i - 1] == AsyncNeuron.NeuronActivationType.LINEAR)
                {
                    for (int j = 0; j < this.neuronCounts[i]; j++)
                    {
                        double currentMax = 0;
                        int neuronIndex = neuronStart;
                        for (int k = 0; k < this.neuronCounts[i - 1]; k++)
                        {
                            currentMax += _weights[weightCounter] * maxValues[neuronIndex];
                            weightCounter++;
                            neuronIndex++;
                        }
                        maxValues[j + neuronStart + this.neuronCounts[i - 1]] = currentMax;
                        this.intBusWidths[j + neuronStart + this.neuronCounts[i - 1]] = Utilities.getNumUnsignedBits(Convert.ToInt32(Math.Ceiling(currentMax)));

                    }

                    neuronStart += this.neuronCounts[i - 1];
                }


            }

            if (this.isClassifier)
            {
                for (int i = this.intBusWidths.Length - 1; (this.intBusWidths.Length - i) <= this.neuronCounts[this.neuronCounts.Length - 1]; i--)
                    this.intBusWidths[i] = 1;
            }

            /*Initialize neurons and their connectivities*/

            this.neuronEntities = new AsyncNeuron[numNeurons];
            this.neuron_outputs = new Signal[numNeurons];
            this.uniqueNeuronEntities = new List<AsyncNeuron>();

            var currentPorts = new List<Port>();

            this.nnInputPorts = new Port[this.neuronCounts[0]];
            neuronStart = 0;
            for (int i = 0; i < this.neuronCounts[0]; i++)
            {
                this.nnInputPorts[i] = new Port(Port.portDirection.IN, String.Format("nnIn_{0}", i), Utilities.VHDLDataType.SIGNED_FIXED_POINT, this.intBusWidths[neuronStart], this.numFracBits * -1);
                neuronStart++;
            }

            for (int i = 0; i < this.nnInputPorts.Length; i++)
            {
                Port P = this.nnInputPorts[i].copy();
                P.rename(String.Format("in_{0}", i));
                currentPorts.Add(P);
            }

            arrCounter = 0;
            for (int i = 1; i < this.neuronCounts.Length; i++)
            {
                var lastPorts = currentPorts.ToArray();
                currentPorts = new List<Port>();
                if (this.activationTypes[i - 1] == AsyncNeuron.NeuronActivationType.SIGMOID_POLY_APPROX)
                {
                    for (int j = 0; j < this.neuronCounts[i]; j++)
                    {
                        AsyncNeuron n = new AsyncNeuron(lastPorts, this.intBusWidths[neuronStart], this.numFracBits, this.numWeightUpperBits, AsyncNeuron.NeuronActivationType.SIGMOID_POLY_APPROX, String.Format("sig_poly_approx_neuron_{0}_{1}", i, 0));
                        neuronStart++;
                        if (j == 0)
                        {
                            /*Check for uniqueness*/
                            if (!this.uniqueNeuronEntities.Contains(n))
                            {
                                this.uniqueNeuronEntities.Add(n);
                            }
                        }
                        this.neuronEntities[arrCounter] = n;
                        Signal currentNeuronOutput = n.neuronOutput.toSignal(String.Format("out_{0}_{1}", i, j));
                        this.neuron_outputs[arrCounter] = currentNeuronOutput;
                        Port tempOut = n.neuronOutput.copy();
                        tempOut.rename(String.Format("in_{0}", j));
                        tempOut.setDirection(Port.portDirection.IN);
                        currentPorts.Add(tempOut);
                        arrCounter++;
                    }
                }
                else if (this.activationTypes[i - 1] == AsyncNeuron.NeuronActivationType.LINEAR)
                {
                    for (int j = 0; j < this.neuronCounts[i]; j++)
                    {
                        AsyncNeuron n = new AsyncNeuron(lastPorts, this.intBusWidths[neuronStart], this.numFracBits, this.numWeightUpperBits, AsyncNeuron.NeuronActivationType.LINEAR, String.Format("linear_neuron_{0}_{1}", i, 0));
                        neuronStart++;
                        if (j == 0)
                        {
                            if (!this.uniqueNeuronEntities.Contains(n))
                            {
                                this.uniqueNeuronEntities.Add(n);
                            }
                        }
                        this.neuronEntities[arrCounter] = n;
                        Signal currentNeuronOutput = n.neuronOutput.toSignal(String.Format("out_{0}_{1}", i, j));
                        this.neuron_outputs[arrCounter] = currentNeuronOutput;
                        Port tempOut = n.neuronOutput.copy();
                        tempOut.rename(String.Format("in_{0}", j));
                        tempOut.setDirection(Port.portDirection.IN);
                        currentPorts.Add(tempOut);
                        arrCounter++;
                    }
                }
            }

            /*Initialize outputs*/
            this.nnOutputPorts = new Port[this.neuronCounts[this.neuronCounts.Length - 1]];
            if (this.isClassifier)
            {
                for (int i = 0; i < this.neuronCounts[this.neuronCounts.Length - 1]; i++)
                {
                    this.nnOutputPorts[i] = new Port(Port.portDirection.OUT, String.Format("out_{0}", i), Utilities.VHDLDataType.STD_LOGIC, 0, 0);
                }
            }
            else
            {
                neuronStart -= this.neuronCounts[this.neuronCounts.Length - 1];
                for (int i = 0; i < this.neuronCounts[this.neuronCounts.Length - 1]; i++)
                {
                    this.nnOutputPorts[i] = new Port(Port.portDirection.OUT, String.Format("out{0}", i), Utilities.VHDLDataType.SIGNED_FIXED_POINT, this.intBusWidths[neuronStart], this.numFracBits);
                    neuronStart++;
                }
            }

            /*Initialize other signals*/
            this.ready = new Port(Port.portDirection.OUT, "ready", Utilities.VHDLDataType.STD_LOGIC, 0, 0);
            this.reset = new Port(Port.portDirection.IN, "reset", Utilities.VHDLDataType.STD_LOGIC, 0, 0);
            this.clk = new Port(Port.portDirection.IN, "clk", Utilities.VHDLDataType.STD_LOGIC, 0, 0);

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
            var s = new Signal[6 + this.neuron_outputs.Length + this.finalLoadSignals.Length];
            this.neuron_outputs.CopyTo(s, 0);
            this.finalLoadSignals.CopyTo(s, this.neuron_outputs.Length);

            int offset = this.neuron_outputs.Length + this.finalLoadSignals.Length;
            s[offset] = this.ready_signal;
            s[offset + 1] = this.load_sig;
            s[offset + 2] = this.loadOffset;
            s[offset + 3] = this.loadVal;
            s[offset + 4] = this.loadValConv;
            s[offset + 5] = this.addrCounter;

            return s;

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
                /*Compile all of the entities into one list*/
                List<Entity> uniqueEntities = new List<Entity>();
                uniqueEntities.Add(this.wm);
                for (int i = 0; i < this.uniqueNeuronEntities.Count; i++)
                {
                    uniqueEntities.Add(this.uniqueNeuronEntities[i]);
                }

                /*Write header*/
                if (!((this.writeVHDLIncludes(sw)) && (this.writeVHDLEntity(sw)) && (this.writeArchitectureStatement(sw)) && (this.writeVHDLDependencies(sw, uniqueEntities)) && (this.writeVHDLSignals(sw))))
                {
                    return false;
                }

                sw.WriteLine(String.Format("\t{0} <= {1};", this.ready.portName, this.ready_signal.name));

                /*Write the memory signals*/
                sw.WriteLine(String.Format("\twm: {0} port map", this.wm.name));
                sw.WriteLine(String.Format("\t("));
                sw.WriteLine(String.Format("\t\t{0} => std_logic_vector({1}),", this.wm.addr.portName, this.addrCounter.name));
                sw.WriteLine(String.Format("\t\t{0} => {1},", this.wm.clk.portName, this.clk.portName));
                sw.WriteLine(String.Format("\t\t{0} => {1}", this.wm.data.portName, this.loadValConv.name));
                sw.WriteLine(String.Format("\t);"));
                sw.WriteLine(String.Format(""));
                sw.WriteLine(String.Format("\t{0} <= to_sfixed({1}, {0}'high, {0}'low);", this.loadVal.name, this.loadValConv.name));
                sw.WriteLine("");

                /*Write the neural network connections*/
                int currentNeuron = 0;
                int previousLayerStartingPoint = 0;
                for (int i = 1; i < this.neuronCounts.Length; i++)
                {
                    for (int j = 0; j < this.neuronCounts[i]; j++)
                    {
                        AsyncNeuron n = this.neuronEntities[currentNeuron];
                        sw.WriteLine(String.Format("\tNeuron_{0}_{1} : {2} port map", i, j, n.name));
                        sw.WriteLine(String.Format("\t("));

                        /*INPUT STATEMENTS*/
                        /*First row - use inputs*/
                        if (i == 1)
                        {
                            for (int k = 0; k < this.nnInputPorts.Length; k++)
                            {
                                sw.WriteLine(String.Format("\t\t{0} => {1},", n.neuronInputs[k].portName, this.nnInputPorts[k].portName));
                            }
                        }
                        /*Later row - use previous rows outputs*/
                        else
                        {
                            for (int k = 0; k < this.neuronEntities[currentNeuron].neuronInputs.Length; k++)
                            {
                                sw.WriteLine(String.Format("\t\t{0} => {1},", n.neuronInputs[k].portName, this.neuron_outputs[previousLayerStartingPoint + k].name));
                            }

                        }

                        sw.WriteLine(String.Format("\t\t{0} => {1}({2}),", n.loadEnablePort.portName, this.load_sig.name, currentNeuron));                       //Load signal
                        sw.WriteLine(String.Format("\t\t{0} => {1},", n.loadValuePort.portName, this.loadVal.name));                                             //LoadVal signal
                        sw.WriteLine(String.Format("\t\t{0} => {1}({2} downto 0),", n.loadOffsetPort.portName, this.loadOffset.name, n.loadOffsetPort.top));     //LoadOff signal
                        sw.WriteLine(String.Format("\t\t{0} => {1},", n.finalLoadPort.portName, this.finalLoadSignals[currentNeuron].name));                     //FinalLoad signal
                        sw.WriteLine(String.Format("\t\t{0} => {1},", n.loadClkPort.portName, this.clk.portName));                                               //Clk signal
                        sw.WriteLine(String.Format("\t\t{0} => {1}", n.neuronOutput.portName, this.neuron_outputs[currentNeuron].name));                         //Output signal

                        sw.WriteLine("\t);");
                        sw.WriteLine("");

                        currentNeuron++;
                    }

                    if (i != 1)
                    {
                        previousLayerStartingPoint += this.neuronCounts[i - 1];
                    }

                }

                /*Load process*/
                sw.WriteLine(String.Format("\tprocess ({0})", this.clk.portName));
                sw.WriteLine(String.Format("\tbegin"));
                sw.WriteLine(String.Format("\t\tif (rising_edge({0}) and ( ({1} = '1') or ({2} = '0') ) ) then", this.clk.portName, this.reset.portName, this.ready_signal.name));
                sw.WriteLine(String.Format("\t\t\tif ({0} = '1') then", this.reset.portName));
                sw.WriteLine(String.Format("\t\t\t\t{0} <= '0';", this.ready_signal.name));
                sw.WriteLine(String.Format("\t\t\t\t{0} <= (others => '0');", this.loadOffset.name));
                sw.WriteLine(String.Format("\t\t\t\t{0} <= (others => '0');", this.addrCounter.name));
                sw.WriteLine(String.Format("\t\t\t\t{0} <= (0 => '1', others => '0');", this.load_sig.name));

                for (int i = 0; i < this.finalLoadSignals.Length; i++)
                {
                    sw.WriteLine(String.Format("\t\t\telsif ({0} = '1') then", this.finalLoadSignals[i].name));
                    if (i != this.finalLoadSignals.Length - 1)
                        sw.WriteLine(String.Format("\t\t\t\t{0} <= ({1} => '1', others => '0');", this.load_sig.name, i + 1));
                    else
                        sw.WriteLine(String.Format("\t\t\t\t{0} <= (others => '0');", this.load_sig.name));
                    sw.WriteLine(String.Format("\t\t\t\t{0} <= (others => '0');", this.loadOffset.name));
                }

                sw.WriteLine(String.Format("\t\t\telse"));
                sw.WriteLine(String.Format("\t\t\t\t{0} <= {0} + 1;", this.loadOffset.name));
                sw.WriteLine(String.Format("\t\t\t\t{0} <= {0} + 1;", this.addrCounter.name));
                sw.WriteLine(String.Format("\t\t\tend if;"));
                sw.WriteLine(String.Format(""));
                sw.WriteLine(String.Format("\t\t\tif ({0} = {1}) then", this.addrCounter.name, wm.weights_str.Count));
                sw.WriteLine(String.Format("\t\t\t\t{0} <= '1';", this.ready_signal.name));
                sw.WriteLine(String.Format("\t\t\tend if;"));
                sw.WriteLine(String.Format("\t\tend if;"));
                sw.WriteLine(String.Format("\tend process;"));
                sw.WriteLine("");

                /*Write the comparitors for classification problems*/
                if (this.isClassifier)
                {
                    int currentOutputNeuronIndex = this.neuronEntities.Length - this.neuronCounts[this.neuronCounts.Length - 1];
                    int outputIndex = 0;
                    while (currentOutputNeuronIndex < this.neuronEntities.Length)
                    {
                        Signal current_out = this.neuron_outputs[currentOutputNeuronIndex];

                        sw.WriteLine(String.Format("\tprocess ({0})", current_out.name));
                        sw.WriteLine(String.Format("\tbegin"));
                        sw.WriteLine(String.Format("\t\tif ({0} > to_sfixed({1}, {0})) then", current_out.name, this.classifierThresholds[outputIndex]));
                        sw.WriteLine(String.Format("\t\t\t{0} <= '1';", this.nnOutputPorts[outputIndex].portName));
                        sw.WriteLine(String.Format("\t\telse"));
                        sw.WriteLine(String.Format("\t\t\t{0} <= '0';", this.nnOutputPorts[outputIndex].portName));
                        sw.WriteLine(String.Format("\t\tend if;"));
                        sw.WriteLine(String.Format("\tend process;"));

                        currentOutputNeuronIndex++;
                        outputIndex++;
                    }
                }

                /*Write the raw signal outputs for regression problems*/
                else
                {
                    int currentOutputNeuronIndex = this.neuronEntities.Length - this.neuronCounts[this.neuronCounts.Length - 1];
                    int outputIndex = 0;
                    while (currentOutputNeuronIndex < this.neuronEntities.Length)
                    {
                        Signal current_out = this.neuron_outputs[currentOutputNeuronIndex];
                        sw.WriteLine(String.Format("\t{0} <= {1}", this.nnOutputPorts[outputIndex].portName, current_out.name));
                        sw.WriteLine("");
                        currentOutputNeuronIndex++;
                        outputIndex++;
                    }
                }

                /*Write dependent entities*/
                foreach (Entity e in uniqueEntities)
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
