using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class KitapDetay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["kitapId"];
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection conn = new SqlConnection(connStr);

        string sorgu = "Select * from  Kitaplar Where ID=@id";
        SqlCommand cmd = new SqlCommand(sorgu, conn);
        cmd.Parameters.AddWithValue("@id",id);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Image1.ImageUrl = dr["KitapResim"].ToString();
            LabelAd.Text = dr["KitapAdı"].ToString();
            Labelacıklama.Text = dr["KitapDetay"].ToString();
            Labelfiyat.Text = dr["KitapFiyat"].ToString()+" TL";
            Labelyazar.Text = dr["KitapYazar"].ToString();
            LabelId.Text = dr["Id"].ToString();
          //  LabelKategori.Text = dr["KitapKategori"].ToString();
        }
       Session["UrunFiyat"]=dr["KitapFiyat"].ToString();
        conn.Close();
    }


    int  i = 0;

    protected void SepeteEkle1_Click(object sender, EventArgs e)
    {
       
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        i = Convert.ToInt32(UrunSayisi.Text) + 1;
        UrunSayisi.Text = string.Format("{0}", i.ToString());
        Session["sepetDurum"] = i;
        Session["SepetUrunId"] = LabelId.Text.ToString();
        Session["UrunAd"] = LabelAd.Text.ToString();
    }
}