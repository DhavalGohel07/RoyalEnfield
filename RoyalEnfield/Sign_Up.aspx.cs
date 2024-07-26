using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalEnfield
{ 
    public partial class Sign_Up : System.Web.UI.Page
    { 

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=DhavalGohel\\SQLEXPRESS01; initial catalog=RoyalEnfield;integrated Security=true";
            con.Open();
        } 

        protected void button_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("insert into user_info" + "(name,email,phone,password)values(@name,@email,@ph,@pass)", con);
            cmd.Parameters.AddWithValue("@name", user_signup.Text);
            cmd.Parameters.AddWithValue("@email", email_signup.Text);
            cmd.Parameters.AddWithValue("@ph", phone_signup.Text);
            cmd.Parameters.AddWithValue("@pass", password_signup.Text);
            cmd.ExecuteNonQuery();
            Session["log"] = "true"; 
            Response.Redirect("HomePage.aspx");

        }

        protected void button_signin(object sender, EventArgs e)
        {
            Session["email"] = email_signin.Text;

            cmd.CommandText = "Select * from user_info where email='" + email_signin.Text + "' and password='" + pass_signin.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "user_info");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["log"] = "true";
                Response.Redirect("HomePage.aspx");
            }
            
        }
    }
}