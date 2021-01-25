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
public partial class UyeGiris : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
  
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            string sorgu = "SELECT * FROM Kullanıcılar WHERE Eposta=@Eposta and Sifre=@Sifre";
            SqlCommand cmd = new SqlCommand(sorgu, conn);
            cmd.Parameters.AddWithValue("@Eposta", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Sifre", TextBox2.Text);
            conn.Open();
            int i = (int)cmd.ExecuteScalar();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["KullanıcıId"] = dr["KullanıcıId"].ToString();
               
            }
            
            
            conn.Close();

            if (i <= 0)
            {

                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "E-Mail veya Şifre Yanlış";

            }
            else
            {
                Session["Eposta"] = TextBox1.Text; ;
                Response.Redirect("UyeSayfası.aspx");
            }
        }
        catch (Exception)
        {

            Label1.Text = "E-Mail veya Şifre Yanlış";
        }

       
    }
}