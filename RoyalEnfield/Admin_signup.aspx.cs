﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalEnfield
{
    public partial class admin_signup : System.Web.UI.Page
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

        protected void admin_register(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("insert into adminInfo" + "(username,email,password)values(@name,@email,@pass)", con);
            cmd.Parameters.AddWithValue("@name", adminuser.Text);
            cmd.Parameters.AddWithValue("@email", adminemail.Text);
            cmd.Parameters.AddWithValue("@pass", adminpass.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("Admin_signin.aspx");
        }
    }
}