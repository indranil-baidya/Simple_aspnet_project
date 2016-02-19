using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sms
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("teacher.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("course.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("TAUGHTBY.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}