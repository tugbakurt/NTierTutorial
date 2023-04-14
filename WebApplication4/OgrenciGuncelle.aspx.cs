using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EntityLayer;
using DataAccessLayer;
using BusinessLogicLayer;


namespace WebApplication4
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int x =Convert.ToInt32(Request.QueryString["ogrid"].ToString());
            txtid.Text = x.ToString();
            txtid.Enabled= false;

            if (Page.IsPostBack==false)
            {


            List<EntityOgrenci> ogrList = BLLOgrenci.BLLDetay(x);
            txtad.Text = ogrList[0].Ad.ToString();
            txtsoyad.Text = ogrList[0].Soyad.ToString();
            txtnumara.Text = ogrList[0].Numara.ToString();
            txtfoto.Text = ogrList[0].Fotograf.ToString();
            txtsifre.Text = ogrList[0].Sifre.ToString();

        }

            }
        protected void Button1_Click(object sender, EventArgs e)
        {
            EntityOgrenci ent = new EntityOgrenci();
            ent.Ad=txtad.Text;
            ent.Soyad=txtsoyad.Text;
            ent.Numara=txtnumara.Text;
            ent.Fotograf=txtfoto.Text;
            ent.Sifre=txtsifre.Text;
            ent.Id =Convert.ToInt32 (txtid.Text);
            BLLOgrenci.OgrenciGuncelleBLL(ent);
            Response.Redirect("OgrenciListesi.aspx");
        }
    }
}