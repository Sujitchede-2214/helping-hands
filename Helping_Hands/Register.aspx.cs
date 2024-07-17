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
    public partial class Register : System.Web.UI.Page
    {
        void getstate()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string q = "select * from state";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds, "state");
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "sname";
            DropDownList1.DataValueField = "sid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "--select--");
        }
        void getcity()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
            string q = "select * from city where sid='" + DropDownList1.SelectedValue+ "'";
            SqlDataAdapter da = new SqlDataAdapter(q, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "cname";
            DropDownList2.DataValueField = "cid";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--select--");
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack == false)
            {
                getstate();
            }

            if (Convert.ToInt32(Session["Value"]) == 1)
            {
                TextBox1.Text = Session["uname"].ToString();
                TextBox1.Text = Session["pwd"].ToString();
                RadioButton1.Text = Session["gender"].ToString();
                CheckBox1.Text = Session["lang1"].ToString();
                CheckBox2.Text = Session["lang2"].ToString();
                CheckBox3.Text = Session["lang3"].ToString();

                if(CheckBox1.Text=="Telugu")
                {
                    CheckBox1.Checked = true;
                }
                if (CheckBox2.Text == "Hindi")
                {
                    CheckBox2.Checked = true;
                }
                if (CheckBox3.Text == "English")
                {
                    CheckBox3.Checked = true;
                }
                DropDownList1.SelectedValue = Session["state"].ToString();
                DropDownList2.SelectedValue = Session["city"].ToString();
                DropDownList3.SelectedValue = Session["Bgroup"].ToString();
                TextBox4.Text = Session["phno"].ToString();
                TextBox5.Text = Session["Email"].ToString();
                Session["Value"] = 2;
                Button1.Text = "update";
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Register")
            {
                string uname = TextBox1.Text;
                string password = TextBox2.Text;
                string conpassword = TextBox3.Text;
                string gender;
                string lang1 = "";
                string lang2 = "";
                string lang3 = "";
                string state = DropDownList1.SelectedItem.Text;
                string city = DropDownList2.SelectedItem.Text;
                string bloodgrp = DropDownList3.SelectedItem.Text;
                long phnno = long.Parse(TextBox4.Text);
                string email = TextBox5.Text;

                if (RadioButton1.Checked == true)
                {
                    gender = RadioButton1.Text;
                }
                else
                {
                    gender = RadioButton2.Text;
                }
                if (CheckBox1.Checked == true)
                {
                    lang1 = CheckBox1.Text;
                }
                if (CheckBox1.Checked == true)
                {
                    lang2 = CheckBox2.Text;
                }
                if (CheckBox1.Checked == true)
                {
                    lang3 = CheckBox3.Text;
                }
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
                con.Open();
                string q = "insert into register(uname,pwd,gender,lang1,lang2,lang3,state,city,Bgroup,phno,Email) values('" + uname + "','" + password + "','" + gender + "','" + lang1 + "','" + lang2 + "','" + lang3 + "','" + state + "','" + city + "','" + bloodgrp + "','" + phnno + "','" + email + "')";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();
                con.Close();
               
                Session["A"] = 2;
            }
           if(Button1.Text=="update")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cs"].ToString());
                con.Open();
                string q= "update register set uname='" + TextBox1.Text + "',pwd='" + TextBox2.Text + "',gender='" + RadioButton1.Text + "',lang1='" + CheckBox1.Text + "',lang2='" + CheckBox2.Text + "',lang3='" + CheckBox3.Text + "',state='" + DropDownList1.SelectedItem.Text + "',city='" + DropDownList2.SelectedItem.Text + "',Bgroup='" + DropDownList3.SelectedItem.Text + "',phno='" +TextBox4.Text + "',Email='" + TextBox5.Text + "'";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Button1.Text = "Register";
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            getcity();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            RadioButton1.Checked = false;
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            DropDownList1.SelectedValue = default;
            DropDownList2.SelectedValue = default;
            DropDownList3.SelectedValue = default;
        }
    }
}