using Domen;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Server
{
  public  class Broker
    {
        SqlConnection konekacija;
        SqlTransaction transakcija;
        SqlCommand komanda;
        Broker()
        {
            konekacija = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Februar2021;Integrated Security=True;");
            komanda = konekacija.CreateCommand();
        }

        static Broker instanca;
        public static Broker dajSesiju()
        {
            if (instanca == null) instanca = new Broker();
            return instanca;
        }

        public List<Opstina> vratiOpstine()
        {
            List<Opstina> lista = new List<Opstina>();
            try
            {
                konekacija.Open();
                komanda.CommandText = "Select * from Opstina";
                SqlDataReader citac = komanda.ExecuteReader();
                while (citac.Read())
                {
                    Opstina o = new Opstina();
                    o.IdOpstina = citac.GetInt32(0);
                    o.PttBroj = citac.GetInt32(1);
                    o.Naziv = citac.GetString(2);
                    lista.Add(o);

                }
                citac.Close();
                return lista;

            }
            catch (Exception)
            {

                return null;
            }
            finally { if (konekacija != null) konekacija.Close(); }
        }

        public int idPrijave()
        {
            try
            {
                try
                {
                    komanda.CommandText = "Select max(PrijavaID) from Prijava";
                    return (int)komanda.ExecuteScalar() + 1;
                }
                catch (Exception)
                {

                    return 1;
                }
            }
            catch (Exception)
            {

                throw;
            }
        }



        public bool sacuvaj(Prijava p)
        {
           
            try
            {
                konekacija.Open();
                transakcija = konekacija.BeginTransaction();
                komanda = new SqlCommand("", konekacija, transakcija);
                p.IdPrijava = idPrijave();
                komanda.CommandText = "SET IDENTITY_INSERT Prijava ON Insert into Prijava(PrijavaId,Drzavljanstvo,JMBG,Ime,Prezime,ElektronskaPosta,MobilniTelefon,SpecificnaOboljenja,DatumPrijave,OpstinaID) values("+p.IdPrijava+", '"+p.Drzavljanstvo+ "','" + p.Jmbg + "', '" + p.Ime + "','" + p.Prezime + "', '" + p.ElektronskaPosta + "', '" + p.MobilniTelefon + "', '" + p.SpecificnaOboljenja + "', cast('" + p.DatumPrijave.ToString("yyyy-MM-dd HH:mm") + "' as date), "+p.Opstina.IdOpstina+ ") SET IDENTITY_INSERT Prijava OFF";
                komanda.ExecuteNonQuery();

                foreach(StavkaPrijave s in p.ListaStavki)
                {
                    komanda.CommandText = "Insert into StavkaPrijave(PrijavaID,RB,TipVakcine) values(" + p.IdPrijava+", "+s.Rb+",'"+s.TipVakcije+"')";
                    komanda.ExecuteNonQuery();
                }

                transakcija.Commit();
                return true;
            }
            catch (Exception prio)
            {
                System.Windows.Forms.MessageBox.Show(prio.Message);
                transakcija.Rollback();
                return false;
            }
            finally { if (konekacija != null) konekacija.Close(); }
        }


        public List<KlasaZaServer> vratiPrijaveZaServer()
        {
            List<KlasaZaServer> lista = new List<KlasaZaServer>();
            try
            {
                konekacija.Open();
                komanda.CommandText = "Select * from Prijava p join Opstina o on p.OpstinaId=o.Opstinaid";
                SqlDataReader citac = komanda.ExecuteReader();
                while (citac.Read())
                {
                    KlasaZaServer k = new KlasaZaServer();
                    k.ImePrezime = citac.GetString(3) +" "+ citac.GetString(4);
                    k.Jmbg = citac.GetString(2);
                    k.Drzavljanstvo = citac.GetString(1);
                    k.Opstina = new Opstina();
                    k.Opstina.Naziv = citac.GetString(12);
                    k.ElPosta = citac.GetString(5);
                    k.Mobilni = citac.GetString(6);
                    k.SpecificnaOboljenja = citac.GetBoolean(7);
                    lista.Add(k);
                }
                citac.Close();
                return lista;
                    
                    }
            catch (Exception)
            {

                return null;
            }
            finally { if (konekacija != null) konekacija.Close(); }
        }

        public bool obrisi(Prijava p)
        {
            try
            {
                konekacija.Open();
                transakcija = konekacija.BeginTransaction();
                komanda = new SqlCommand("", konekacija, transakcija);
                komanda.CommandText = "Delete from Prijava where JMBG='"+p.Jmbg+"'";
                komanda.ExecuteNonQuery();
                foreach(StavkaPrijave s in p.ListaStavki)
                {
                    komanda.CommandText = "Delete from StavkaPrijave where JMBG='" + p.Jmbg + "'";
                    komanda.ExecuteNonQuery();
                }
                transakcija.Commit();
                return true;
            }
            catch (Exception del)
            {
                System.Windows.Forms.MessageBox.Show(del.Message);
                transakcija.Rollback();
                return false;
            }
            finally { if (konekacija != null) konekacija.Close(); }
        }

    }
}
