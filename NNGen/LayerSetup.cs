/* Author: Mitchell Spryn (mitchell.spryn@gmail.com) 
 * There is no warranty with this code. I provide it with the intention of being interesting/helpful, but make no
 * guarantees about its correctness or robustness. 
 * This code is free to use as you please, as long as this header comment is left in all of the files and credit is attributed to me for the original content that I have created.
 */
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

namespace NNGen
{
    /// <summary>
    /// A pannel for setting up a single layer of the Neural Network
    /// </summary>
    public partial class LayerSetup : NNPanel
    {
        /// <summary>
        /// The number of neurons in the layer
        /// </summary>
        public int numNeurons { get; private set; }

        /// <summary>
        /// The bias value applied to the layer
        /// </summary>
        public double biasValue { get; private set; }

        /// <summary>
        /// A boolean representing whether the layer can have a bias node (disabled for the output layer)
        /// </summary>
        public bool biasEnabled { get; private set; }

        /// <summary>
        /// A boolean representing whether thresholding is available for the layer (disabled for the input layer)
        /// </summary>
        public bool thresholdingEnabled { get; private set; }

        /// <summary>
        /// A flag for whether this layer is synchronous
        /// </summary>
        public bool isSyncLayer { get; private set; }

        /// <summary>
        /// A flag for whether this is the last layer in the network
        /// </summary>
        public bool isLastLayer { get; private set; }

        /// <summary>
        /// A flag for whether this network should be a classification network as opposed to a regression network
        /// </summary>
        public bool isClassifier { get; private set; }

        /// <summary>
        /// A structure for holding the thresholds for a classification network. If the network is a regression network, this item will be blank.
        /// </summary>
        public double[] classifierThresholds { get; private set; }

        /// <summary>
        /// A flag determining whether the classification user input has been parsed successfully
        /// </summary>
        private bool verifiedClassifier = false;

        /// <summary>
        /// For an asynchronous network, the activation type for the layer
        /// </summary>
        public AsyncNeuron.NeuronActivationType asyncActivationType { get; private set; }

        /// <summary>
        /// For an asynchronous network, the valid activation types for the layer
        /// </summary>
        private List<AsyncNeuron.NeuronActivationType> validAsyncActivationTypes;

        /// <summary>
        /// For a synchronous network, the activation type for the layer. 
        /// </summary>
        public TransferFunctionWrapper.MemoryActivationType syncActivationType { get; private set; }

        /// <summary>
        /// For a synchronous network, the valid activation types for the layer
        /// </summary>
        private List<TransferFunctionWrapper.MemoryActivationType> validSyncActivationTypes;

        /// <summary>
        /// Construct the layer setup form
        /// </summary>
        /// <param name="_titleString">The string to display in the title</param>
        /// <param name="_biasEnabled">The seed value for whether the bias node is enabled for this layer or not</param>
        /// <param name="_biasValue">The seed value for the bias value for this layer</param>
        /// <param name="_numNeuron">The seed value for the number of neurons in the layer</param>
        /// <param name="_thresholdingEnabled">A flag for determing whether thresholding is enabled in this layer</param>
        /// <param name="_asyncType">For asynchronous networks, the seed value for the activation type. This parameter is ingored for synchronous networks</param>
        /// <param name="_syncType">For synchronous networks, the seed value for the activation type. This parameter is ignored for the asynchronous networks</param>
        /// <param name="_isSyncLayer">A flag for setting whether this layer is synchronous or asynchronous</param>
        /// <param name="_isLastLayer">A flag for setting whether this is the last layer in the network or not</param>
        public LayerSetup(string _titleString, bool _biasEnabled, double _biasValue, int _numNeuron, bool _thresholdingEnabled, AsyncNeuron.NeuronActivationType _asyncType, TransferFunctionWrapper.MemoryActivationType _syncType, bool _isSyncLayer, bool _isLastLayer)
        {
            InitializeComponent();
            this.TitleLabel.Text = _titleString;
            this.biasEnabled = _biasEnabled;
            this.thresholdingEnabled = _thresholdingEnabled;
            this.isSyncLayer = _isSyncLayer;
            this.isLastLayer = _isLastLayer;

            this.biasValue = _biasValue;
            this.biasValueTB.Text = this.biasValue.ToString();

            this.numNeurons = _numNeuron;
            this.numNeuronsTB.Text = _numNeuron.ToString();

            this.validAsyncActivationTypes = new List<AsyncNeuron.NeuronActivationType>();
            this.validSyncActivationTypes = new List<TransferFunctionWrapper.MemoryActivationType>();
            this.activationComboBox.Items.Clear();

            if (!this.isSyncLayer)
            {
                if (this.thresholdingEnabled)
                {
                    int index = 0;
                    var actTypes = Enum.GetValues(typeof(AsyncNeuron.NeuronActivationType)).Cast<AsyncNeuron.NeuronActivationType>();
                    foreach (AsyncNeuron.NeuronActivationType type in actTypes)
                    {
                        if (type != AsyncNeuron.NeuronActivationType.NONE)
                        {
                            this.activationComboBox.Items.Add(Utilities.GetDescription<AsyncNeuron.NeuronActivationType>(type));
                            this.validAsyncActivationTypes.Add(type);

                            if (type == _asyncType)
                            {
                                this.activationComboBox.SelectedIndex = index;
                            }

                            index++;
                        }
                    }
                }
                else
                {
                    this.activationComboBox.Items.Add(Utilities.GetDescription<AsyncNeuron.NeuronActivationType>(AsyncNeuron.NeuronActivationType.NONE));
                    this.activationComboBox.SelectedIndex = 0;
                }
            }
            else
            {
                int index = 0;
                var actTypes = Enum.GetValues(typeof(TransferFunctionWrapper.MemoryActivationType)).Cast<TransferFunctionWrapper.MemoryActivationType>();
                foreach (TransferFunctionWrapper.MemoryActivationType type in actTypes)
                {
                    this.activationComboBox.Items.Add(Utilities.GetDescription<TransferFunctionWrapper.MemoryActivationType>(type));
                    this.validSyncActivationTypes.Add(type);

                    if (type == _syncType)
                    {
                        this.activationComboBox.SelectedIndex = index;
                    }

                    index++;
                }
            }

            this.biasValueTB.Visible = this.biasEnabled;
            this.biasLabel.Visible = this.biasEnabled;

            this.activationComboBox.Visible = this.thresholdingEnabled;
            this.thresholdingLabel.Visible = this.thresholdingEnabled;

            if (!this.isLastLayer)
            {
                this.binaryClassificationRadioButton.Visible = false;
                this.realValuedRadioButton.Visible = false;
                this.OutputTypeLabel.Visible = false;
                this.browseForThresholdInputsButton.Visible = false;
                this.thresholdLabel.Visible = false;
                this.thresholdInputFileTextBox.Visible = false;
            }
        }

        /// <summary>
        /// The verify() method implementation for this class. See NNPannel.verify() for more documentation.
        /// </summary>
        /// <returns></returns>
        public override bool verify()
        {
            try
            {
                this.numNeurons = Convert.ToInt32(this.numNeuronsTB.Text);
                if (this.numNeurons < 1)
                {
                    MessageBox.Show("Error: There must be at least one neuron in each layer.");
                    return false;
                }
            }
            catch
            {
                MessageBox.Show("Error: Cannot convert the number of neurons to a valid integral value");
                return false;
            }

            if (this.biasEnabled)
            {
                try
                {
                    this.biasValue = Convert.ToDouble(this.biasValueTB.Text);
                }
                catch
                {
                    MessageBox.Show("Error: Cannot convert the bias values to a valid floating point value.");
                    return false;
                }
            }
            else
            {
                this.biasValue = 0;
            }

            if (!this.isSyncLayer)
            {
                if (this.thresholdingEnabled)
                {
                    this.asyncActivationType = this.validAsyncActivationTypes[this.activationComboBox.SelectedIndex];
                }
                else
                {
                    this.asyncActivationType = AsyncNeuron.NeuronActivationType.NONE;
                }
            }
            else
            {
                this.syncActivationType = this.validSyncActivationTypes[this.activationComboBox.SelectedIndex];
            }

            this.isClassifier = this.binaryClassificationRadioButton.Checked;

            if (this.isClassifier && (this.classifierThresholds.Length != this.numNeurons || !this.verifiedClassifier))
            {
                MessageBox.Show("Error: Number of classifier thresholds and number of neurons are not the same.");
                return false;
            }

            return true;
        }

        /// <summary>
        /// Attempts to load the thresholding information from the input textbox
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void browseForThresholdInputsButton_Click(object sender, EventArgs e)
        {
            this.verifiedClassifier = false;
            OpenFileDialog od = new OpenFileDialog();
            if (od.ShowDialog() == DialogResult.OK)
            {
                List<double> classifierThresholdsList = new List<double>();
                using (StreamReader sr = new StreamReader(od.FileName))
                {
                    string line = "";
                    try
                    {
                        while (!sr.EndOfStream)
                        {
                            line = sr.ReadLine();
                            classifierThresholdsList.Add(Convert.ToDouble(line));
                        }
                    }
                    catch
                    {
                        MessageBox.Show(String.Format("Error: Improper weight found in input file: {0}", line));
                    }
                }

                this.classifierThresholds = classifierThresholdsList.ToArray();
                this.thresholdInputFileTextBox.Text = od.SafeFileName;
                this.verifiedClassifier = true;
            }
        }
    }
}
