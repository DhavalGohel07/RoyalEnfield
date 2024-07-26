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
    public partial class Bike_update : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string id;


        protected void Page_Load(object sender, EventArgs e)
        {



            if (Request.QueryString["uid"] == null || Request.QueryString["uid"].Length == 0)
            {
                Response.Redirect("Addbike.aspx");
            }
            else
            {
                id = Request.QueryString["uid"];

            }


        }

        protected void retrive_data(object sender, EventArgs e)
        {
            getData(Request.QueryString["uid"]);

        }


        public void getData(string id)
        {
            con.ConnectionString = "Data source=DhavalGohel\\SQLEXPRESS01; initial catalog=RoyalEnfield;integrated Security=true";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM bike_Details where id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                TextBox1.Text = reader.GetString(1);
                TextBox2.Text = reader.GetString(2);
                TextBox3.Text = reader.GetString(3);
                TextBox4.Text = reader.GetString(4);
                TextBox5.Text = reader.GetString(5);
                TextBox6.Text = reader.GetString(6);
                TextBox7.Text = reader.GetString(7);
                TextBox8.Text = reader.GetString(8);
                TextBox9.Text = reader.GetString(9);

            }
            con.Close();
            reader.Close();
        }



        public void update_data(object sender, EventArgs e)
        {
            id = Request.QueryString["uid"];
            con.ConnectionString = "Data source=DhavalGohel\\SQLEXPRESS01; initial catalog=RoyalEnfield;integrated Security=true";
            string query = "UPDATE bike_Details SET " +
    "bike_name=@dname1, bike_model=@dname2, bike_price=@dname3, bike_engine=@dname4, bike_power=@dname5, bike_milege=@dname6, bike_torque=@dname7 , bike_tyre=@dname8 , bike_about=@dname9 " +
    "WHERE id=@id";

            // Create a new SqlCommand object
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@dname1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@dname2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@dname3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@dname4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@dname5", TextBox5.Text);
            cmd.Parameters.AddWithValue("@dname6", TextBox6.Text);
            cmd.Parameters.AddWithValue("@dname7", TextBox7.Text);
            cmd.Parameters.AddWithValue("@dname8", TextBox8.Text);
            cmd.Parameters.AddWithValue("@dname9", TextBox9.Text);
            cmd.Parameters.AddWithValue("@id", id);

            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Addbike.aspx");
            // Execute the update query

        }
    }
}