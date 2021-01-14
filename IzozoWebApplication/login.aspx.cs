using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Odbc;
using System.Data.SqlClient;
using System.Configuration;

using System.Threading.Tasks;
using System.Windows;
using System.IO;



    public partial class login : System.Web.UI.Page
    {

        //Connection Setup
        OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["izozoWebConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            conn.Open();
            string str = "SELECT * FROM tblcustomer WHERE custUsername = '" + txtLoginUsername.Text + "' AND custPassword = '" + txtLoginPassword.Text + "'";
            OdbcDataAdapter sda = new OdbcDataAdapter(str, conn);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);
            if (dtbl.Rows.Count == 1)
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript",
                "alert('Log In Successful!'); window.location='home.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript",
                "alert('Invalid login details,please check your username or password')", true);

            }
            conn.Close();   

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

        try
        {
            conn.Open();
            string str = "INSERT INTO tblCustomer (custID, custName, custSurname, custPhoneNo, custUsername, custPassword, custStreetName, custTown, custCity, custStandNo, custUnitNo, custPostCode, custEmail) " +
                         "VALUES (NULL, '" + txtRegName.Text + "', '" + txtRegSurname.Text + "', '" + txtRegPhoneNo.Text + "', '" + txtRegUsername.Text + "', '" + txtRegPassword.Text + "', NULL, NULL, NULL, NULL, NULL, NULL, '" + txtRegEmail.Text + "')";
            OdbcCommand cmd = new OdbcCommand(str, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            lblReg.Text = "successfully registered";
            Response.Redirect("login.aspx");
        }
        catch(Exception)
        {
            Console.WriteLine(e);
        }
            conn.Close();

        }
    }
