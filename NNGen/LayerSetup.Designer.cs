namespace NNGen
{
    partial class LayerSetup
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.TitleLabel = new System.Windows.Forms.Label();
            this.numNeuronsTB = new System.Windows.Forms.TextBox();
            this.numNeuronLabel = new System.Windows.Forms.Label();
            this.biasLabel = new System.Windows.Forms.Label();
            this.biasValueTB = new System.Windows.Forms.TextBox();
            this.thresholdingLabel = new System.Windows.Forms.Label();
            this.activationComboBox = new System.Windows.Forms.ComboBox();
            this.realValuedRadioButton = new System.Windows.Forms.RadioButton();
            this.OutputTypeLabel = new System.Windows.Forms.Label();
            this.binaryClassificationRadioButton = new System.Windows.Forms.RadioButton();
            this.thresholdInputFileTextBox = new System.Windows.Forms.TextBox();
            this.browseForThresholdInputsButton = new System.Windows.Forms.Button();
            this.thresholdLabel = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // TitleLabel
            // 
            this.TitleLabel.AutoSize = true;
            this.TitleLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TitleLabel.Location = new System.Drawing.Point(189, 11);
            this.TitleLabel.Name = "TitleLabel";
            this.TitleLabel.Size = new System.Drawing.Size(64, 29);
            this.TitleLabel.TabIndex = 2;
            this.TitleLabel.Text = "XXX";
            // 
            // numNeuronsTB
            // 
            this.numNeuronsTB.Location = new System.Drawing.Point(117, 48);
            this.numNeuronsTB.Name = "numNeuronsTB";
            this.numNeuronsTB.Size = new System.Drawing.Size(154, 20);
            this.numNeuronsTB.TabIndex = 3;
            this.numNeuronsTB.Text = "1";
            // 
            // numNeuronLabel
            // 
            this.numNeuronLabel.AutoSize = true;
            this.numNeuronLabel.Location = new System.Drawing.Point(3, 51);
            this.numNeuronLabel.Name = "numNeuronLabel";
            this.numNeuronLabel.Size = new System.Drawing.Size(98, 13);
            this.numNeuronLabel.TabIndex = 4;
            this.numNeuronLabel.Text = "number of neurons:";
            // 
            // biasLabel
            // 
            this.biasLabel.AutoSize = true;
            this.biasLabel.Location = new System.Drawing.Point(3, 85);
            this.biasLabel.Name = "biasLabel";
            this.biasLabel.Size = new System.Drawing.Size(60, 13);
            this.biasLabel.TabIndex = 5;
            this.biasLabel.Text = "Bias Value:";
            // 
            // biasValueTB
            // 
            this.biasValueTB.Location = new System.Drawing.Point(117, 82);
            this.biasValueTB.Name = "biasValueTB";
            this.biasValueTB.Size = new System.Drawing.Size(154, 20);
            this.biasValueTB.TabIndex = 6;
            this.biasValueTB.Text = "1";
            // 
            // thresholdingLabel
            // 
            this.thresholdingLabel.AutoSize = true;
            this.thresholdingLabel.Location = new System.Drawing.Point(3, 133);
            this.thresholdingLabel.Name = "thresholdingLabel";
            this.thresholdingLabel.Size = new System.Drawing.Size(81, 13);
            this.thresholdingLabel.TabIndex = 7;
            this.thresholdingLabel.Text = "Activation Type";
            // 
            // activationComboBox
            // 
            this.activationComboBox.FormattingEnabled = true;
            this.activationComboBox.Location = new System.Drawing.Point(117, 130);
            this.activationComboBox.Name = "activationComboBox";
            this.activationComboBox.Size = new System.Drawing.Size(154, 21);
            this.activationComboBox.TabIndex = 8;
            // 
            // realValuedRadioButton
            // 
            this.realValuedRadioButton.AutoSize = true;
            this.realValuedRadioButton.Checked = true;
            this.realValuedRadioButton.Location = new System.Drawing.Point(117, 166);
            this.realValuedRadioButton.Name = "realValuedRadioButton";
            this.realValuedRadioButton.Size = new System.Drawing.Size(83, 17);
            this.realValuedRadioButton.TabIndex = 9;
            this.realValuedRadioButton.TabStop = true;
            this.realValuedRadioButton.Text = "Real-Valued";
            this.realValuedRadioButton.UseVisualStyleBackColor = true;
            // 
            // OutputTypeLabel
            // 
            this.OutputTypeLabel.AutoSize = true;
            this.OutputTypeLabel.Location = new System.Drawing.Point(3, 168);
            this.OutputTypeLabel.Name = "OutputTypeLabel";
            this.OutputTypeLabel.Size = new System.Drawing.Size(66, 13);
            this.OutputTypeLabel.TabIndex = 10;
            this.OutputTypeLabel.Text = "Output Type";
            // 
            // binaryClassificationRadioButton
            // 
            this.binaryClassificationRadioButton.AutoSize = true;
            this.binaryClassificationRadioButton.Location = new System.Drawing.Point(117, 189);
            this.binaryClassificationRadioButton.Name = "binaryClassificationRadioButton";
            this.binaryClassificationRadioButton.Size = new System.Drawing.Size(186, 17);
            this.binaryClassificationRadioButton.TabIndex = 11;
            this.binaryClassificationRadioButton.Text = "Binary Classification (Thresholded)";
            this.binaryClassificationRadioButton.UseVisualStyleBackColor = true;
            // 
            // thresholdInputFileTextBox
            // 
            this.thresholdInputFileTextBox.Enabled = false;
            this.thresholdInputFileTextBox.Location = new System.Drawing.Point(117, 212);
            this.thresholdInputFileTextBox.Name = "thresholdInputFileTextBox";
            this.thresholdInputFileTextBox.Size = new System.Drawing.Size(100, 20);
            this.thresholdInputFileTextBox.TabIndex = 12;
            // 
            // browseForThresholdInputsButton
            // 
            this.browseForThresholdInputsButton.Location = new System.Drawing.Point(223, 210);
            this.browseForThresholdInputsButton.Name = "browseForThresholdInputsButton";
            this.browseForThresholdInputsButton.Size = new System.Drawing.Size(75, 23);
            this.browseForThresholdInputsButton.TabIndex = 13;
            this.browseForThresholdInputsButton.Text = "Browse...";
            this.browseForThresholdInputsButton.UseVisualStyleBackColor = true;
            this.browseForThresholdInputsButton.Click += new System.EventHandler(this.browseForThresholdInputsButton_Click);
            // 
            // thresholdLabel
            // 
            this.thresholdLabel.AutoSize = true;
            this.thresholdLabel.Location = new System.Drawing.Point(3, 215);
            this.thresholdLabel.Name = "thresholdLabel";
            this.thresholdLabel.Size = new System.Drawing.Size(100, 13);
            this.thresholdLabel.TabIndex = 14;
            this.thresholdLabel.Text = "Threshold Input File";
            // 
            // LayerSetup
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.thresholdLabel);
            this.Controls.Add(this.browseForThresholdInputsButton);
            this.Controls.Add(this.thresholdInputFileTextBox);
            this.Controls.Add(this.binaryClassificationRadioButton);
            this.Controls.Add(this.OutputTypeLabel);
            this.Controls.Add(this.realValuedRadioButton);
            this.Controls.Add(this.activationComboBox);
            this.Controls.Add(this.thresholdingLabel);
            this.Controls.Add(this.biasValueTB);
            this.Controls.Add(this.biasLabel);
            this.Controls.Add(this.numNeuronLabel);
            this.Controls.Add(this.numNeuronsTB);
            this.Controls.Add(this.TitleLabel);
            this.Name = "LayerSetup";
            this.Size = new System.Drawing.Size(460, 327);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label TitleLabel;
        private System.Windows.Forms.TextBox numNeuronsTB;
        private System.Windows.Forms.Label numNeuronLabel;
        private System.Windows.Forms.Label biasLabel;
        private System.Windows.Forms.TextBox biasValueTB;
        private System.Windows.Forms.Label thresholdingLabel;
        private System.Windows.Forms.ComboBox activationComboBox;
        private System.Windows.Forms.RadioButton realValuedRadioButton;
        private System.Windows.Forms.Label OutputTypeLabel;
        private System.Windows.Forms.RadioButton binaryClassificationRadioButton;
        private System.Windows.Forms.TextBox thresholdInputFileTextBox;
        private System.Windows.Forms.Button browseForThresholdInputsButton;
        private System.Windows.Forms.Label thresholdLabel;
    }
}
