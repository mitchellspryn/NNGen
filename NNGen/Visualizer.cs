﻿/* Author: Mitchell Spryn (mitchell.spryn@gmail.com) 
 * There is no warranty with this code. I provide it with the intention of being interesting/helpful, but make no
 * guarantees about its correctness or robustness. 
 * This code is free to use as you please, as long as this header comment is left in all of the files and credit is attributed to me for the original content that I have created.
 */
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace NNGen
{
    /// <summary>
    /// A for for visualizing the network that is to be generated by the generator
    /// </summary>
    public partial class Visualizer : Form
    {
        /// <summary>
        /// The list of layers that are to be generated by the network
        /// </summary>
        public List<VisualizerLayer> layers { get; private set; }

        /// <summary>
        /// The list of arrows connecting the layers
        /// </summary>
        public List<VisualizerArrow> arrows { get; private set; }

        /// <summary>
        /// An int used to control the padding from the edges for the graphics
        /// </summary>
        private int padding = 60;

        /// <summary>
        /// Create a new Visualizer
        /// </summary>
        /// <param name="wc">The WizardController that contains the state of the user's inputs</param>
        public Visualizer(WizardController wc)
        {
            this.layers = new List<VisualizerLayer>();
            this.arrows = new List<VisualizerArrow>();

            int numLayers = wc.neuronCounts.Length;
            int numArrows = numLayers;

            if (numLayers < 2)
            {
                MessageBox.Show("Error: There must be at least two layers to visualize the network.");
                return;
            }

            /*Create the forms*/
            for (int i = 0; i < numLayers; i++)
            {
                if (i == 0)
                {
                    this.layers.Add(new VisualizerLayer(wc.neuronCounts[0], AsyncNeuron.NeuronActivationType.NONE, TransferFunctionWrapper.MemoryActivationType.LINEAR, wc.isSynchronousNetwork, "Input Layer", true));
                }
                else if (i == numLayers - 1)
                {
                    this.layers.Add(new VisualizerLayer(wc.neuronCounts[i], wc.asyncActivationTypes[i - 1], wc.syncActivationTypes[i-1], wc.isSynchronousNetwork, "Output Layer", false));
                }
                else
                {
                    this.layers.Add(new VisualizerLayer(wc.neuronCounts[i], wc.asyncActivationTypes[i - 1], wc.syncActivationTypes[i-1], wc.isSynchronousNetwork, String.Format("Hidden layer {0}", i), false));
                }
            }

            int neuronCounter = 0;
            for (int i = 0; i < numArrows; i++)
            {
                int minIntBits = 99999999;
                int maxIntBits = 0;
                for (int j = 0; j < wc.neuronCounts[i]; j++)
                {
                    int currentIntBits = 0;
                    if (!wc.isSynchronousNetwork)
                        currentIntBits = wc.asyncNN.intBusWidths[neuronCounter];
                    else
                        currentIntBits = wc.syncNN.numIntBits;
                    neuronCounter++;
                    if (minIntBits > currentIntBits)
                    {
                        minIntBits = currentIntBits;
                    }
                    if (maxIntBits < currentIntBits)
                    {
                        maxIntBits = currentIntBits;
                    }
                }
                if (!wc.isClassifier || i != numArrows - 1)
                {
                    this.arrows.Add(new VisualizerArrow(maxIntBits, minIntBits, wc.numFracBits, wc.neuronCounts[i]));
                }
                else
                {
                    this.arrows.Add(new VisualizerArrow(1, 1, 0, wc.neuronCounts[i]));
                }

            }

            /*Set the width and height of the display*/
            this.Width = (2 * this.padding) + (this.layers.Count * this.layers[0].Width) + (this.arrows.Count * this.arrows[0].Width);
            this.Height = (2 * this.padding) + Math.Max(this.arrows[0].Height, this.layers[0].Height);

            /*Draw the displays*/
            bool arrowTaller = (this.arrows[0].Height > this.layers[0].Height);
            int downLayer = Math.Max(this.arrows[0].Height - this.layers[0].Height, 0) / 2;
            int downArrow = Math.Max(this.layers[0].Height - this.arrows[0].Height, 0) / 2;

            int xPos = this.padding;

            for (int i = 0; i < this.layers.Count; i++)
            {
                this.layers[i].Location = new Point(xPos, this.padding + downLayer);
                xPos += this.layers[i].Width;
                if (i < this.arrows.Count)
                {
                    this.arrows[i].Location = new Point(xPos, this.padding + downArrow);
                    xPos += this.arrows[i].Width;
                }
            }

            /*Actually add the controls to the form*/
            for (int i = 0; i < this.layers.Count; i++)
            {
                this.Controls.Add(this.layers[i]);
            }
            for (int i = 0; i < this.arrows.Count; i++)
            {
                this.Controls.Add(this.arrows[i]);
            }

            /*For now, prevent resizing*/
            this.MaximumSize = this.Size;
            this.MinimumSize = this.Size;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
           

            /*All done!*/
            return;
        }

    }
}

