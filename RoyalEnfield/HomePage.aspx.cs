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
    public partial class HomePage : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

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

            con.ConnectionString = "Data source=DhavalGohel\\SQLEXPRESS01; initial catalog=RoyalEnfield;integrated Security=true";
            con.Open();

            
        }

        protected void button_Message(object sender, EventArgs e)
        {

            Session["email"] = email_contact.Text;

            SqlCommand cmd = new SqlCommand("insert into contact" + "(name,email,subject,message)values(@name,@email,@sub,@mes)", con);
            cmd.Parameters.AddWithValue("@name", user_contact.Text);
            cmd.Parameters.AddWithValue("@email", email_contact.Text);
            cmd.Parameters.AddWithValue("@sub", subject_contact.Text);
            cmd.Parameters.AddWithValue("@mes", message_contact.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("HomePage.aspx");
        }
        }
    }