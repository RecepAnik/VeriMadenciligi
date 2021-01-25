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
public partial class UyeKayıt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonKayitOl_Click(object sender, EventArgs e)
    {
        try
        {
            if (CheckBoxSozlesme.Checked)
            {
                string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                string sorgu = "INSERT INTO Kullanıcılar (AdSoyad,Eposta,Sifre,Yaş,Cinsiyet,Sehir,KayıtTarihi,Yönetici,ProfilResmi,Meslek,Adres) VALUES (@AdSoyad,@Eposta,@Sifre,@Yaş,@Cinsiyet,@Sehir,@KayıtTarihi,@Yönetici,@ProfilResmi,@Meslek,@Adres)";

                SqlCommand cmd = new SqlCommand(sorgu, conn);


                cmd.Parameters.AddWithValue("@AdSoyad", TextBoxAd.Text);
                cmd.Parameters.AddWithValue("@Eposta", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Sifre", TextBoxSifreTekrar.Text);
                cmd.Parameters.AddWithValue("@Yaş", TextBoxYas.Text);
                cmd.Parameters.AddWithValue("@Cinsiyet", RadioButtonListCinsiyet.SelectedValue);
                //   cmd.Parameters.AddWithValue("@CepTelefonu", TextBoxCepTel.Text);
                cmd.Parameters.AddWithValue("@Sehir", DropDownListSehir.SelectedValue);
                cmd.Parameters.AddWithValue("@KayıtTarihi", DateTime.Now);
                cmd.Parameters.AddWithValue("@Yönetici", "0");

                if (FileUploadProfil.HasFile)
                {
                    cmd.Parameters.AddWithValue("@ProfilResmi", "~/images/UserImages/" + FileUploadProfil.FileName);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@ProfilResmi", "~/images/null.jpg");
                }
                cmd.Parameters.AddWithValue("@Adres", TextBoxAdres.Text);
                cmd.Parameters.AddWithValue("@Meslek", TextBoxMeslek.Text);
                if (conn.State == ConnectionState.Closed)
                    conn.Open();

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    if (FileUploadProfil.HasFile)
                        FileUploadProfil.SaveAs(Server.MapPath("~/images/UserImages/" + FileUploadProfil.FileName));
                    LabelSonuc.Text = "Üye Kaydı Tamamlandı";

                    TextBoxAd.Text="";
            TextBox1.Text="";
             TextBox2.Text="";
                TextBoxYas.Text="";
                    
                }
                else
                    LabelSonuc.Text = "Kayıt esnasında Hata!";

                conn.Close();
            }
            else
            {
                LabelSonuc.Text = "Kayıt için üyelik sözleşmesini onaylamalısınız";

            }
        }
        catch (Exception)
        {

            LabelSonuc.Text = "Kayıt esnasında Hata!";
        }
        

       
        
    }
}