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
    /// A UI element allowing the user to set whether the network is synchronous or asynchronous
    /// </summary>
    public partial class SyncOrAsync : NNPanel
    {
        /// <summary>
        /// True if the network is synchronous, false otherwise
        /// </summary>
        private bool isSync = true;

        /// <summary>
        /// Initialize the form
        /// </summary>
        public SyncOrAsync()
        {
            InitializeComponent();
        }

        /// <summary>
        /// The verify() method implementation for this class. See NNPannel.verify() for more documentation.
        /// </summary>
        /// <returns></returns>
        public override bool verify()
        {
            return true; 
        }

        /// <summary>
        /// Determines whether the user has specified that the network is synchronous or asynchronous
        /// </summary>
        /// <returns>True if synchronous, false otherwise</returns>
        public bool isSynchronousNetwork()
        {
            return this.isSync;
        }

        /// <summary>
        /// An event handler that reads the state of the radiobuttons on the form to determine whether the network is synchronous or asynchronous.
        /// Fires every time the radio buttons change state.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void SyncNNRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            this.isSync = this.SyncNNRadioButton.Checked;
        }
    }
}
