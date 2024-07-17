using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Helping_Hands
{
    public partial class ALogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            Session["UserName"] = TextBox1.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            con.Open();
            string q = "select * from admin where userid='" + TextBox1.Text + "'and pwd='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(q, con);
           int i= cmd.ExecuteNonQuery();
            con.Close();
            if (i != 0)
            {
                Server.Transfer("AWelcome.aspx");
            }
            else

                Label1.Text = "invalid user";

            
        }
    }
}