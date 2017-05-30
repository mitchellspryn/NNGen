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
    /// A UI element to allow the user to specify the location for the weights to input to the network, as well as the precision with which to perform the neuron's computations.
    /// </summary>
    public partial class WeightsAndPrecision : NNPanel
    {
        /// <summary>
        /// The file path from which to load the weights
        /// </summary>
        public string filePath { get; private set; }

        /// <summary>
        /// The weights read from the user-specified input file
        /// </summary>
        public List<double> weights { get; private set; }

        /// <summary>
        /// The number of integer bits to use in the computations
        /// </summary>
        public int maxIntBits { get; private set; }

        /// <summary>
        /// The number of fractional bits to use in the computation
        /// </summary>
        public int maxFracBits { get; private set; }

        /// <summary>
        /// A flag to determine whether a valid file has been selected by the user
        /// </summary>
        public bool validFileSelected { get; private set; }

        /// <summary>
        /// The number of weights needed to fully initialize the network.
        /// </summary>
        public int numWeightsExpected { get; private set; }

        /// <summary>
        /// Initialize a WeightsAndPrecision form
        /// </summary>
        /// <param name="_numWeightsExpected">The seed value for the number of weights expected for the network</param>
        /// <param name="_maxIntBits">The seed value for the maximal number of integer bits used in the computation</param>
        /// <param name="_maxFracBits">The seed value for the maximal number of fractional bits used in the computation</param>
        /// <param name="_filePath">The seed value for the filepath from which to read the weights</param>
        public WeightsAndPrecision(int _numWeightsExpected, int _maxIntBits, int _maxFracBits, string _filePath)
        {
            InitializeComponent();

            this.numWeightsExpected = _numWeightsExpected;
            this.validFileSelected = false;
            this.weights = new List<double>();

            this.maxIntBits = _maxIntBits;
            this.intBitsTB.Text = this.maxIntBits.ToString();

            this.maxFracBits = _maxFracBits;
            this.fracBitsTB.Text = this.maxFracBits.ToString();

            if (this.filePath != "")
            {
                this.filePathTB.Text = _filePath;
            }
        }

        /// <summary>
        /// Opens a window to allow the user to browse for the file containing the weights
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void browseButton_Click(object sender, EventArgs e)
        {
            OpenFileDialog od = new OpenFileDialog();
            if (od.ShowDialog() == DialogResult.OK)
            {
                this.weights.Clear();
                int lineNum = 0; //for debugging
                using (StreamReader sr = new StreamReader(od.FileName))
                {
                    while(!sr.EndOfStream)
                    {
                        string nextLine = sr.ReadLine();
                        try
                        {
                            double nextWeight = Convert.ToDouble(nextLine);
                            this.weights.Add(nextWeight);
                            lineNum++;
                        }
                        catch
                        {
                            MessageBox.Show(String.Format("Invalid character on line {0} : read {1}", lineNum, nextLine));
                            this.validFileSelected = false;
                            return;
                        }
                    }
                }

                if (this.weights.Count != this.numWeightsExpected)
                {
                    MessageBox.Show(String.Format("Error: Incorrect number of weights in input file. Expected {0} weights, got {1}", this.numWeightsExpected, this.weights.Count));
                    this.weights.Clear();
                    this.validFileSelected = false;
                    return;
                }

                this.filePathTB.Text = od.SafeFileName;
                this.validFileSelected = true;
            }
        }

        /// <summary>
        /// The verify() method implementation for this class. See NNPannel.verify() for more documentation.
        /// </summary>
        /// <returns></returns> 
        public override bool verify()
        {
            if (!this.validFileSelected)
            {
                MessageBox.Show("Error: No valid weights file specified.");
                return false;
            }

            try
            {
                this.maxIntBits = Convert.ToInt32(this.intBitsTB.Text);
                if (this.maxIntBits < 1)
                {
                    MessageBox.Show(String.Format("Error: to synthesize this particular network, at least {0} integer bits are needed.", 1));
                    return false;
                }
            }
            catch
            {
                MessageBox.Show("Error: Cannot convert the number of integer bits to a valid integral value.");
                return false;
            }

            try
            {
                this.maxFracBits = Convert.ToInt32(this.fracBitsTB.Text);
                if (this.maxFracBits < 1)
                {
                    MessageBox.Show("Error: There must be at least one fractional bit in this implementation.");
                    return false;
                }
            }
            catch
            {
                MessageBox.Show("Error: Cannot convert the number of fractional bits to a valid integral value");
                return false;
            }

            return true;
        }
    }
}
