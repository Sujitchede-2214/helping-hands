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
    public partial class Search : System.Web.UI.Page
    {
        void getBgroup()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string q = "select * from bloodgrp";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "Bgroup");
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "groupname";
            DropDownList1.DataValueField = "Bid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select--");
        }
        void getstate()
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
                string q = "select * from state";
                SqlDataAdapter da = new SqlDataAdapter(q, con);
                DataSet ds = new DataSet();
                da.Fill(ds, "state");
                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = "sname";
                DropDownList2.DataValueField = "sid";
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, "--select--");
            }
            void getcity()
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
                string q = "select * from city where sid='" + DropDownList2.SelectedValue + "'";
                SqlDataAdapter da = new SqlDataAdapter(q, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                DropDownList3.DataSource = ds;
                DropDownList3.DataTextField = "cname";
                DropDownList3.DataValueField = "cid";
                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, "--select--");
            }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack==false)
            {
                getstate();
                getBgroup();
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            getcity();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string state = DropDownList2.SelectedItem.Text;
            string city = DropDownList3.SelectedItem.Text;
            string bloodgrp = DropDownList1.SelectedItem.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string q = "select * from register where Bgroup='" + bloodgrp + "' and state='"+state+"' and city='"+city+"'";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "sujit");
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

       
    }
}