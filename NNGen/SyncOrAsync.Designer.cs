namespace NNGen
{
    partial class SyncOrAsync
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
            this.SyncNNRadioButton = new System.Windows.Forms.RadioButton();
            this.AsyncNNRadioButton = new System.Windows.Forms.RadioButton();
            this.SuspendLayout();
            // 
            // TitleLabel
            // 
            this.TitleLabel.AutoSize = true;
            this.TitleLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 18F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.TitleLabel.Location = new System.Drawing.Point(118, 9);
            this.TitleLabel.Name = "TitleLabel";
            this.TitleLabel.Size = new System.Drawing.Size(238, 29);
            this.TitleLabel.TabIndex = 3;
            this.TitleLabel.Text = "Select Network Type";
            // 
            // SyncNNRadioButton
            // 
            this.SyncNNRadioButton.AutoSize = true;
            this.SyncNNRadioButton.Checked = true;
            this.SyncNNRadioButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.SyncNNRadioButton.Location = new System.Drawing.Point(123, 65);
            this.SyncNNRadioButton.Name = "SyncNNRadioButton";
            this.SyncNNRadioButton.Size = new System.Drawing.Size(120, 24);
            this.SyncNNRadioButton.TabIndex = 4;
            this.SyncNNRadioButton.TabStop = true;
            this.SyncNNRadioButton.Text = "Synchronous";
            this.SyncNNRadioButton.UseVisualStyleBackColor = true;
            this.SyncNNRadioButton.CheckedChanged += new System.EventHandler(this.SyncNNRadioButton_CheckedChanged);
            // 
            // AsyncNNRadioButton
            // 
            this.AsyncNNRadioButton.AutoSize = true;
            this.AsyncNNRadioButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.AsyncNNRadioButton.Location = new System.Drawing.Point(123, 95);
            this.AsyncNNRadioButton.Name = "AsyncNNRadioButton";
            this.AsyncNNRadioButton.Size = new System.Drawing.Size(128, 24);
            this.AsyncNNRadioButton.TabIndex = 5;
            this.AsyncNNRadioButton.Text = "Asynchronous";
            this.AsyncNNRadioButton.UseVisualStyleBackColor = true;
            // 
            // SyncOrAsync
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.AsyncNNRadioButton);
            this.Controls.Add(this.SyncNNRadioButton);
            this.Controls.Add(this.TitleLabel);
            this.Name = "SyncOrAsync";
            this.Size = new System.Drawing.Size(460, 327);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label TitleLabel;
        private System.Windows.Forms.RadioButton SyncNNRadioButton;
        private System.Windows.Forms.RadioButton AsyncNNRadioButton;
    }
}
