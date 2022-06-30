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
    public partial class Login : Form
    {
        Komunikacija k;
        Korisnik korisnik;
        public Login()
        {
            InitializeComponent();
        }
        List<Korisnik> lista = new List<Korisnik>();
        void inicijalizuj()
        {
            Korisnik k1 = new Korisnik { Id = 1, Ime = "Pera", Prezime = "Peric", Username = "pera", Password = "pera" };
            Korisnik k2 = new Korisnik { Id = 2, Ime = "Mika", Prezime = "Mikic", Username = "mika", Password = "mika" };
            Korisnik k3 = new Korisnik { Id = 3, Ime = "Zika", Prezime = "Zikic", Username = "zika", Password = "zika" };

            lista.Add(k1);
            lista.Add(k2);
            lista.Add(k3);
        }

        public Korisnik login(Korisnik k)
        {
            inicijalizuj();
            foreach (Korisnik ko in lista)
            {
                if (ko.Username == k.Username && ko.Password == k.Password)
                {
                    k.Id = ko.Id;
                    k.Ime = ko.Ime;
                    k.Prezime = ko.Prezime;
                    return k;
                }
            }
            return null;
        }
        private void btnLogin_Click(object sender, EventArgs e)
        {
            k = new Komunikacija();
            if (k.pokrenutJeServer())
            {
                this.Text = "Pokrenut klijentski ";
                korisnik = new Korisnik();
                korisnik.Username = txtUsername.Text;
                korisnik.Password = txtPassword.Text;
                if (korisnik.Password == "" || korisnik.Username == "")
                {
                    MessageBox.Show("MOras uneti password i username");
                    return;
                }
                korisnik = login(korisnik);
                if (korisnik == null)
                {
                    MessageBox.Show("Neuspesno logovanje");
                    return;
                }
                else
                {
                    new KlijentForma(k, korisnik).ShowDialog();
                }

            }
        }
    }
}

