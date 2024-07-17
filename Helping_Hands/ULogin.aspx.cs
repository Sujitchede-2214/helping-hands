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
    public partial class ULogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["UserName"] = TextBox1.Text;
            Session["Password"] = TextBox2.Text;

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            con.Open();
            string q = "select count(*) from register where uname='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(q, con);
            object i = cmd.ExecuteScalar();
            con.Close();
            if (Convert.ToInt32(i) !=0)
            {
                Server.Transfer("UWelcome.aspx");
            }
            else

                Label1.Text = "invalid user";
        }
    }
}