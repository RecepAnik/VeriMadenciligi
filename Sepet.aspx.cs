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
using System.Net;
using System.Net.Mail;

public partial class Sepet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          Double fiyat;
        
              Panel1.Visible = false;
                
        
        TextBox1.Text = Session["SepetUrunId"].ToString();
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection conn = new SqlConnection(connStr);
        LabelId.Text = Session["SepetUrunId"].ToString();
        LabelAdı.Text = Session["UrunAd"].ToString();
        LabelAdet.Text = Session["sepetDurum"].ToString();
        LabelFiyat.Text = Session["UrunFiyat"].ToString() + " TL";
        double a = Convert.ToDouble(Session["UrunFiyat"]);
        int b = Convert.ToInt32(Session["sepetDurum"]);
        LabelToplam.Text = (a * b).ToString() + " TL";
         LabelToplam.Text = (a * b).ToString() + " TL";
        if (Session["Eposta"] == null)
        {
            
        }
        else
        {
            LabelAdı0.Text = Session["UrunAd"].ToString();
            LabelAdet0.Text = Session["sepetDurum"].ToString();
            TextBoxAdres.Text = Session["Adres"].ToString();
            TextBoxMeslek.Text = Session["Meslek"].ToString();
          
           
            LabelToplam0.Text = (a * b).ToString() + " TL";
            fiyat = (a * b);
            Session["asdd"] = fiyat;
        }
        }
        
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["Eposta"] == null)
        {
            Labelhata.Text = "Üye Girişi Yapmalısınız!";
            Panel1.Visible = false;
          
        }
        else
        {
            Panel1.Visible = true;
       

        }
    }
    protected void ButtonSatınAl_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true ;
         if (CheckBox1.Checked)
            {

                string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                string sorgu = "INSERT INTO SiparisDetay (UrunId,Adet,Fiyat,KullanıcıId,OdemeTip,Onay,Siparis_Tarihi,Adres) VALUES (@UrunId,@Adet,@Fiyat,@KullanıcıId,@OdemeTip,@Onay,@Siparis_Tarihi,@Adres)";

                SqlCommand cmd = new SqlCommand(sorgu, conn);


                cmd.Parameters.AddWithValue("@UrunId", LabelId.Text);
                cmd.Parameters.AddWithValue("@Adet", LabelAdet0.Text);
                cmd.Parameters.AddWithValue("@Fiyat", Session["asdd"]);
                cmd.Parameters.AddWithValue("@KullanıcıId", Session["KullanıcıId"]);
                cmd.Parameters.AddWithValue("@OdemeTip", RadioButtonList2.SelectedValue);
                //   cmd.Parameters.AddWithValue("@CepTelefonu", TextBoxCepTel.Text);
           
                cmd.Parameters.AddWithValue("@Siparis_Tarihi", DateTime.Now);
                cmd.Parameters.AddWithValue("@Adres", TextBoxAdres.Text);
              
                    if (CheckBox1.Checked)
	{
        cmd.Parameters.AddWithValue("@Onay", true);
	}
                    else
                    {
                        cmd.Parameters.AddWithValue("@Onay", false);
                    }
                    ;


                if (conn.State == ConnectionState.Closed)
                    conn.Open();

                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    NetworkCredential hesapBilgileri = new NetworkCredential();
                    hesapBilgileri.UserName = "blpkitapkurdu@gmail.com";
                    hesapBilgileri.Password = "  ";

                    SmtpClient smtp = new SmtpClient();
                    //smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                    smtp.EnableSsl = true;
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = hesapBilgileri;


                    MailMessage mesaj = new MailMessage();
                    mesaj.From = new MailAddress("blpkitapkurdu@gmail.com", "kitapkurdu.com");
                    mesaj.To.Add(new MailAddress(Session["Eposta"].ToString()));
                  
                    mesaj.Subject = "Kitapkurdu.com Siparis Özeti";
                    mesaj.Body = "Sayın: " + Session["Eposta"].ToString() + "\n" + "Satın Alınan Ürün: " + Session["UrunAd"].ToString() + "\n" + "Adet:" + Session["sepetDurum"].ToString() + "\n" + "Tutar:" + Session["asdd"].ToString()+"TL";
                    if (FileUpload1.HasFile)
                    {
                        Attachment a = new Attachment(FileUpload1.FileContent, FileUpload1.FileName);
                        mesaj.Attachments.Add(a);
                    }
                    mesaj.Priority = MailPriority.High;

                    smtp.Send(mesaj);

                    Response.Write("<script>alert('Alışverişiniz Başarıyla Tamamlandı..Detaylı Bilgi Mailinize Gönderildi..')</script>");


                //    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Başlık", "<script>alert('Satın Alma İşlemi Başarıyla Gerçekleşti');</script>");


                                  
                }
                conn.Close();
               

            }
            else
            {
                Label3.Text = "Lütfen Onaylayınız..";

            }
        }
    
}
    
