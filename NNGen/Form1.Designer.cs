namespace NNGen
{
    partial class Form1
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.testSigmoidPoly = new System.Windows.Forms.Button();
            this.testNeuron = new System.Windows.Forms.Button();
            this.testNN = new System.Windows.Forms.Button();
            this.syncNeuronTestBtn = new System.Windows.Forms.Button();
            this.TestTransferMemBtn = new System.Windows.Forms.Button();
            this.TestSyncNNBtn = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // testSigmoidPoly
            // 
            this.testSigmoidPoly.Location = new System.Drawing.Point(12, 12);
            this.testSigmoidPoly.Name = "testSigmoidPoly";
            this.testSigmoidPoly.Size = new System.Drawing.Size(85, 51);
            this.testSigmoidPoly.TabIndex = 0;
            this.testSigmoidPoly.Text = "Test Sigmoid_Poly";
            this.testSigmoidPoly.UseVisualStyleBackColor = true;
            this.testSigmoidPoly.Click += new System.EventHandler(this.testSigmoidPoly_Click);
            // 
            // testNeuron
            // 
            this.testNeuron.Location = new System.Drawing.Point(103, 12);
            this.testNeuron.Name = "testNeuron";
            this.testNeuron.Size = new System.Drawing.Size(85, 51);
            this.testNeuron.TabIndex = 1;
            this.testNeuron.Text = "Test Neuron";
            this.testNeuron.UseVisualStyleBackColor = true;
            this.testNeuron.Click += new System.EventHandler(this.testNeuron_Click);
            // 
            // testNN
            // 
            this.testNN.Location = new System.Drawing.Point(194, 12);
            this.testNN.Name = "testNN";
            this.testNN.Size = new System.Drawing.Size(85, 51);
            this.testNN.TabIndex = 2;
            this.testNN.Text = "Test Async NN";
            this.testNN.UseVisualStyleBackColor = true;
            this.testNN.Click += new System.EventHandler(this.testNN_Click);
            // 
            // syncNeuronTestBtn
            // 
            this.syncNeuronTestBtn.Location = new System.Drawing.Point(103, 69);
            this.syncNeuronTestBtn.Name = "syncNeuronTestBtn";
            this.syncNeuronTestBtn.Size = new System.Drawing.Size(85, 51);
            this.syncNeuronTestBtn.TabIndex = 3;
            this.syncNeuronTestBtn.Text = "Test Sync Neuron";
            this.syncNeuronTestBtn.UseVisualStyleBackColor = true;
            this.syncNeuronTestBtn.Click += new System.EventHandler(this.syncNeuronTestBtn_Click);
            // 
            // TestTransferMemBtn
            // 
            this.TestTransferMemBtn.Location = new System.Drawing.Point(194, 69);
            this.TestTransferMemBtn.Name = "TestTransferMemBtn";
            this.TestTransferMemBtn.Size = new System.Drawing.Size(85, 51);
            this.TestTransferMemBtn.TabIndex = 4;
            this.TestTransferMemBtn.Text = "Test Transfer Mem";
            this.TestTransferMemBtn.UseVisualStyleBackColor = true;
            this.TestTransferMemBtn.Click += new System.EventHandler(this.TestTransferMemBtn_Click);
            // 
            // TestSyncNNBtn
            // 
            this.TestSyncNNBtn.Location = new System.Drawing.Point(12, 69);
            this.TestSyncNNBtn.Name = "TestSyncNNBtn";
            this.TestSyncNNBtn.Size = new System.Drawing.Size(85, 51);
            this.TestSyncNNBtn.TabIndex = 5;
            this.TestSyncNNBtn.Text = "Test Sync NN";
            this.TestSyncNNBtn.UseVisualStyleBackColor = true;
            this.TestSyncNNBtn.Click += new System.EventHandler(this.TestSyncNNBtn_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(293, 136);
            this.Controls.Add(this.TestSyncNNBtn);
            this.Controls.Add(this.TestTransferMemBtn);
            this.Controls.Add(this.syncNeuronTestBtn);
            this.Controls.Add(this.testNN);
            this.Controls.Add(this.testNeuron);
            this.Controls.Add(this.testSigmoidPoly);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button testSigmoidPoly;
        private System.Windows.Forms.Button testNeuron;
        private System.Windows.Forms.Button testNN;
        private System.Windows.Forms.Button syncNeuronTestBtn;
        private System.Windows.Forms.Button TestTransferMemBtn;
        private System.Windows.Forms.Button TestSyncNNBtn;

    }
}

