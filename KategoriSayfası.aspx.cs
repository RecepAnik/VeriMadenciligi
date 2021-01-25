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

public partial class KategoriSayfası : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
        string katid = Request.QueryString["KitapId"];
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection conn = new SqlConnection(connStr);


        string sorgu = "Select * from  Kitaplar Where KitapKategori=@KitapKategori1";
        SqlCommand cmd1 = new SqlCommand(sorgu, conn);
        cmd1.Parameters.AddWithValue("@KitapKategori1", katid);
        conn.Open();
        SqlDataReader dr = cmd1.ExecuteReader();
        ListView1.DataSource = dr;
        ListView1.DataBind();
       


       

        conn.Close();
    }
}