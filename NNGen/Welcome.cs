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
    /// A form displaying the welcome message to the user
    /// </summary>
    public partial class Welcome : NNPanel 
    {
        /// <summary>
        /// Formatting variable
        /// </summary>
        private int welcomeLabelStartingX = 5;
        /// <summary>
        /// Formatting variable
        /// </summary>
        private int welcomeLabelStartingY = 5;
        /// <summary>
        /// Formatting variable
        /// </summary>
        private int welcomeTextYSpacing = 5;

        /// <summary>
        /// Initialize the Welcome form
        /// </summary>
        public Welcome()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Handles resizing the form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Welcome_SizeChanged(object sender, EventArgs e)
        {
            this.WelcomeLabel.Location = new Point(this.welcomeLabelStartingX, this.welcomeLabelStartingY);
            this.WelcomeLabel.AutoSize = true;

            this.WelcomeText.Location = new Point(this.welcomeLabelStartingX, this.welcomeLabelStartingY + this.WelcomeLabel.Height + this.welcomeTextYSpacing);
            this.WelcomeText.AutoSize = true;

            this.Invalidate(); 
        }
    }
}
