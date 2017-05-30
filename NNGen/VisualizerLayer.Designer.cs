namespace NNGen
{
    partial class VisualizerLayer
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
            this.layerNameLabel = new System.Windows.Forms.Label();
            this.numNeuronLabel = new System.Windows.Forms.Label();
            this.activationTypeLabel = new System.Windows.Forms.Label();
            this.syncLabel = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // layerNameLabel
            // 
            this.layerNameLabel.AutoSize = true;
            this.layerNameLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.layerNameLabel.Location = new System.Drawing.Point(69, 23);
            this.layerNameLabel.Name = "layerNameLabel";
            this.layerNameLabel.Size = new System.Drawing.Size(57, 20);
            this.layerNameLabel.TabIndex = 0;
            this.layerNameLabel.Text = "label1";
            // 
            // numNeuronLabel
            // 
            this.numNeuronLabel.AutoSize = true;
            this.numNeuronLabel.Location = new System.Drawing.Point(70, 108);
            this.numNeuronLabel.Name = "numNeuronLabel";
            this.numNeuronLabel.Size = new System.Drawing.Size(35, 13);
            this.numNeuronLabel.TabIndex = 1;
            this.numNeuronLabel.Text = "label2";
            // 
            // activationTypeLabel
            // 
            this.activationTypeLabel.AutoSize = true;
            this.activationTypeLabel.Location = new System.Drawing.Point(70, 61);
            this.activationTypeLabel.Name = "activationTypeLabel";
            this.activationTypeLabel.Size = new System.Drawing.Size(35, 13);
            this.activationTypeLabel.TabIndex = 2;
            this.activationTypeLabel.Text = "label1";
            // 
            // syncLabel
            // 
            this.syncLabel.AutoSize = true;
            this.syncLabel.Location = new System.Drawing.Point(70, 83);
            this.syncLabel.Name = "syncLabel";
            this.syncLabel.Size = new System.Drawing.Size(35, 13);
            this.syncLabel.TabIndex = 4;
            this.syncLabel.Text = "label2";
            // 
            // VisualizerLayer
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.Controls.Add(this.syncLabel);
            this.Controls.Add(this.activationTypeLabel);
            this.Controls.Add(this.numNeuronLabel);
            this.Controls.Add(this.layerNameLabel);
            this.Name = "VisualizerLayer";
            this.Size = new System.Drawing.Size(233, 204);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label layerNameLabel;
        private System.Windows.Forms.Label numNeuronLabel;
        private System.Windows.Forms.Label activationTypeLabel;
        private System.Windows.Forms.Label syncLabel;
    }
}
