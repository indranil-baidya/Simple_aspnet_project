using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;
namespace sms
{
    public partial class TAUGHTBY : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                fillcombo();
                fillcombo2();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public void fillcombo()
        {
            dt = new DataTable();
            OracleDataAdapter adapt;
            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            ocon.Open();
            adapt = new OracleDataAdapter("Select TEACHER_NAME,TEACHER_ID from TEACHER", ocon);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "TEACHER_NAME";
                DropDownList1.DataValueField = "TEACHER_ID";


                DropDownList1.DataBind();
            }
        }

        public void fillcombo2()
        {
            dt = new DataTable();
            OracleDataAdapter adapt;
            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            ocon.Open();
            adapt = new OracleDataAdapter("Select COURSE_NAME,COURSE_ID from COURSE", ocon);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                DropDownList2.DataSource = dt;
                DropDownList2.DataTextField = "COURSE_NAME";
                DropDownList2.DataValueField = "COURSE_ID";


                DropDownList2.DataBind();
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(DropDownList1.SelectedValue.Trim());
            int b = Convert.ToInt32(DropDownList2.SelectedValue.Trim());
            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            OracleCommand cmd;
            ocon.Open();
            string query1 = "insert into TAUGHTBY(TEACHER_ID,COURSE_ID) values (" + a + "," + b + ")";
            cmd = new OracleCommand(query1, ocon);
            cmd.ExecuteNonQuery();
            ocon.Close();
        }
    }
}