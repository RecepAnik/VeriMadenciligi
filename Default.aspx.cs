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
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string connStr = WebConfigurationManager.ConnectionStrings["MyConnStr"].ConnectionString;
        SqlConnection conn = new SqlConnection(connStr);

        string sorgu = "Select top 20 * from  Kitaplar ORDER BY Id DESC";
        SqlCommand cmd = new SqlCommand(sorgu, conn);
      
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
       
        ListView1.DataSource = dr;
        ListView1.DataBind();

       
        conn.Close();

        
        
        }
}