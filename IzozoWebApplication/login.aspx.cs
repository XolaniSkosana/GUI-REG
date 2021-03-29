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

        
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["izozoDBConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
        {
        if (Session["User"] != null)
        {
            // Response.Redirect("Default.aspx");
            Response.Write("Default page");
        }
    }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

        try
        {

            conn.Open();
            string str = "SELECT * FROM tblcustomer WHERE custUsername = '" + txtLoginUsername.Text + "' AND custPassword = '" + txtLoginPassword.Text + "'";

            OdbcDataAdapter sda = new OdbcDataAdapter(str, conn);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);
            if (dtbl.Rows.Count == 1)
            {
                Session["User"] = txtLoginUsername.Text.Trim();
                //Response.Redirect("Default.aspx");
                Response.Write("user is: ");

            }
            else
            {
                lblLogin.Text = "Please try again";
                lblLogin.Visible = true;
            }


        }
        catch (Exception)
        {
            
            throw;
        }
        finally
        { 
            conn.Close();

        }

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();

            string str1 = "SELECT * from tblCustomer WHERE custUsername = '" + txtRegUsername + "' AND custEmail = '" + txtRegEmail + "'";
            OdbcDataAdapter sda = new OdbcDataAdapter(str1, conn);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);


            if (dtbl.Rows.Count > 0)//Check if user exists in the DB
            {
               lblReg.Text = "User already exists!";
            }
            else if(txtRegName.Text == "" && txtRegSurname.Text == "" && txtRegPhoneNo.Text == "" && txtRegUsername.Text == "" && txtRegPassword.Text == "" && txtRegEmail.Text == "")
            {
                lblReg.Text = "Enter required fields";
            }
            else
            {
                //Enter user details into DB
                string str = "INSERT INTO tblCustomer (custID, custName, custSurname, custPhoneNo, custUsername, custPassword, custStreetName, custTown, custCity, custStandNo, custUnitNo, custPostCode, custEmail) " +
                    "VALUES (NULL, '" + txtRegName.Text + "', '" + txtRegSurname.Text + "', '" + txtRegPhoneNo.Text + "', '" + txtRegUsername.Text + "', '" + txtRegPassword.Text + "', NULL, NULL, NULL, NULL, NULL, NULL, '" + txtRegEmail.Text + "')";
                OdbcCommand cmd = new OdbcCommand(str, conn);
                cmd.ExecuteNonQuery();
                lblReg.Visible = true;   

            }
        }
        catch (Exception)
        {
            
          
            lblReg.Text = "Something went wrong!";
            throw;
        }
        finally
        {
            conn.Close();
 

        }
    }

  
}
