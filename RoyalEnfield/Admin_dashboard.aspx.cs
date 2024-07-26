using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Xml.Linq;

namespace RoyalEnfield
{
    public partial class admin_dashboard : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        int len;
        int i = 0;
        byte[] bytes1;

        public string[] b_id { get; set; }
        public string[] b_fname { get; set; }
        public string[] b_lname { get; set; }
        public string[] b_email { get; set; }
        public string[] b_phone { get; set; }
        public string[] b_city { get; set; }
        public string[] b_state { get; set; }
        public string[] b_zipcode { get; set; }
        public string[] b_country { get; set; }
        public string[] b_payment { get; set; }
        public string[] b_modelname { get; set; }
        public string[] b_price { get; set; }

       
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=DhavalGohel\\SQLEXPRESS01; initial catalog=RoyalEnfield;integrated Security=true";
            con.Open();
            con.Close();
            retdata();

            //String query2 = "select * from Bike_booking";
            //SqlDataAdapter sda2 = new SqlDataAdapter(query2, con);
            //DataTable data2 = new DataTable();
            //sda2.Fill(data2);
            //UserView2.DataSource = data2;
            //UserView2.DataBind();

        }
        public void retdata()
        {
            datacount();

            b_id = new string[len];
            b_fname = new string[len];
            b_lname = new string[len];
            b_email = new string[len];
            b_phone = new string[len];
            b_city = new string[len];
            b_state = new string[len];
            b_zipcode = new string[len];
            b_country = new string[len];
            b_payment = new string[len];
            b_modelname = new string[len];
            b_price = new string[len];
          

            con.Open();


            cmd = new SqlCommand("SELECT * FROM Bike_booking", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {


                String bid = reader.GetInt32(0).ToString();
                String bfname = reader.GetString(1);
                String blname = reader.GetString(2);
                String bemail = reader.GetString(3);
                String bphone = reader.GetString(4);
                String bcity = reader.GetString(9);
                String bstate = reader.GetString(10);
                String bzipcode = reader.GetString(11);
                String bcountry = reader.GetString(12);
                String bpayment = reader.GetString(15);
                String bmodelname = reader.GetString(16);
                String bprice = reader.GetString(17);


                b_id.SetValue(bid, i);
                b_fname.SetValue(bfname, i);
                b_lname.SetValue(blname, i);
                b_email.SetValue(bemail, i);
                b_phone.SetValue(bphone, i);
                b_city.SetValue(bcity, i);
                b_state.SetValue(bstate, i);
                b_zipcode.SetValue(bzipcode, i);
                b_country.SetValue(bcountry, i);
                b_payment.SetValue(bpayment, i);
                b_modelname.SetValue(bmodelname, i);
                b_price.SetValue(bprice, i);
                i++;

            }
            con.Close();
        }

        public void datacount()
        {

            String connectionString = "Data source=DhavalGohel\\SQLEXPRESS01; initial catalog=RoyalEnfield;integrated Security=true";


            String query = "select count(*) from Bike_booking";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                len = (int)command.ExecuteScalar();
                Console.WriteLine(len);

                connection.Close();
            }
        }
    }
}