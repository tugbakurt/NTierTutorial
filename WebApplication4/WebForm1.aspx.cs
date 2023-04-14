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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EntityOgrenci ent = new EntityOgrenci();
            ent.Ad = txtad.Text;
            ent.Soyad = txtsoyad.Text;
            ent.Numara = txtnumara.Text;
            ent.Sifre = txtsifre.Text;
            ent.Fotograf = txtfoto.Text;
            BLLOgrenci.OgrenciEkleBLL(ent);
        }
    }
}