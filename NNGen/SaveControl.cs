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
    /// A UI element to allow the user to determine the folder in which the generated files will be saved
    /// </summary>
    public partial class SaveControl : NNPanel
    {
        /// <summary>
        /// The file path in which the files are to be generated
        /// </summary>
        public string filePath { get; private set; }

        /// <summary>
        /// A flag to determine if a valid file location has been selected
        /// </summary>
        public bool validFileSelected = false;

        /// <summary>
        /// Create a new SaveControl panel
        /// </summary>
        /// <param name="_filePath">The seed value for the filePath</param>
        /// <param name="_valid">The seed value for whether the filePath is valid</param>
        public SaveControl(string _filePath, bool _valid)
        {
            InitializeComponent();
            this.filePath = _filePath;
            this.saveFileTB.Text = this.filePath;
            this.validFileSelected = _valid;
        }

        /// <summary>
        /// Opens up a dialog box to allow the user to specify a file location.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void browseButton_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog fbd = new FolderBrowserDialog();
            if (fbd.ShowDialog() == DialogResult.OK)
            {
                this.filePath = fbd.SelectedPath + "\\";
                this.saveFileTB.Text = this.filePath;
                this.validFileSelected = true;
            }
        }
        
        /// <summary>
        /// The verify() method implementation for this class. See NNPannel.verify() for more documentation.
        /// </summary>
        /// <returns></returns>
        public override bool verify()
        {
            return this.validFileSelected;
        }
    }
}
