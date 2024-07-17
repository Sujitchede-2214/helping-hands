using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Helping_Hands
{
    public partial class Update : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
        void getdata()
        {
            string u = Session["UserName"].ToString();
            string p = Session["Password"].ToString();
            string q = "select * from register where uname='" + u + "' and pwd='" + p + "'";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "register");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(IsPostBack==false)
            {
                getdata();
            }
            
        }
           protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            getdata();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
          
          
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            TextBox l1 = (TextBox)row.FindControl("label1");
            TextBox l2 = (TextBox)row.FindControl("label2");
            TextBox l3 = (TextBox)row.FindControl("label3");
            TextBox l4 = (TextBox)row.FindControl("label4");
            TextBox l5 = (TextBox)row.FindControl("label5");
            TextBox l6 = (TextBox)row.FindControl("label6");
            TextBox l7 = (TextBox)row.FindControl("label7");
            TextBox l8 = (TextBox)row.FindControl("label8");
            TextBox l9 = (TextBox)row.FindControl("label9");
            TextBox l10 = (TextBox)row.FindControl("label10");
            TextBox l11 = (TextBox)row.FindControl("label11");
            con.Open();
            string q = "update register set uname='" + l1.Text + "',pwd='" + l2.Text + "',gender='" + l3.Text + "',lang1='" + l4.Text + "',lang2='" + l5.Text + "',lang3='" + l6.Text + "',state='" + l7.Text + "',city='" + l8.Text + "',Bgroup='" + l9.Text + "',phno='" + l10.Text + "',Email='" + l11.Text + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;

            //string uname = l1.Text;
            //string pwd = l2.Text;
            //string gender = l3.Text;
            //string lang1 = l4.Text;
            //string lang2 = l5.Text;
            //string lang3 = l6.Text;
            //string state = l7.Text;
            //string city = l8.Text;
            //char Bgroup =Convert.ToChar(l9.Text);
            //int phno = Convert.ToInt32(l10.Text);
            //string Email = l11.Text;
            getdata();
        }
               protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            getdata();
        }
    }
}