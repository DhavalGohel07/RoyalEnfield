using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Policy;
using System.Security.Cryptography;
using System.Xml.Linq;

namespace RoyalEnfield
{
    public partial class booking : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        String bid;
        String b_model;
        String b_price;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("details.aspx");
            }
            else
            {
                con.ConnectionString = "Data source=DhavalGohel\\SQLEXPRESS01; initial catalog=RoyalEnfield;integrated Security=true";
                con.Open();
                con.Close();
                bid = Request.QueryString["id"];
               
            }

          
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
        protected void book_now(object sender, EventArgs e)
        {

           
            String payment_name = "";
            if (Cash.Checked)
            {
                payment_name = Cash.Text;
            }
            else if (Credit.Checked)
            {
                payment_name = Credit.Text;
            }

            //con.Open();

            String em = Session["email"].ToString();
            SqlDataReader reader = cmd.ExecuteReader();
            //cmd = new SqlCommand("SELECT * FROM user_info where email= '" + em + "'", con);
            //while (reader.Read())
            //{
            //    hid = reader.GetInt32(0).ToString();
            //}
            //reader.Close();
            //con.Close();


            con.Open();
 
            cmd = new SqlCommand("SELECT * FROM bike_Details where id= '" + bid + "'", con);
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                b_model = reader.GetString(2);
                b_price = reader.GetString(3);

            }
            reader.Close();
            con.Close();



            con.Open();
            cmd = new SqlCommand("insert into Bike_booking" + "(first_name,last_name,email,phone,add_line1,add_line2,nearest_place,area,city,state,zip_code,country,book_date,special_req,payment,model_name,bike_price)values(@first_name,@last_name,@email,@phone,@add_line1,@add_line2,@nearest_place,@area,@city,@state,@zip_code,@country,@book_date,@special_req,@payment,@model_name,@bike_price)", con);
            cmd.Parameters.AddWithValue("@first_name", b_first_name.Text);
            cmd.Parameters.AddWithValue("@last_name", b_last_name.Text);
            cmd.Parameters.AddWithValue("@email", b_email.Text);
            cmd.Parameters.AddWithValue("@phone", b_phone.Text);
            cmd.Parameters.AddWithValue("@add_line1", b_Addline1.Text);
            cmd.Parameters.AddWithValue("@add_line2", b_Addline2.Text);
            cmd.Parameters.AddWithValue("@nearest_place", b_nearplace.Text);
            cmd.Parameters.AddWithValue("@area", b_area.Text);
            cmd.Parameters.AddWithValue("@city", b_city.Text);
            cmd.Parameters.AddWithValue("@state", b_state.Text);
            cmd.Parameters.AddWithValue("@zip_code", b_zipcode.Text);
            cmd.Parameters.AddWithValue("@country", b_country.Text);
            cmd.Parameters.AddWithValue("@book_date", b_date.Text);
            cmd.Parameters.AddWithValue("@special_req", b_special_req.Text);
            cmd.Parameters.AddWithValue("@payment", payment_name);
            cmd.Parameters.AddWithValue("@model_name", b_model);
            cmd.Parameters.AddWithValue("@bike_price", b_price);
            cmd.ExecuteNonQuery();
            Response.Redirect("detail.aspx");
        
            con.Close();
        }
    }
}