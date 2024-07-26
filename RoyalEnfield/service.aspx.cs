using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace RoyalEnfield
{
    public partial class service : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=DhavalGohel\\SQLEXPRESS01; initial catalog=RoyalEnfield;integrated Security=true";
            con.Open();

            var ses = Session["log"];
            if (ses != null)
            {
                object sessionValue = Session["log"];
                if (sessionValue == "true")
                {

                }
            }
            else
            {

                Response.Redirect("Sign_Up.aspx");
            }
            String em = Session["email"].ToString();
            user_name.Text = em;
        }
        protected void service_book(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into service" + "(Firstname,Lastname,Email,Phone,Model,company,date,time,discription)values(@name1,@name2,@name3,@name4,@name5,@name6,@name7,@name8,@name9)", con);
            cmd.Parameters.AddWithValue("@name1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@name2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@name3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@name4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@name5", TextBox5.Text);
            cmd.Parameters.AddWithValue("@name6", TextBox6.Text);
            cmd.Parameters.AddWithValue("@name7", TextBox7.Text);
            cmd.Parameters.AddWithValue("@name8", TextBox8.Text);
            cmd.Parameters.AddWithValue("@name9", TextBox9.Text);
            cmd.ExecuteNonQuery();
            // Response.Redirect("/about.aspx");
        }
    }
}