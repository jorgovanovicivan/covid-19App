using Domen;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Server
{
    class NitKlijenta
    {
        private NetworkStream tok;
        BinaryFormatter formatter;
        public NitKlijenta(NetworkStream tok)
        {
            this.tok = tok;
            formatter = new BinaryFormatter();
            ThreadStart ts = obradi;
            new Thread(ts).Start();
        }

        private void obradi()
        {
            try
            {
                int operacija = 0;
                while (operacija != (int)Operacije.Kraj)
                {
                    TransferKlasa transfer = formatter.Deserialize(tok) as TransferKlasa;
                    switch (transfer.Operacija)
                    {

                        case Operacije.VratiOpstine:
                            transfer.Rezultat = Broker.dajSesiju().vratiOpstine();
                            formatter.Serialize(tok, transfer);

                            break;

                        case Operacije.Sacuvaj:
                            transfer.Rezultat = Broker.dajSesiju().sacuvaj(transfer.TransferObjekat as Prijava);
                            formatter.Serialize(tok, transfer);

                            break;
                        case Operacije.Kraj:
                            operacija = 1;
                            break;
                        default:
                            break;
                    }
                }

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
