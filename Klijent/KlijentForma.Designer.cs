namespace Klijent
{
    partial class KlijentForma
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
            this.txtJmbg = new System.Windows.Forms.TextBox();
            this.cbDrzavljanstvo = new System.Windows.Forms.ComboBox();
            this.txtIme = new System.Windows.Forms.TextBox();
            this.txtPrezime = new System.Windows.Forms.TextBox();
            this.txtElektronskaPosta = new System.Windows.Forms.TextBox();
            this.txtMobilni = new System.Windows.Forms.TextBox();
            this.cbOpstina = new System.Windows.Forms.ComboBox();
            this.rbDa = new System.Windows.Forms.RadioButton();
            this.rbNE = new System.Windows.Forms.RadioButton();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.btnDodaj = new System.Windows.Forms.Button();
            this.btnObrisi = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.btnSacuvaj = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // txtJmbg
            // 
            this.txtJmbg.Location = new System.Drawing.Point(205, 63);
            this.txtJmbg.Name = "txtJmbg";
            this.txtJmbg.Size = new System.Drawing.Size(264, 22);
            this.txtJmbg.TabIndex = 0;
            this.txtJmbg.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // cbDrzavljanstvo
            // 
            this.cbDrzavljanstvo.FormattingEnabled = true;
            this.cbDrzavljanstvo.Location = new System.Drawing.Point(205, 21);
            this.cbDrzavljanstvo.Name = "cbDrzavljanstvo";
            this.cbDrzavljanstvo.Size = new System.Drawing.Size(264, 24);
            this.cbDrzavljanstvo.TabIndex = 1;
            // 
            // txtIme
            // 
            this.txtIme.Location = new System.Drawing.Point(205, 106);
            this.txtIme.Name = "txtIme";
            this.txtIme.Size = new System.Drawing.Size(264, 22);
            this.txtIme.TabIndex = 2;
            // 
            // txtPrezime
            // 
            this.txtPrezime.Location = new System.Drawing.Point(205, 149);
            this.txtPrezime.Name = "txtPrezime";
            this.txtPrezime.Size = new System.Drawing.Size(264, 22);
            this.txtPrezime.TabIndex = 3;
            // 
            // txtElektronskaPosta
            // 
            this.txtElektronskaPosta.Location = new System.Drawing.Point(205, 193);
            this.txtElektronskaPosta.Name = "txtElektronskaPosta";
            this.txtElektronskaPosta.Size = new System.Drawing.Size(264, 22);
            this.txtElektronskaPosta.TabIndex = 4;
            // 
            // txtMobilni
            // 
            this.txtMobilni.Location = new System.Drawing.Point(205, 236);
            this.txtMobilni.Name = "txtMobilni";
            this.txtMobilni.Size = new System.Drawing.Size(264, 22);
            this.txtMobilni.TabIndex = 5;
            // 
            // cbOpstina
            // 
            this.cbOpstina.FormattingEnabled = true;
            this.cbOpstina.Location = new System.Drawing.Point(205, 299);
            this.cbOpstina.Name = "cbOpstina";
            this.cbOpstina.Size = new System.Drawing.Size(264, 24);
            this.cbOpstina.TabIndex = 6;
            // 
            // rbDa
            // 
            this.rbDa.AutoSize = true;
            this.rbDa.Location = new System.Drawing.Point(222, 272);
            this.rbDa.Name = "rbDa";
            this.rbDa.Size = new System.Drawing.Size(45, 21);
            this.rbDa.TabIndex = 7;
            this.rbDa.TabStop = true;
            this.rbDa.Text = "da";
            this.rbDa.UseVisualStyleBackColor = true;
            // 
            // rbNE
            // 
            this.rbNE.AutoSize = true;
            this.rbNE.Location = new System.Drawing.Point(338, 272);
            this.rbNE.Name = "rbNE";
            this.rbNE.Size = new System.Drawing.Size(45, 21);
            this.rbNE.TabIndex = 8;
            this.rbNE.TabStop = true;
            this.rbNE.Text = "ne";
            this.rbNE.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(31, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(93, 17);
            this.label1.TabIndex = 9;
            this.label1.Text = "Drzavljanstvo";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(31, 66);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(46, 17);
            this.label2.TabIndex = 10;
            this.label2.Text = "JMBG";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(31, 111);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(30, 17);
            this.label3.TabIndex = 11;
            this.label3.Text = "Ime";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(31, 154);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(59, 17);
            this.label4.TabIndex = 12;
            this.label4.Text = "Prezime";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(31, 198);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(121, 17);
            this.label5.TabIndex = 13;
            this.label5.Text = "Elektronska posta";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(31, 239);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(99, 17);
            this.label6.TabIndex = 14;
            this.label6.Text = "Mobilni telefon";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(31, 276);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(134, 17);
            this.label7.TabIndex = 15;
            this.label7.Text = "Specificna oboljenja";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(31, 306);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(57, 17);
            this.label8.TabIndex = 16;
            this.label8.Text = "Opstina";
            // 
            // btnDodaj
            // 
            this.btnDodaj.Location = new System.Drawing.Point(13, 352);
            this.btnDodaj.Name = "btnDodaj";
            this.btnDodaj.Size = new System.Drawing.Size(141, 39);
            this.btnDodaj.TabIndex = 17;
            this.btnDodaj.Text = "Dodaj tip vakcine";
            this.btnDodaj.UseVisualStyleBackColor = true;
            this.btnDodaj.Click += new System.EventHandler(this.btnDodaj_Click);
            // 
            // btnObrisi
            // 
            this.btnObrisi.Location = new System.Drawing.Point(205, 352);
            this.btnObrisi.Name = "btnObrisi";
            this.btnObrisi.Size = new System.Drawing.Size(141, 39);
            this.btnObrisi.TabIndex = 18;
            this.btnObrisi.Text = "Obrisi tip vakcine";
            this.btnObrisi.UseVisualStyleBackColor = true;
            this.btnObrisi.Click += new System.EventHandler(this.btnObrisi_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(13, 417);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(775, 186);
            this.dataGridView1.TabIndex = 19;
            // 
            // btnSacuvaj
            // 
            this.btnSacuvaj.Location = new System.Drawing.Point(34, 630);
            this.btnSacuvaj.Name = "btnSacuvaj";
            this.btnSacuvaj.Size = new System.Drawing.Size(197, 39);
            this.btnSacuvaj.TabIndex = 20;
            this.btnSacuvaj.Text = "Sacuvaj prijavu";
            this.btnSacuvaj.UseVisualStyleBackColor = true;
            this.btnSacuvaj.Click += new System.EventHandler(this.btnSacuvaj_Click);
            // 
            // KlijentForma
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 692);
            this.Controls.Add(this.btnSacuvaj);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.btnObrisi);
            this.Controls.Add(this.btnDodaj);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.rbNE);
            this.Controls.Add(this.rbDa);
            this.Controls.Add(this.cbOpstina);
            this.Controls.Add(this.txtMobilni);
            this.Controls.Add(this.txtElektronskaPosta);
            this.Controls.Add(this.txtPrezime);
            this.Controls.Add(this.txtIme);
            this.Controls.Add(this.cbDrzavljanstvo);
            this.Controls.Add(this.txtJmbg);
            this.Name = "KlijentForma";
            this.Text = "Form1";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.KlijentForma_FormClosed);
            this.Load += new System.EventHandler(this.KlijentForma_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtJmbg;
        private System.Windows.Forms.ComboBox cbDrzavljanstvo;
        private System.Windows.Forms.TextBox txtIme;
        private System.Windows.Forms.TextBox txtPrezime;
        private System.Windows.Forms.TextBox txtElektronskaPosta;
        private System.Windows.Forms.TextBox txtMobilni;
        private System.Windows.Forms.ComboBox cbOpstina;
        private System.Windows.Forms.RadioButton rbDa;
        private System.Windows.Forms.RadioButton rbNE;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Button btnDodaj;
        private System.Windows.Forms.Button btnObrisi;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button btnSacuvaj;
    }
}

