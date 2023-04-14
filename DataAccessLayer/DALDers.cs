using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using EntityLayer;


namespace DataAccessLayer
{
   public  class DALDers
    {
        public static List<EntityDersler> DersListesi()
        {
            List<EntityDersler> degerler = new List<EntityDersler>();
            SqlCommand komut2 = new SqlCommand("select * from Tbl_Dersler", Baglanti.bgl);
            if (komut2.Connection.State != ConnectionState.Open)
            {
                komut2.Connection.Open();
            }
            SqlDataReader dr = komut2.ExecuteReader();
            while (dr.Read())
            {
                EntityDersler ent = new EntityDersler();
                ent.Id = Convert.ToInt32(dr["dersid"].ToString());
                ent.Dersad = dr["dersad"].ToString();
                ent.Min= int.Parse(dr["dersminkontenjan"].ToString());
                ent.Max= int.Parse(dr["dersmaxkontenjan"].ToString());
                degerler.Add(ent);

            }
            dr.Close();
            return degerler;
        }

        public static int TalepEkle(EntityBasvuruForm parametre)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_BasvuruForm (ogrenciid,dersid) values (@p1,@p2)0",Baglanti.bgl);
            komut.Parameters.AddWithValue("@p1", parametre.Basogrid);
            komut.Parameters.AddWithValue("@p2", parametre.Basdersid);
            if (komut.Connection.State != ConnectionState.Open)
            {
                komut.Connection.Open();
            }
            return komut.ExecuteNonQuery(); 
        }

    }
}
