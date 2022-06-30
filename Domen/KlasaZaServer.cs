using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domen
{
    [Serializable]
  public  class KlasaZaServer
    {
        String imePrezime;
        String jmbg;
        String drzavljanstvo;
       Opstina opstina;
        String elPosta;
        String mobilni;
        bool specificnaOboljenja;

        public string ImePrezime { get => imePrezime; set => imePrezime = value; }
        public string Jmbg { get => jmbg; set => jmbg = value; }
        public string Drzavljanstvo { get => drzavljanstvo; set => drzavljanstvo = value; }
        public Opstina Opstina { get => opstina; set => opstina = value; }
       
        public string ElPosta { get => elPosta; set => elPosta = value; }
        public string Mobilni { get => mobilni; set => mobilni = value; }
        public bool SpecificnaOboljenja { get => specificnaOboljenja; set => specificnaOboljenja = value; }
    }
}
