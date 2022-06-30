using Domen;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Klijent
{
    public partial class KlijentForma : Form
    {
        Komunikacija k;
        private Korisnik korisnik;
        List<String> listaDrzavljastvo = new List<string> { "Drzavljanin Republike Srbije", "Strani drzavljanin sa boravkom u RS", "Strani drzavljanin bez boravka u RS" };
        Prijava p;

        public KlijentForma()
        {
        }

        public KlijentForma(Komunikacija k, Korisnik korisnik)
        {
            InitializeComponent();
            this.k = k;
            this.korisnik = korisnik;
        }

        private void KlijentForma_FormClosed(object sender, FormClosedEventArgs e)
        {
            k.Kraj();
        }

        private void KlijentForma_Load(object sender, EventArgs e)
        {
            this.Text = "Pokrenut je server!" + " ulogovao se Korisnik: " + $"{korisnik.Ime} {korisnik.Prezime}";
            cbDrzavljanstvo.DataSource = listaDrzavljastvo;
            cbOpstina.DataSource = k.vratiOpstine();
            p = new Prijava();
            p.ListaStavki = new BindingList<StavkaPrijave>();
            dataGridView1.DataSource = p.ListaStavki;
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void btnDodaj_Click(object sender, EventArgs e)
        {
            new Dodaj(k, p).ShowDialog();
            int rb = 1;
            foreach (StavkaPrijave st in p.ListaStavki)
            {
                st.Rb = rb;
                rb++;
            }
        }

        private void btnObrisi_Click(object sender, EventArgs e)
        {
            try
            {
                StavkaPrijave s = dataGridView1.CurrentRow.DataBoundItem as StavkaPrijave;
                p.ListaStavki.Remove(s);
            }
            catch (Exception er)
            {

                MessageBox.Show("Obrisi: " + er.Message);
                return;
            }

            int rbr = 1;
            foreach (StavkaPrijave stv in p.ListaStavki)
            {
                stv.Rb = rbr;
                rbr++;
            }
        }
        bool jmbgProvera(String tekst)
        {
            return Regex.IsMatch(tekst, @"\d{13}");
        }

        bool proverEmaila(String tekst)
        {
            return Regex.IsMatch(tekst, @"^[a-z]\@[a-z]\.[a-z]{3}");
        }
        private void btnSacuvaj_Click(object sender, EventArgs e)
        {
            p.Drzavljanstvo = cbDrzavljanstvo.SelectedItem.ToString();
            if (p.Drzavljanstvo == null)
            {
                MessageBox.Show("Izaberi drzavljanstvo");
                return;
            }
            p.Jmbg = txtJmbg.Text;
            if (txtJmbg.Text == "")
            {

                MessageBox.Show("Unesi jmbg");
                return;

            }
            p.Ime = txtIme.Text;
            p.Prezime = txtPrezime.Text;
            if (p.Ime == "")
            {
                MessageBox.Show("Unesi ime");
                return;
            }
            if (p.Prezime == "")
            {
                MessageBox.Show("Unesi prezime");
                return;
            }
            p.ElektronskaPosta = txtElektronskaPosta.Text;
            if (p.ElektronskaPosta == "")
            {
                MessageBox.Show("Unesi e postu");
                return;
            }
           if(!proverEmaila(p.ElektronskaPosta))
            {
                MessageBox.Show("NIje dobar format emaila");
                return;
            }

            
            p.MobilniTelefon = txtMobilni.Text;
            if (p.MobilniTelefon == "")
            {
                MessageBox.Show("Unesi mobilni");
                return;
            }
            if (rbDa.Checked)
            {
                p.SpecificnaOboljenja = true;
            }else if (rbNE.Checked)
            {
                p.SpecificnaOboljenja = false;
            }

            if(!(rbNE.Checked) && !(rbDa.Checked))
            {
                MessageBox.Show("Moras cekirati oboljenja");
                return;
            }
            p.DatumPrijave =Convert.ToDateTime( DateTime.Now);
            p.Opstina = cbOpstina.SelectedItem as Opstina;

            if (p.ListaStavki.Count < 1)
            {
                MessageBox.Show("Mora bar jedan tip vakcine");
                return;
            }
            if (!jmbgProvera(txtJmbg.Text))
            {
                MessageBox.Show("Nije okej jmbg");
                return;
            }
            if (k.sacuvaj(p))
            {
                MessageBox.Show("Sacuvana prijava");

            }
            else
            {
                MessageBox.Show("Neuspesno cuvanje");
            }


        }
    }
}
