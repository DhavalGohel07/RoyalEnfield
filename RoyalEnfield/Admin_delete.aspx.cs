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
    public partial class delete : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            String id = Request.QueryString["id"];
            if (id == null)
            {
                Response.Redirect("add_bike.aspx");
            }
            else
            {
                con.ConnectionString = "Data source=DhavalGohel\\SQLEXPRESS01; initial catalog=RoyalEnfield;integrated Security=true";
                con.Open();
                cmd = new SqlCommand("Delete From bike_Details where id=@id", con);

                //int iid = Convert.ToInt32(id);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("add_bike.aspx");

            }
        }
    }
}