/* Author: Mitchell Spryn (mitchell.spryn@gmail.com) 
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
    /// The main window for the application
    /// </summary>
    public partial class MainForm : Form
    {
        /// <summary>
        /// The controller to control the UI elements
        /// </summary>
        private WizardController wc;

        /// <summary>
        /// Creates a MainForm
        /// </summary>
        public MainForm()
        {
            InitializeComponent();

            this.wc = new WizardController();

            this.mainPanel.Controls.Clear();
            this.mainPanel.Controls.Add(this.wc.current(this.mainPanel.Width, this.mainPanel.Height));

            this.visualizeButton.Visible = false;

        }

        /// <summary>
        /// Advances to the next screen 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void nextButton_Click(object sender, EventArgs e)
        {
            NNPanel nextPanel = this.wc.next(this.mainPanel.Width, this.mainPanel.Height);

            this.visualizeButton.Visible = (nextPanel is SaveControl);

            if (nextPanel == null)
            {
                this.Close();
                return;
            }

            this.setNextButtonText(nextPanel);

            this.mainPanel.Controls.Clear();
            this.mainPanel.Controls.Add(nextPanel);
            this.Invalidate();
        }

        /// <summary>
        /// Returns to the previous screen
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void previousButton_Click(object sender, EventArgs e)
        {
            NNPanel nextPanel = this.wc.previous(this.mainPanel.Width, this.mainPanel.Height);

            this.visualizeButton.Visible = (nextPanel is SaveControl);

            this.setNextButtonText(nextPanel);

            this.mainPanel.Controls.Clear();
            this.mainPanel.Controls.Add(nextPanel);
            this.Invalidate();
        }

        /// <summary>
        /// A method to set the text of the "next" button. 
        /// On the final screens, we want the text "next ->" to be replaced by "Generate" or "Finish"
        /// </summary>
        /// <param name="np"></param>
        private void setNextButtonText(NNPanel np)
        {
            if (np is Welcome || np is NetworkSetup || np is LayerSetup || np is WeightsAndPrecision || np is SyncOrAsync)
            {
                this.nextButton.Text = "next ->";
            }
            else if (np is SaveControl)
            {
                this.nextButton.Text = "Generate";
            }
            else if (np is ThankYou)
            {
                this.nextButton.Text = "Finish";
            }
            else
            {
                throw new Exception("Unrecognized form");
            }
        }

        /// <summary>
        /// Handles the resizing of the main form
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void MainForm_Resize(object sender, EventArgs e)
        {
            /*TODO: Figure out better ways to encode this than constants*/
            int leftMargin = 12;
            int rightMargin = 28;
            int topMargin = 12;
            int middleMargin = 6;
            int bottomMargin = 50;
            int buttonHeight = 25;

            int padding_X = leftMargin + rightMargin;
            int padding_Y = topMargin + middleMargin + bottomMargin + buttonHeight;

            if (this.Width < padding_X)
            {
                this.Width = padding_X;
                this.mainPanel.Width = 0;
            }
            else
            {
                this.mainPanel.Width = this.Width - padding_X;
            }

            if (this.Height < padding_Y)
            {
                this.Height = padding_Y;
                this.mainPanel.Height = 0;
            }
            else
            {
                this.mainPanel.Height = this.Height - padding_Y;
            }

            this.mainPanel.Location = new Point(leftMargin, topMargin);

            this.previousButton.Location = new Point(leftMargin, topMargin + this.mainPanel.Height + middleMargin);
            this.previousButton.Height = buttonHeight;
            this.nextButton.Location = new Point(leftMargin + this.mainPanel.Width - this.nextButton.Width, topMargin + this.mainPanel.Height + middleMargin);
            this.nextButton.Height = buttonHeight;

            this.mainPanel.Controls.Clear();
            this.mainPanel.Controls.Add(this.wc.current(this.mainPanel.Width, this.mainPanel.Height));

        }

        /// <summary>
        /// Handles the creation of the visualizer
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void visualizeButton_Click(object sender, EventArgs e)
        {
            Visualizer V = new Visualizer(this.wc);
            V.ShowDialog();
            return;
        }
    }
}
