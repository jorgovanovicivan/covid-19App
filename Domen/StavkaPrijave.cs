using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Domen
{
    [Serializable]
  public  class StavkaPrijave
    {
        Prijava prijava;
        int rb;
        String tipVakcije;


        public Prijava Prijava { get => prijava; set => prijava = value; }
        public int Rb { get => rb; set => rb = value; }
        public string TipVakcije { get => tipVakcije; set => tipVakcije = value; }
    }
}
