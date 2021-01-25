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
public partial class UyeSayfası : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
       
        AdminPanel.Visible = false;
        Panel1.Visible = false;
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection conn = new SqlConnection(connStr);
        string sorgu = "SELECT * FROM Kullanıcılar WHERE Eposta=@Eposta";
        SqlCommand cmd = new SqlCommand(sorgu, conn);
        cmd.Parameters.AddWithValue("@Eposta", Session["Eposta"]);
   
                conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Session["KulID"] = dr["KullanıcıId"];
            Image1.ImageUrl = dr["ProfilResmi"].ToString(); 
            LabelAd.Text = dr["AdSoyad"].ToString();
            Labelcins.Text = dr["Cinsiyet"].ToString();
            LabelSehir.Text = dr["Sehir"].ToString();
            Labelposta.Text = dr["Eposta"].ToString();
        LabelMeslek.Text=   dr["Eposta"].ToString();
            LabelAdres.Text = dr["Adres"].ToString();
            Labelkayıttarihi.Text =Convert.ToDateTime( dr["KayıtTarihi"]).ToShortDateString();
            Labelyas.Text = dr["Yaş"].ToString();
            Label1.Text = dr["Yönetici"].ToString();
        }

        Session["Adres"] = dr["Adres"].ToString();
        Session["Meslek"] = dr["Meslek"].ToString();


        if (Label1.Text == "True")
        {
            AdminPanel.Visible = true;
        }
        else
        {
           
        }
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (CheckBox1.Checked)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            string sorgu1 = "INSERT INTO Kitaplar (KitapAdı,KitapDetay,KitapYazar,KitapResim,KitapFiyat,KitapKategori) VALUES (@KitapAdı,@KitapDetay,@KitapYazar,@KitapResim,@KitapFiyat,@KitapKategori)";

            SqlCommand cmd = new SqlCommand(sorgu1, conn);
            cmd.Parameters.AddWithValue("@KitapAdı", TextBox1.Text);
            cmd.Parameters.AddWithValue("@KitapDetay", TextBox3.Text);
            cmd.Parameters.AddWithValue("@KitapYazar", TextBox2.Text);
            cmd.Parameters.AddWithValue("@KitapFiyat", TextBox4.Text);
            cmd.Parameters.AddWithValue("@KitapKategori", DropDownList1.SelectedValue);


            if (FileUpload1.HasFile)
            {
                cmd.Parameters.AddWithValue("@KitapResim", "~/images/" + FileUpload1.FileName);
            }
            else
            {
                cmd.Parameters.AddWithValue("@KitapResim", "~/images/null.jpg");
            }
            if (conn.State == ConnectionState.Closed)
                conn.Open();

            int i = cmd.ExecuteNonQuery();
            if (i ==1)
            {
                if (FileUpload1.HasFile)
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + FileUpload1.FileName));
                Label2.Text = "Ürün Başarıyla Yayınlandı..";
                TextBox1.Text = "";
                TextBox3.Text = "";
                TextBox2.Text = "";
                TextBox4.Text = "";
            }
            else
                Label2.Text = "Kayıt esnasında Hata!";

            conn.Close();
        }
        else
        {
            Label2.Text = "Onaylamadınız..";
        }
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection conn = new SqlConnection(connStr);
        string sorgu1 = "DELETE FROM Kitaplar WHERE Id = @Id";

        SqlCommand cmd = new SqlCommand(sorgu1, conn);
        cmd.Parameters.AddWithValue("@Id", TextBox5.Text);
        if (TextBox5.Text=="")
        {
            Label3.Text = "Ürün Silme esnasında hata oluştu!";
        }
        else
        {
            try
            {
                //Bağlantımı açıyorum, komutumu çalıştırıyorum.
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Label3.Text = TextBox5.Text + " ID'li Ürün Başarılıyla Silindi..";
                TextBox5.Text = "";
            }
            catch
            {
                //Hata meydana gelirse yazdırılacak mesaj.
                Label3.Text = "Kişi Silme esnasında hata oluştu!";
            }
        }
       
     
      


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile)
            FileUpload2.SaveAs(Server.MapPath("~/images/Slider/" + "1.jpg"));
        Label4.Text = " İŞLEM BAŞARILI";

        if (FileUpload3.HasFile)
            FileUpload3.SaveAs(Server.MapPath("~/images/Slider/" + "2.jpg"));
        Label4.Text = " İŞLEM BAŞARILI";
        if (FileUpload4.HasFile)
            FileUpload4.SaveAs(Server.MapPath("~/images/Slider/" + "3.jpg"));
        Label4.Text = " İŞLEM BAŞARILI";

        if (FileUpload5.HasFile)
            FileUpload5.SaveAs(Server.MapPath("~/images/Slider/" + "4.jpg"));
        Label4.Text = " İŞLEM BAŞARILI";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        
    }
}