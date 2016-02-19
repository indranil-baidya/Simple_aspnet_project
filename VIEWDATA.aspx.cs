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
    public partial class VIEWDATA : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            fillcombostd();
            fillcombocourse();
            fillcomboteacher();
        }
        public void fillcombostd()
        {
            dt = new DataTable();
            OracleDataAdapter adapt;
            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            ocon.Open();
            adapt = new OracleDataAdapter("Select STD_NAME,STD_ID from STUDENT", ocon);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                STDDL.DataSource = dt;
                STDDL.DataTextField = "STD_NAME";
                STDDL.DataValueField = "STD_ID";


                STDDL.DataBind();
              

            }
            ocon.Close();


        }
        public void fillcombocourse()
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

                CDDL.DataSource = dt;
                CDDL.DataTextField = "COURSE_NAME";
                CDDL.DataValueField = "COURSE_ID";
                CDDL.DataBind();
                
                
                ListBox2.DataSource = dt;
                ListBox2.DataTextField = "COURSE_NAME";
                ListBox2.DataValueField = "COURSE_ID";
                ListBox2.DataBind();
            }
            ocon.Close();


        }
        public void fillcomboteacher()
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

                TDDL.DataSource = dt;
                TDDL.DataTextField = "TEACHER_NAME";
                TDDL.DataValueField = "TEACHER_ID";


                TDDL.DataBind();
            }
            ocon.Close();


        }
        protected void BTN_SEARCH_Click(object sender, EventArgs e)
        {
           
        }

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void STDDL_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}