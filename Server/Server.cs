using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace Server
{
 public  class Server
    {
        Socket socket;

        public bool pokreniServer()
        {
            try
            {
                socket = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp);
                IPEndPoint ep = new IPEndPoint(IPAddress.Any, 20000);
                socket.Bind(ep);
                ThreadStart ts = oslukuj;
                new Thread(ts).Start();
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }

        private void oslukuj()
        {
            try
            {
                while (true)
                {
                    socket.Listen(9);
                    Socket klijent = socket.Accept();
                    NetworkStream tok = new NetworkStream(klijent);
                    new NitKlijenta(tok);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
