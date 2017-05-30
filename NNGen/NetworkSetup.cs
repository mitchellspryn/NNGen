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
    /// A screen for setting up the number of layers in the network
    /// </summary>
    public partial class NetworkSetup : NNPanel
    {
        /// <summary>
        /// The number of hidden layers in the network
        /// </summary>
        public int numHiddenLayers { get; private set; }

        /// <summary>
        /// Initialize a NetworkSetup pannel
        /// </summary>
        /// <param name="_numHiddenLayers">The seed value for the number of hidden layers in the network</param>
        public NetworkSetup(int _numHiddenLayers)
        {
            InitializeComponent();

            this.numHiddenLayers = _numHiddenLayers;
            this.numHLTB.Text = _numHiddenLayers.ToString();
        }

        /// <summary>
        /// The verify() method implementation for this class. See NNPannel.verify() for more documentation.
        /// </summary>
        /// <returns></returns>
        public override bool verify()
        {
            try
            {
                this.numHiddenLayers = Convert.ToInt32(this.numHLTB.Text);
                if (numHiddenLayers < 0)
                {
                    MessageBox.Show("Invalid number of hidden layers. This number must be >= 0");
                    return false;
                }
                return true;
            }
            catch
            {
                MessageBox.Show("Invalid number of hidden layers. This number must be >= 0");
                return false;
            }
        }

    }
}
