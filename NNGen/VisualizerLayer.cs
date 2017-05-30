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

namespace NNGen
{
    /// <summary>
    /// A representation of a layer in the Visualizer
    /// </summary>
    public partial class VisualizerLayer : UserControl
    {
        /// <summary>
        /// The number of neurons in the network
        /// </summary>
        public int numNeurons { get; private set; }

        /// <summary>
        /// For asyncronous networks, the activation type of the layer
        /// </summary>
        public AsyncNeuron.NeuronActivationType asyncActivationType { get; private set; }

        /// <summary>
        /// For syncronous networks, the activatino type of the layer
        /// </summary>
        public TransferFunctionWrapper.MemoryActivationType syncActivationType { get; private set; }

        /// <summary>
        /// A human-readable string representation of the activation type
        /// </summary>
        public string activationType_string { get; private set; }

        /// <summary>
        /// The name of the layer
        /// </summary>
        public string layerName { get; private set; }

        /// <summary>
        /// Whether the layer is synchronous
        /// </summary>
        public bool isSynchronous { get; private set; }

        /// <summary>
        /// Whether the layer is the first layer in the network
        /// </summary>
        public bool isFirstLayer { get; private set; }

        /// <summary>
        /// A private formatting variable
        /// </summary>
        private int label_padding;

        /// <summary>
        /// Create a VisualizerLayer
        /// </summary>
        /// <param name="_numNeurons">The number of neurons in the layer</param>
        /// <param name="_asyncActivationType">For an asynchronous network, the activation type. Ignored for synchronous networks</param>
        /// <param name="_syncActivationType">For a synchronous network, the activation type. Ignored for asynchronous networks</param>
        /// <param name="_isSynchronous">A flag determining whether the network is synchronous or not</param>
        /// <param name="_layerName">The name of the layer</param>
        /// <param name="_isFirstLayer">A flag representing whether this layer is the first layer in the network. Used to mask the activation type</param>
        public VisualizerLayer(int _numNeurons, AsyncNeuron.NeuronActivationType _asyncActivationType, TransferFunctionWrapper.MemoryActivationType _syncActivationType, bool _isSynchronous, string _layerName, bool _isFirstLayer)
        {
            InitializeComponent();

            /*Prevent resizing*/
            this.MaximumSize = this.Size;
            this.MinimumSize = this.Size;

            this.numNeurons = _numNeurons;
            this.asyncActivationType = _asyncActivationType;
            this.syncActivationType = _syncActivationType;
            this.isSynchronous = _isSynchronous;
            this.layerName = _layerName;
            this.isFirstLayer = _isFirstLayer;

            if (!this.isFirstLayer)
            {
                if (!this.isSynchronous)
                    this.activationType_string = Utilities.GetDescription<AsyncNeuron.NeuronActivationType>(this.asyncActivationType);
                else
                    this.activationType_string = Utilities.GetDescription<TransferFunctionWrapper.MemoryActivationType>(this.syncActivationType);
            }

            this.layerNameLabel.Text = String.Format("{0}", this.layerName);
            this.numNeuronLabel.Text = String.Format("{0} neurons", this.numNeurons);

            if (this.isSynchronous)
            {
                this.syncLabel.Text = "Synchronous";
            }
            else
            {
                this.syncLabel.Text = "Asynchronous";

            }

            if (this.isFirstLayer)
            {
                this.activationTypeLabel.Text = "";
            }
            else
            {
                this.activationTypeLabel.Text = String.Format("Activation type: {0}", this.activationType_string);
            }

            this.label_padding = this.Height - this.layerNameLabel.Height - this.numNeuronLabel.Height - this.activationTypeLabel.Height - this.syncLabel.Height;
            this.label_padding /= 5;

            return;
        }

        /// <summary>
        /// Paints the form
        /// </summary>
        /// <param name="e"></param>
        protected override void OnPaint(PaintEventArgs e)
        {
            base.OnPaint(e);

            int centerX = this.Width / 2;
            int yPos = this.label_padding;

            this.layerNameLabel.Location = new Point(centerX - (this.layerNameLabel.Width / 2), yPos);
            yPos += this.label_padding + this.layerNameLabel.Height;
            this.numNeuronLabel.Location = new Point(centerX - (this.numNeuronLabel.Width / 2), yPos);
            yPos += this.label_padding + this.numNeuronLabel.Height;
            this.activationTypeLabel.Location = new Point(centerX - (this.activationTypeLabel.Width / 2), yPos);
            yPos += this.label_padding + this.activationTypeLabel.Height;
            this.syncLabel.Location = new Point(centerX - (this.syncLabel.Width / 2), yPos);

            return;
        }
    }
}
