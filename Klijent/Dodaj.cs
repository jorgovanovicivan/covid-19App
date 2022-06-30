using Domen;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Klijent
{
    public partial class Dodaj : Form
    {
        List<String> tipVakcineLista = new List<string> { "PFizer", "Sputnik", "Sinofarm", "Moderna", "Bilo koji tip" };
        private Komunikacija k;
        private Prijava p;
       
       
        public Dodaj()
        {
        }

        public Dodaj(Komunikacija k, Prijava p)
        {
            InitializeComponent();
            this.k = k;
            this.p = p;
        }

        private void Dodaj_Load(object sender, EventArgs e)
        {
            
            comboBox1.DataSource = tipVakcineLista;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            StavkaPrijave s = new StavkaPrijave();
            s.Prijava = p;
            s.TipVakcije = comboBox1.SelectedItem.ToString();


            
              
            
            

            
            p.ListaStavki.Add(s);
            this.Close();
        }
    }
}
