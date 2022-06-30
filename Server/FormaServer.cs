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

namespace Server
{
    public partial class FormaServer : Form
    {
        Server s;
        BindingList<KlasaZaServer> lista;
        Timer t;
        Prijava p;
        KlasaZaServer k;
        public FormaServer()
        {
            InitializeComponent();
        }

        private void FormaServer_Load(object sender, EventArgs e)
        {
            s = new Server();
            if (s.pokreniServer())
            {

                this.Text = "POkrenut je server!";
            }
            lista = new BindingList<KlasaZaServer>();
            p = new Prijava();
            t = new Timer();
            t.Interval = 3000;
            t.Tick += osvezi;
            t.Start();
        }

        private void osvezi(object sender, EventArgs e)
        {
                lista= new BindingList<KlasaZaServer>(Broker.dajSesiju().vratiPrijaveZaServer());
            dataGridView1.DataSource = lista;
        }

        private void FormaServer_FormClosed(object sender, FormClosedEventArgs e)
        {
            Environment.Exit(0);
        }

        private void btnPonisti_Click(object sender, EventArgs e)
        {
            k = new KlasaZaServer();
           k = dataGridView1.CurrentRow.DataBoundItem as KlasaZaServer;
            p.Jmbg = k.Jmbg;
          if(Broker.dajSesiju().obrisi(p))
            {
                MessageBox.Show("Obrisana");
            }
            else { MessageBox.Show("Nije obrisana");}

        }
    }
}
