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
public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sepetDurum"]==null)
        {
            UrunSayisi.Visible = false;
            SepetimLink.Visible = false;
        }
        else
            UrunSayisi.Text = " ( "+Session["sepetDurum"].ToString() + " ) ";
        
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection conn = new SqlConnection(connStr);

        string sorgu = "Select * from  Kategoriler";
        SqlCommand cmd = new SqlCommand(sorgu, conn);
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        ListView1.DataSource = dr;
        ListView1.DataBind();
        if (dr.Read())
        {
            Session["kattid"]= dr["KitapKategori"].ToString();
        }
        conn.Close();
        if (Session["Eposta"]==null)
        {
            Label2.Text = "";
            Panel2.Visible = false;
        }
        else
        {
            Label2.Text = Session["Eposta"].ToString();
            Panel1.Visible = false;
           
        }
      
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Panel1.Visible = true;
        Session["Eposta"] = null;
        Panel2.Visible = false;
       
        Response.Redirect("UyeGiris.aspx");


     
    }
}

