using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;
using System.Data;
using System.Data.OracleClient;
using System.Configuration;
namespace sms
{
    public partial class enrollment : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                datbind();
                fillcombo();
            }
        }
        public void datbind()
        {
            dt = new DataTable();
            OracleDataAdapter adapt;
            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            ocon.Open();
            adapt = new OracleDataAdapter("Select * from STUDENT", ocon);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;

                GridView1.DataBind();
            }
            ocon.Close();


        }
        public void fillcombo()
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
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "COURSE_NAME";
                DropDownList1.DataValueField = "COURSE_ID";
             
        
                DropDownList1.DataBind();
            }
            ocon.Close();


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
              int a=Convert.ToInt32(DropDownList1.SelectedValue.Trim());
              string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
              OracleConnection ocon = new OracleConnection(css);
              OracleCommand cmd;
              ocon.Open();
              string query1 = "insert into COURSE_ENROLLMENT(STD_ID,COURSE_ID) values (" +Convert.ToInt32( TextBox1.Text) + "," + a + ")";
              cmd = new OracleCommand(query1, ocon);
              cmd.ExecuteNonQuery();
              ocon.Close();
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(TextBox1.Text.Trim());
            dt = new DataTable();
            OracleDataAdapter adapt;
            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            ocon.Open();
            adapt = new OracleDataAdapter("Select * from STUDENT where STD_ID=" + id, ocon);
            adapt.Fill(dt);
            if (dt.Rows.Count == 0)
            {
                return;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            ocon.Close();
        }
    }
}