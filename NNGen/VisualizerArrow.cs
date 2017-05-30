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
    /// Represents an arrow in the visualizer diagram
    /// </summary>
    public partial class VisualizerArrow : UserControl
    {
        /// <summary>
        /// The maximal number of integer bits for the layer
        /// </summary>
        public int maxNumIntBits { get; private set; }

        /// <summary>
        /// The minimal number of fractional bits for the layer
        /// </summary>
        public int minNumIntBits { get; private set; }

        /// <summary>
        /// The number of fractional bits for the network
        /// </summary>
        public int numFracBits { get; private set; }

        /// <summary>
        /// The number of bus lines between two layers
        /// </summary>
        public int numLines { get; private set; }

        /// <summary>
        /// A variable controlling the formatting 
        /// </summary>
        private int labelPadding = 5;

        /// <summary>
        /// A variable controlling the formatting
        /// </summary>
        private int crossBar_HalfWidth = 5;

        /// <summary>
        /// Initialize a VisualizerArrow
        /// </summary>
        /// <param name="_maxNumIntBits">The maximal number of integer bits to display</param>
        /// <param name="_minNumIntBits">The minimal number of integer bits to display</param>
        /// <param name="_numFracBits">The number of fractional bits to display</param>
        /// <param name="_numLines">The number of bus lines between the two adjacent layers</param>
        public VisualizerArrow(int _maxNumIntBits, int _minNumIntBits, int _numFracBits, int _numLines)
        {
            InitializeComponent();

            /*Prevent resizing*/
            this.MaximumSize = this.Size;
            this.MinimumSize = this.Size;

            this.maxNumIntBits = _maxNumIntBits;
            this.minNumIntBits = _minNumIntBits;
            this.numFracBits = _numFracBits;
            this.numLines = _numLines;

            this.numFracBitsLabel.Text = String.Format("{0} fractional bits", this.numFracBits);
            this.numLinesLabel.Text = String.Format("{0} lines", this.numLines);

            if (this.maxNumIntBits == this.minNumIntBits)
            {
                this.numIntBitsLabel.Text = String.Format("{0} integer bits", this.maxNumIntBits);
            }
            else
            {
                this.numIntBitsLabel.Text = String.Format("{0} - {1} integer bits", this.minNumIntBits, this.maxNumIntBits);
            }

        }

        /// <summary>
        /// Paints the VisualizerArrow on the form
        /// </summary>
        /// <param name="e"></param>
        protected override void OnPaint(PaintEventArgs e)
        {
            base.OnPaint(e);
            
            /*Draw the arrow*/
            int centerY = this.Height / 2;
            int centerX = this.Width / 2;
            int dX_dY_Arrowhead = 7;
            Pen pen = new Pen(Color.Black);
            e.Graphics.DrawLine(pen, new Point(0, centerY), new Point(this.Width, centerY));
            e.Graphics.DrawLine(pen, new Point(this.Width, centerY), new Point(this.Width - dX_dY_Arrowhead, centerY + dX_dY_Arrowhead));
            e.Graphics.DrawLine(pen, new Point(this.Width, centerY), new Point(this.Width - dX_dY_Arrowhead, centerY - dX_dY_Arrowhead));
            e.Graphics.DrawLine(pen, new Point(centerX + this.crossBar_HalfWidth, centerY + this.crossBar_HalfWidth), new Point(centerX - this.crossBar_HalfWidth, centerY - this.crossBar_HalfWidth));
            

            /*Set the positions of the text boxes*/
            this.numLinesLabel.Location = new Point(centerX - (this.numLinesLabel.Width / 2), centerY - this.labelPadding - this.crossBar_HalfWidth - this.numLinesLabel.Height);
            this.numIntBitsLabel.Location = new Point(centerX - (this.numIntBitsLabel.Width / 2), centerY + this.labelPadding + this.crossBar_HalfWidth);
            this.numFracBitsLabel.Location = new Point(centerX - (this.numFracBitsLabel.Width / 2), this.numIntBitsLabel.Location.Y + this.numIntBitsLabel.Height + this.labelPadding);
            
            return;
        }
    }
}
