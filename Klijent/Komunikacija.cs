using Domen;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;

namespace Klijent
{
  public  class Komunikacija
    {
        TcpClient klijent;
        BinaryFormatter formatter;
        NetworkStream tok;
        public bool pokrenutJeServer()
        {
            try
            {
                klijent = new TcpClient("localhost", 20000);
                tok = klijent.GetStream();
                formatter = new BinaryFormatter();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        public void Kraj()
        {
            TransferKlasa transfer = new TransferKlasa();
            transfer.Operacija = Operacije.Kraj;
            formatter.Serialize(tok, transfer);
        }

        public List<Opstina> vratiOpstine()
        {
            TransferKlasa transfer = new TransferKlasa();
            transfer.Operacija = Operacije.VratiOpstine;
            formatter.Serialize(tok, transfer);
            transfer = formatter.Deserialize(tok) as TransferKlasa;
            return transfer.Rezultat as List<Opstina>;
        }


        public bool sacuvaj(Prijava p)
        {
            TransferKlasa transfer = new TransferKlasa();
            transfer.Operacija = Operacije.Sacuvaj;
            transfer.TransferObjekat = p;
            formatter.Serialize(tok, transfer);
            transfer = formatter.Deserialize(tok) as TransferKlasa;
            return (bool)transfer.Rezultat;
        }
    }
}
