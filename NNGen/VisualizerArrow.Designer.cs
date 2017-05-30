namespace NNGen
{
    partial class VisualizerArrow
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
            this.numFracBitsLabel = new System.Windows.Forms.Label();
            this.numIntBitsLabel = new System.Windows.Forms.Label();
            this.numLinesLabel = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // numFracBitsLabel
            // 
            this.numFracBitsLabel.AutoSize = true;
            this.numFracBitsLabel.Location = new System.Drawing.Point(45, 17);
            this.numFracBitsLabel.Name = "numFracBitsLabel";
            this.numFracBitsLabel.Size = new System.Drawing.Size(35, 13);
            this.numFracBitsLabel.TabIndex = 0;
            this.numFracBitsLabel.Text = "label1";
            // 
            // numIntBitsLabel
            // 
            this.numIntBitsLabel.AutoSize = true;
            this.numIntBitsLabel.Location = new System.Drawing.Point(45, 30);
            this.numIntBitsLabel.Name = "numIntBitsLabel";
            this.numIntBitsLabel.Size = new System.Drawing.Size(35, 13);
            this.numIntBitsLabel.TabIndex = 1;
            this.numIntBitsLabel.Text = "label2";
            // 
            // numLinesLabel
            // 
            this.numLinesLabel.AutoSize = true;
            this.numLinesLabel.Location = new System.Drawing.Point(45, 65);
            this.numLinesLabel.Name = "numLinesLabel";
            this.numLinesLabel.Size = new System.Drawing.Size(35, 13);
            this.numLinesLabel.TabIndex = 2;
            this.numLinesLabel.Text = "label3";
            // 
            // VisualizerArrow
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.numLinesLabel);
            this.Controls.Add(this.numIntBitsLabel);
            this.Controls.Add(this.numFracBitsLabel);
            this.Name = "VisualizerArrow";
            this.Size = new System.Drawing.Size(141, 96);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label numFracBitsLabel;
        private System.Windows.Forms.Label numIntBitsLabel;
        private System.Windows.Forms.Label numLinesLabel;
    }
}
