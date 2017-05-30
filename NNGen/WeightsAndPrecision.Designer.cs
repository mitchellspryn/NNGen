namespace NNGen
{
    partial class WeightsAndPrecision
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
            this.label1 = new System.Windows.Forms.Label();
            this.intBitsTB = new System.Windows.Forms.TextBox();
            this.browseButton = new System.Windows.Forms.Button();
            this.minIntBitsTB = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.filePathTB = new System.Windows.Forms.TextBox();
            this.fracBitsTB = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // TitleLabel
            // 
            this.TitleLabel.AutoSize = true;
            this.TitleLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TitleLabel.Location = new System.Drawing.Point(111, 11);
            this.TitleLabel.Name = "TitleLabel";
            this.TitleLabel.Size = new System.Drawing.Size(253, 29);
            this.TitleLabel.TabIndex = 3;
            this.TitleLabel.Text = "Weights and Precision";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(5, 48);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(93, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "Weights File Path:";
            // 
            // intBitsTB
            // 
            this.intBitsTB.Location = new System.Drawing.Point(128, 79);
            this.intBitsTB.Name = "intBitsTB";
            this.intBitsTB.Size = new System.Drawing.Size(100, 20);
            this.intBitsTB.TabIndex = 5;
            this.intBitsTB.Text = "10";
            // 
            // browseButton
            // 
            this.browseButton.Location = new System.Drawing.Point(234, 43);
            this.browseButton.Name = "browseButton";
            this.browseButton.Size = new System.Drawing.Size(75, 23);
            this.browseButton.TabIndex = 6;
            this.browseButton.Text = "Browse...";
            this.browseButton.UseVisualStyleBackColor = true;
            this.browseButton.Click += new System.EventHandler(this.browseButton_Click);
            // 
            // minIntBitsTB
            // 
            this.minIntBitsTB.AutoSize = true;
            this.minIntBitsTB.Location = new System.Drawing.Point(5, 82);
            this.minIntBitsTB.Name = "minIntBitsTB";
            this.minIntBitsTB.Size = new System.Drawing.Size(108, 13);
            this.minIntBitsTB.TabIndex = 7;
            this.minIntBitsTB.Text = "Maximum integer bits:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(3, 111);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(119, 13);
            this.label2.TabIndex = 8;
            this.label2.Text = "Maximum fractional bits:";
            // 
            // filePathTB
            // 
            this.filePathTB.Location = new System.Drawing.Point(128, 45);
            this.filePathTB.Name = "filePathTB";
            this.filePathTB.Size = new System.Drawing.Size(100, 20);
            this.filePathTB.TabIndex = 9;
            // 
            // fracBitsTB
            // 
            this.fracBitsTB.Location = new System.Drawing.Point(128, 108);
            this.fracBitsTB.Name = "fracBitsTB";
            this.fracBitsTB.Size = new System.Drawing.Size(100, 20);
            this.fracBitsTB.TabIndex = 10;
            this.fracBitsTB.Text = "10";
            // 
            // WeightsAndPrecision
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.fracBitsTB);
            this.Controls.Add(this.filePathTB);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.minIntBitsTB);
            this.Controls.Add(this.browseButton);
            this.Controls.Add(this.intBitsTB);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.TitleLabel);
            this.Name = "WeightsAndPrecision";
            this.Size = new System.Drawing.Size(460, 327);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label TitleLabel;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox intBitsTB;
        private System.Windows.Forms.Button browseButton;
        private System.Windows.Forms.Label minIntBitsTB;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox filePathTB;
        private System.Windows.Forms.TextBox fracBitsTB;

    }
}
