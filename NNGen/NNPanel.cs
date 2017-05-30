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
    /// An abstraction of a single screen (pannel) in the UI
    /// </summary>
    public partial class NNPanel : UserControl
    {
        /// <summary>
        /// A blank constructor for the pannel
        /// </summary>
        public NNPanel()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Resizes the pannel
        /// </summary>
        /// <param name="width">The new width of the pannel</param>
        /// <param name="height"></param>
        public void resize(int width, int height)
        {
            this.Width = width;
            this.Height = height;
        }

        /// <summary>
        /// A method used to determine whether the form has had all of its data successfully entered.
        /// This method should be overridden in child classes to return true if all data has been successfully entered, and false otherwise.
        /// </summary>
        /// <returns></returns>
        public virtual bool verify()
        {
            return true;
        }
    }
}
