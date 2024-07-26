using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RoyalEnfield
{
    public partial class team : System.Web.UI.Page
    {
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
        }
    }
}