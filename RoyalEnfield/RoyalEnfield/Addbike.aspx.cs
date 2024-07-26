using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace RoyalEnfield
{
    public partial class add_bike : System.Web.UI.Page
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
        public string[] bpower { get; set; }
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
        }
        protected void add_details(object sender, EventArgs e)
        {
            String filename = Path.GetFileName(bike_image.PostedFile.FileName);
            Stream fs = bike_image.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] imagecode = br.ReadBytes((Int32)fs.Length);

            con.Open();

            SqlCommand cmd = new SqlCommand("insert into bike_Details" + "(bike_name,bike_model,bike_price,bike_engine,bike_power,bike_milege,bike_torque,bike_tyre,bike_about,bike_image)values(@bike_name,@bike_model,@bike_price,@bike_engine,@bike_power,@bike_milege,@bike_torque,@bike_tyre,@bike_about,@bike_image)", con);
            cmd.Parameters.AddWithValue("@bike_name", bike_name.Text);
            cmd.Parameters.AddWithValue("@bike_model", bike_model.Text);
            cmd.Parameters.AddWithValue("@bike_price", bike_price.Text);
            cmd.Parameters.AddWithValue("@bike_engine", bike_engine.Text);
            cmd.Parameters.AddWithValue("@bike_power", bike_power.Text);
            cmd.Parameters.AddWithValue("@bike_milege", bike_milege.Text);
            cmd.Parameters.AddWithValue("@bike_torque", bike_torque.Text);
            cmd.Parameters.AddWithValue("@bike_tyre", bike_tyre.Text);
            cmd.Parameters.AddWithValue("@bike_about", bike_about.Text);
            cmd.Parameters.AddWithValue("@bike_image", imagecode);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("add_bike.aspx");
        }
        public void retdata()
        {

            datacount();

            bid= new string[len];
            bname = new string[len];
            bmodel= new string[len];
            bprice = new string[len];
            bengine = new string[len];
            bpower = new string[len];
            bmilege = new string[len];
            btorque= new string[len];
            btyre= new string[len];
            babout= new string[len];
            bimage= new string[len];



            con.Open();


            cmd = new SqlCommand("SELECT * FROM bike_Details", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {


                String b_id = reader.GetInt32(0).ToString();
                String b_name = reader.GetString(1);
                String b_model = reader.GetString(2);
                String b_price = reader.GetString(3);
                String b_engine = reader.GetString(4);
                String b_power = reader.GetString(5);
                String b_milege = reader.GetString(6);
                String b_torque = reader.GetString(7);
                String b_tyre = reader.GetString(8);
                String b_about = reader.GetString(9);

                bytes1 = (byte[])reader["bike_image"];
                string url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
                bid.SetValue(b_id , i);
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
    }
}