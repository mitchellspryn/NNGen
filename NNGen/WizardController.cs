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
using System.Windows.Forms;
using System.IO;

namespace NNGen
{
    /// <summary>
    /// A class managing the UI forms to show the user, as well as recording their responses
    /// </summary>
    public class WizardController
    {
        /// <summary>
        /// The container for the panels to show the user
        /// </summary>
        public PanelContainer pc { get; private set; }

        /// <summary>
        /// An array holding the number of neurons for the network. The i-th row represents the i-th layer
        /// </summary>
        public int[] neuronCounts { get; private set; }

        /// <summary>
        /// An array holding the bias values for the networks. The i-th row represents the bias value feeding into the i+1-th layer
        /// </summary>
        public double[] biasValues { get; private set; }

        /// <summary>
        /// For asynchronous networks, the activation type of each layer. For synchronous networks, this variable is ignored
        /// </summary>
        public AsyncNeuron.NeuronActivationType[] asyncActivationTypes { get; private set; }

        /// <summary>
        /// For synchronous networks, the activation types of each layer. For asynchronous netowrks, this variable is ignored
        /// </summary>
        public TransferFunctionWrapper.MemoryActivationType[] syncActivationTypes { get; private set; }

        /// <summary>
        /// The number of integer bits to use in the creation of the neurons
        /// </summary>
        public int numIntBits { get; private set; }

        /// <summary>
        /// The number of fractional bits to use in the creation of the neurons
        /// </summary>
        public int numFracBits { get; private set; }

        /// <summary>
        /// Then number of integer bits to use in the creation of the weight memory
        /// </summary>
        public int numWeightIntBits { get; private set; }

        /// <summary>
        /// A flag to save whether the network is a classification network or not. 
        /// </summary>
        public bool isClassifier { get; private set; }

        /// <summary>
        /// A flag to represent whether the network being created is synchronous or not
        /// </summary>
        public bool isSynchronousNetwork { get; private set; }

        /// <summary>
        /// The classifier thresholds for a classification network. For a regression network, these are null.
        /// </summary>
        public double[] classifierThresholds { get; private set; }

        /// <summary>
        /// The list of neuron input weights
        /// </summary>
        public List<double> weights { get; private set; }

        /// <summary>
        /// The asynchronous network object to be created. This variable is ignored for synchronous networks
        /// </summary>
        public AsyncNeuralNetwork asyncNN { get; private set; }

        /// <summary>
        /// The synchronous network object to be created. This variable is ignored for asynchronous networks
        /// </summary>
        public SyncNeuralNetwork syncNN { get; private set; }

        /// <summary>
        /// The default value for the number of hidden layers
        /// </summary>
        private int DEFAULT_HIDDEN_LAYERS = 1;

        /// <summary>
        /// A value to hold the path entered in the SaveControl form
        /// </summary>
        private string saveControl_Persistant_Path = "";

        /// <summary>
        /// The flag for determining whether a valid path has been entered in the SaveControl
        /// </summary>
        private bool saveControl_Valid = false;

        /// <summary>
        /// Create a new wizard controller
        /// </summary>
        public WizardController()
        {
            this.pc = new PanelContainer(new List<NNPanel>());
            this.pc.panels.Add(new Welcome());
            this.pc.panels.Add(new SyncOrAsync());
        }

        /// <summary>
        /// Get the next screen to show the user
        /// </summary>
        /// <param name="width">The width at which to display the form</param>
        /// <param name="height">The height at which to display the form</param>
        /// <returns></returns>
        public NNPanel next(int width, int height)
        {
            NNPanel currentPanel = this.pc.current();

            if (!currentPanel.verify())
            {
                return currentPanel;
            }

            /*Take action based upon current panel*/
            if (currentPanel is SyncOrAsync)
            {
                this.isSynchronousNetwork = ((SyncOrAsync)currentPanel).isSynchronousNetwork();
                this.pc.panels.Add(new NetworkSetup(DEFAULT_HIDDEN_LAYERS));
                return this.pc.advance(width, height);
            }

            if (currentPanel is Welcome)
            {
                return this.pc.advance(width, height);
            }

            if (currentPanel is NetworkSetup)
            {
                NetworkSetup _currentPanel = (NetworkSetup)currentPanel;

                /*Resize rest of list*/
                if (this.pc.panels.Count > 3)
                {
                    this.pc.panels.RemoveRange(3, this.pc.panels.Count - 3);
                }
                int numLayers = _currentPanel.numHiddenLayers;

                /*Re-init if the lengths have changed*/
                if (this.neuronCounts == null || numLayers - 2 != this.neuronCounts.Length)
                {
                    this.neuronCounts = new int[numLayers + 2]; //account for input and output layer
                    this.biasValues = new double[numLayers + 1];
                    this.asyncActivationTypes = new AsyncNeuron.NeuronActivationType[numLayers + 1];
                    this.syncActivationTypes = new TransferFunctionWrapper.MemoryActivationType[numLayers + 1];

                    for (int i = 0; i < numLayers + 1; i++)
                    {
                        this.neuronCounts[i] = 1;
                        this.biasValues[i] = 0;
                        this.asyncActivationTypes[i] = AsyncNeuron.NeuronActivationType.SIGMOID_POLY_APPROX;
                        this.syncActivationTypes[i] = TransferFunctionWrapper.MemoryActivationType.LINEAR;
                    }
                    this.neuronCounts[numLayers + 1] = 1;
                }

                for (int i = 0; i < this.neuronCounts.Length; i++)
                {
                    if (!this.isSynchronousNetwork)
                    {
                        if (i == 0)
                        {
                            this.pc.panels.Add(new LayerSetup("Input layer", true, this.biasValues[0], this.neuronCounts[i], false, AsyncNeuron.NeuronActivationType.SIGMOID_POLY_APPROX, TransferFunctionWrapper.MemoryActivationType.LINEAR, false, false));
                        }
                        else if (i == this.neuronCounts.Length - 1)
                        {
                            this.pc.panels.Add(new LayerSetup("Output layer", false, 0, this.neuronCounts[i], true, this.asyncActivationTypes[i - 1], TransferFunctionWrapper.MemoryActivationType.LINEAR, false, true));
                        }
                        else
                        {
                            this.pc.panels.Add(new LayerSetup(String.Format("Hidden layer {0}", i), true, this.biasValues[i], this.neuronCounts[i], true, this.asyncActivationTypes[i - 1], TransferFunctionWrapper.MemoryActivationType.LINEAR, false, false));
                        }
                    }
                    else
                    {
                        if (i == 0)
                        {
                            this.pc.panels.Add(new LayerSetup("Input layer", true, this.biasValues[0], this.neuronCounts[i], false, AsyncNeuron.NeuronActivationType.LINEAR, TransferFunctionWrapper.MemoryActivationType.LINEAR, true, false));
                        }
                        else if (i == this.neuronCounts.Length - 1)
                        {
                            this.pc.panels.Add(new LayerSetup("Output layer", false, 0, this.neuronCounts[i], true, AsyncNeuron.NeuronActivationType.LINEAR, this.syncActivationTypes[i - 1], true, true));
                        }
                        else
                        {
                            this.pc.panels.Add(new LayerSetup(String.Format("Hidden layer {0}", i), true, this.biasValues[i], this.neuronCounts[i], true, AsyncNeuron.NeuronActivationType.LINEAR, this.syncActivationTypes[i - 1], true, false));
                        }
                    }

                }

                return this.pc.advance(width, height);
            }

            if (currentPanel is LayerSetup)
            {
                LayerSetup _currentPanel = (LayerSetup)currentPanel;
                int layerIndex = this.pc.currentPanelIndex - 3;

                this.neuronCounts[layerIndex] = _currentPanel.numNeurons;

                if (layerIndex < this.biasValues.Length)
                {
                    this.biasValues[layerIndex] = _currentPanel.biasValue;
                }

                if (layerIndex != 0)
                {
                    if (!this.isSynchronousNetwork)
                        this.asyncActivationTypes[layerIndex - 1] = _currentPanel.asyncActivationType;
                    else
                        this.syncActivationTypes[layerIndex - 1] = _currentPanel.syncActivationType;
                }

                if (this.pc.isEnd())
                {
                    int numWeightsExpected = 0;
                    for (int i = 0; i < this.neuronCounts.Length - 1; i++)
                    {
                        numWeightsExpected += ((this.neuronCounts[i] + 1) * this.neuronCounts[i + 1]); //+1 -> bias node
                    }

                    /*Save weather this is a classifier or not*/
                    this.isClassifier = _currentPanel.isClassifier;
                    if (this.isClassifier)
                    {
                        this.classifierThresholds = (double[])_currentPanel.classifierThresholds.Clone();
                    }

                    /*Generate new weights form*/
                    this.pc.panels.Add(new WeightsAndPrecision(numWeightsExpected, 0, 0, ""));
                }

                return this.pc.advance(width, height);
            }

            if (currentPanel is WeightsAndPrecision)
            {
                WeightsAndPrecision _currentPanel = (WeightsAndPrecision)currentPanel;

                this.numIntBits = _currentPanel.maxIntBits;
                this.numFracBits = _currentPanel.maxFracBits;
                this.numWeightIntBits = _currentPanel.maxIntBits; //TODO: Weights?
                this.weights = _currentPanel.weights;

                this.pc.panels.Add(new SaveControl(saveControl_Persistant_Path, saveControl_Valid));

                this.initNN();

                return this.pc.advance(width, height);
            }

            if (currentPanel is SaveControl)
            {
                SaveControl sc = (SaveControl)currentPanel;

                if (!this.generateNN(sc.filePath))
                {
                    MessageBox.Show("Error in writing the neural network.");
                    return currentPanel;
                }

                this.pc.panels.Add(new ThankYou());
                return this.pc.advance(width, height);
            }

            if (currentPanel is ThankYou)
            {
                return null;
            }

            throw new Exception("ERROR: Unrecognized form type");
        }

        /// <summary>
        /// Get the previous screen to display to the user
        /// </summary>
        /// <param name="width">The width at which to display the screen</param>
        /// <param name="height">The height at which to display the screen</param>
        /// <returns></returns>
        public NNPanel previous(int width, int height)
        {
            NNPanel currentPanel = this.pc.current();
            NNPanel previousPanel = this.pc.previous(width, height);

            if (currentPanel is SaveControl || currentPanel is WeightsAndPrecision || currentPanel is ThankYou || currentPanel is NetworkSetup)
            {
                this.pc.clearToEnd(this.pc.currentPanelIndex + 1); //the .previous() call above decrements the currentPannelIndex
            }

            return previousPanel;
        }

        /// <summary>
        /// Get the current screen
        /// </summary>
        /// <param name="width">The width at which to display the screen</param>
        /// <param name="height">The height at which to display the screen</param>
        /// <returns></returns>
        public NNPanel current(int width, int height)
        {
            return this.pc.current(width, height);
        }

        /// <summary>
        /// Creates the neural network object from the user's inputted data
        /// </summary>
        private void initNN()
        {
            if (!this.isSynchronousNetwork)
            {

                this.asyncNN = new AsyncNeuralNetwork(this.neuronCounts, this.biasValues, this.asyncActivationTypes, this.numIntBits, this.numFracBits, this.numWeightIntBits, this.isClassifier, this.classifierThresholds, this.weights);
                this.syncNN = null;
            }
            else
            {
                this.syncNN = new SyncNeuralNetwork(this.neuronCounts, this.biasValues, this.syncActivationTypes, this.numIntBits, this.numFracBits, this.numWeightIntBits, this.isClassifier, this.classifierThresholds, this.weights);
                this.asyncNN = null;
            }
        }

        /// <summary>
        /// Writes the neural network files to disk
        /// </summary>
        /// <param name="filepath">The path at which to write the data</param>
        /// <returns></returns>
        public bool generateNN(string filepath)
        {
            string fft_filepath = filepath + "\\fixed_float_types.vhd";
            string fpkg_filepath = filepath + "\\fixed_pkg.vhd";

            if (!File.Exists(fft_filepath))
            {
                File.Copy("fixed_float_types.vhd", filepath + "\\fixed_float_types.vhd");
            }
            if (!File.Exists(fpkg_filepath))
            {
                File.Copy("fixed_pkg.vhd", filepath + "\\fixed_pkg.vhd");
            }

            if (!this.isSynchronousNetwork)
                return asyncNN.writeVHDL(filepath);
            else
                return syncNN.writeVHDL(filepath);
        }

    }
}
