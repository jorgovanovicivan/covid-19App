using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domen
{
    [Serializable]
  public  class Opstina
    {
        public override string ToString()
        {
            return naziv;
        }
        int idOpstina;
        int pttBroj;
        String naziv;

        public int IdOpstina { get => idOpstina; set => idOpstina = value; }
        public int PttBroj { get => pttBroj; set => pttBroj = value; }
        public string Naziv { get => naziv; set => naziv = value; }
    }
}
