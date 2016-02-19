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
    public partial class teacher : System.Web.UI.Page
    {
        DataTable dt;
//nnn
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                datbind();
            }
        }

        public void datbind()
        {
            dt = new DataTable();
            OracleDataAdapter adapt;
            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            ocon.Open();
            adapt = new OracleDataAdapter("Select * from TEACHER", ocon);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            ocon.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            OracleCommand cmd;
            ocon.Open();
            string query1 = "insert into TEACHER(TEACHER_ID,TEACHER_NAME) values (" + Convert.ToInt32(TextBox1.Text) + ",'" + TextBox2.Text + "')";
            cmd = new OracleCommand(query1, ocon);
            cmd.ExecuteNonQuery();
            ocon.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            datbind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            datbind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            datbind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label tid = GridView1.Rows[e.RowIndex].FindControl("tID") as Label;
            TextBox tname = GridView1.Rows[e.RowIndex].FindControl("tname") as TextBox;
            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            OracleCommand cmd;
            ocon.Open();


            //updating the record  

            cmd = new OracleCommand("Update TEACHER set TEACHER_NAME='" + tname.Text + "' where TEACHER_ID=" + Convert.ToInt32(tid.Text), ocon);
            cmd.ExecuteNonQuery();
            ocon.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            datbind();
            

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = GridView1.Rows[e.RowIndex].FindControl("tID") as Label;
            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            OracleCommand cmd;
            ocon.Open();


            //Deleting the record  

            cmd = new OracleCommand("Delete From TEACHER where TEACHER_ID=" + int.Parse(id.Text), ocon);
            cmd.ExecuteNonQuery();
            ocon.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            datbind();
        }

    }
}
