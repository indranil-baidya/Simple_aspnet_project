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
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataTable dt;
        OracleDataAdapter adapt;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        
            fillcombostd();
        }

        public void fillcombostd()
        {
            dt = new DataTable();
           
            
            OracleDataAdapter adapt;
            
            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            ocon.Open();
            string QUERY = "select s.std_name,c.course_name, sm.sem_name from student s," + 
                            " course c,course_enrollment ce,course_offering co,semester sm "+
                            "where c.course_id = ce.course_id and s.std_id = ce.std_id and co.course_id = c.course_id"+
            " and co.sem_id = sm.sem_id and s.std_name like '%" + TextBox1.Text + "%'"; 
            adapt = new OracleDataAdapter(QUERY, ocon);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                GridView1.DataSource = dt;
               
                GridView1.DataBind();


            }
            ocon.Close();


        }

        public void filltea()
        {
            dt = new DataTable();


            OracleDataAdapter adapt;

            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            ocon.Open();
            string QUERY = "select c.course_name from course c,taughtby tb,teacher t" +
                    " where t.teacher_id= tb.teacher_id" +
                    " and c.course_id= tb.course_id" +
                    " and t.teacher_name like '%" + TextBox3.Text + "%'";
            
            adapt = new OracleDataAdapter(QUERY, ocon);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                GridView1.DataSource = dt;

                GridView1.DataBind();


            }
            ocon.Close();


        }





        public void fillgrid()
        {
            dt = new DataTable();


            OracleDataAdapter adapt;

            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            ocon.Open();
            string QUERY = "select s.std_name, te.teacher_name from student s,course c,course_enrollment ce,teacher te,taughtby tb" +
                    " where s.std_id= ce.std_id " +
                    " and te.teacher_id= tb.teacher_id" +
                    " and c.course_id = ce.course_id" +
                    " and ce.course_id= tb.course_id" +
                    " and c.course_name like '%" + TextBox2.Text + "%'";
            adapt = new OracleDataAdapter(QUERY, ocon);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {

                GridView1.DataSource = dt;

                GridView1.DataBind();


            }
            ocon.Close();


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            fillgrid();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            filltea();
        }
    }
}