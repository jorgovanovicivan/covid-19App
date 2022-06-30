using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domen
{
    [Serializable]
 public   class Prijava
    {
        public override string ToString()
        {
            return "Prijava br: " + idPrijava + " Pacijenta :" + Ime + " " + Prezime;
        }
        public Prijava()
        {
            ListaStavki = new BindingList<StavkaPrijave>();
        }
        int idPrijava;
        String drzavljanstvo;
        String jmbg;
        String ime;
        String prezime;
        String elektronskaPosta;
        String mobilniTelefon;
        bool specificnaOboljenja;
        DateTime datumPrijave;
        Opstina opstina;
        BindingList<StavkaPrijave> listaStavki;
        public int IdPrijava { get => idPrijava; set => idPrijava = value; }
        public string Drzavljanstvo { get => drzavljanstvo; set => drzavljanstvo = value; }
        public string Jmbg { get => jmbg; set => jmbg = value; }
        public string Ime { get => ime; set => ime = value; }
        public string Prezime { get => prezime; set => prezime = value; }
        public string ElektronskaPosta { get => elektronskaPosta; set => elektronskaPosta = value; }
        public string MobilniTelefon { get => mobilniTelefon; set => mobilniTelefon = value; }
        public bool SpecificnaOboljenja { get => specificnaOboljenja; set => specificnaOboljenja = value; }
        public DateTime DatumPrijave { get => datumPrijave; set => datumPrijave = value; }
        public Opstina Opstina { get => opstina; set => opstina = value; }
        public BindingList<StavkaPrijave> ListaStavki { get => listaStavki; set => listaStavki = value; }
    }
}
