using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalEnfield
{
    public partial class admin_table : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=DhavalGohel\\SQLEXPRESS01; initial catalog=RoyalEnfield;integrated Security=true";
            con.Open();

            String query2 = "select * from adminInfo";
            SqlDataAdapter sda2 = new SqlDataAdapter(query2, con);
            DataTable data2 = new DataTable();
            sda2.Fill(data2);
            UserView2.DataSource = data2;
            UserView2.DataBind();
        }
    }
}