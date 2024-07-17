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
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
                string q = "select * from register";
                SqlDataAdapter da = new SqlDataAdapter(q, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "get");
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];

            if (e.CommandName=="cmdEdit")
            {
                Label l1 = (Label)row.FindControl("label1");
                Label l2 = (Label)row.FindControl("label2");
                Label l3 = (Label)row.FindControl("label3");
                Label l4 = (Label)row.FindControl("label4");
                Label l5 = (Label)row.FindControl("label5");
                Label l6 = (Label)row.FindControl("label6");
                Label l7 = (Label)row.FindControl("label7");
                Label l8 = (Label)row.FindControl("label8");
                Label l9 = (Label)row.FindControl("label9");
                Label l10 = (Label)row.FindControl("label10");
                Label l11 = (Label)row.FindControl("label11");

                Session["uname"] = l1.Text;
                Session["pwd"] = l2.Text;
                Session["gender"] = l3.Text;
                Session["lang1"] = l4.Text;


                Session["lang2"] = l5.Text;
                Session["lang3"] = l6.Text;
                Session["state"] = l7.Text;
                Session["city"] = l8.Text;
                Session["Bgroup"] = l9.Text;
                Session["phno"] = l10.Text;
                Session["Email"] = l11.Text;
                Session["Value"] = 1;
                Response.Redirect("Register.aspx");
            }

            else if (e.CommandName == "cmdDelete")
            {
                Label uid = (Label)row.FindControl("lebel1");
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from register where uid='" + uid.Text + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
            
        }
    }
}