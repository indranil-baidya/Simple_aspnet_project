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
    public partial class _Default : System.Web.UI.Page
    {
        string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
        OracleConnection ocon;
        DataTable dt;
        OracleDataAdapter adapt;
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
       adapt = new OracleDataAdapter("Select * from STUDENT", ocon);  
        adapt.Fill(dt);  
        if(dt.Rows.Count>0)  
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
         /*   string  b, c, d ;
           int a =int.Parse( TextBox1.Text.Trim());
            b = TextBox2.Text.Trim();
            c = TextBox3.Text.Trim();
            d = TextBox4.Text.Trim();
           int f =int.Parse( TextBox5.Text.Trim());*/          
            ocon.Open();
      //      string query1 = "insert into STUDENT(STD_ID,STD_NAME,STD_FNAME,STD_ADDRESS,STD_TEL) values ("+ TextBox1.Text+ "," + TextBox2.Text + "," + TextBox3.Text + "," + TextBox4.Text + "," + TextBox5.Text + ")";
            string query1 = "insert into STUDENT(STD_ID,STD_NAME,STD_FNAME,STD_ADDRESS,STD_TEL) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
     
            cmd = new OracleCommand(query1, ocon);
            cmd.ExecuteNonQuery();
            ocon.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            datbind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            datbind();
            //TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            datbind();
           
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label id = GridView1.Rows[e.RowIndex].FindControl("txtID") as Label;
            TextBox name = GridView1.Rows[e.RowIndex].FindControl("txtName") as TextBox;
            TextBox fname = GridView1.Rows[e.RowIndex].FindControl("txtFName") as TextBox;
            TextBox address = GridView1.Rows[e.RowIndex].FindControl("ADDRESS") as TextBox;
            TextBox tel = GridView1.Rows[e.RowIndex].FindControl("PHONE") as TextBox;

            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            OracleCommand cmd;
            ocon.Open();

    
            //updating the record  
         
                cmd = new OracleCommand("Update STUDENT set STD_NAME='" + name.Text + "',STD_FNAME='" + fname.Text + "',STD_ADDRESS='" + address.Text + "',STD_TEL='" + tel.Text + "' where STD_ID=" +Convert.ToInt32( id.Text), ocon);
                cmd.ExecuteNonQuery();
                ocon.Close();
                //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
                GridView1.EditIndex = -1;
                //Call ShowData method for displaying updated data  
                datbind();
            
         
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label id = GridView1.Rows[e.RowIndex].FindControl("txtID") as Label;
            string css = ConfigurationManager.ConnectionStrings["ApplicationServices"].ToString();
            OracleConnection ocon = new OracleConnection(css);
            OracleCommand cmd;
            ocon.Open();


            //Deleting the record  

            cmd = new OracleCommand("Delete From STUDENT where STD_ID=" +int.Parse(id.Text), ocon);
            cmd.ExecuteNonQuery();
            ocon.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            datbind();
        }
    }
}
