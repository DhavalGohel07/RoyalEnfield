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
    public partial class detail : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        int len;
        int i = 0;
        byte[] bytes1;

        public string[] bid { get; set; }
        public string[] bname { get; set; }
        public string[] bmodel { get; set; }
        public string[] bprice { get; set; }
        public string[] bengine { get; set; }
        public string[] bpower{ get; set; }
        public string[] bmilege { get; set; }
        public string[] btorque { get; set; }
        public string[] btyre { get; set; }
        public string[] babout { get; set; }
        public string[] bimage { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=DhavalGohel\\SQLEXPRESS01; initial catalog=RoyalEnfield;integrated Security=true";
            con.Open();
            con.Close();
            retdata();

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
        public void retdata()
        {


            datacount();
            bid = new string[len];
            bname = new string[len];
            bmodel = new string[len];
            bprice = new string[len];
            bengine = new string[len];
            bpower = new string[len];
            bmilege = new string[len];
            btorque = new string[len];
            btyre = new string[len];
            babout = new string[len];
            bimage = new string[len];


            con.Open();


            cmd = new SqlCommand("SELECT * FROM bike_Details", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                String b_name = reader.GetString(1);
                String b_model = reader.GetString(2);
                String b_price = reader.GetString(3);
                String b_engine = reader.GetString(4);
                String b_power = reader.GetString(5);
                String b_milege = reader.GetString(6);
                String b_torque = reader.GetString(7);
                String b_tyre = reader.GetString(8);
                String b_about = reader.GetString(9);

                String b_id = reader.GetInt32(0).ToString();
                bytes1 = (byte[])reader["bike_image"];
                string url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);

                bid.SetValue(b_id, i);
                bname.SetValue(b_name, i);
                bmodel.SetValue(b_model, i);
                bprice.SetValue(b_price, i);
                bengine.SetValue(b_engine, i);
                bpower.SetValue(b_power, i);
                bmilege.SetValue(b_milege, i);
                btorque.SetValue(b_torque, i);
                btyre.SetValue(b_tyre, i);
                babout.SetValue(b_about, i);
                bimage.SetValue(url, i);
                i++;



            }
            con.Close();

        }

        public void datacount()
        {
            String connectionString = "Data source=DhavalGohel\\SQLEXPRESS01; initial catalog=RoyalEnfield;integrated Security=true";


            String query = "select count(*) from bike_Details";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {

                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                len = (int)command.ExecuteScalar();
                Console.WriteLine(len);

                connection.Close();
            }
        }

        protected void button_Click(object sender, EventArgs e)
        {
            //String id = bid[i].ToString();
            Response.Redirect("booking.aspx");
        }
    }
}