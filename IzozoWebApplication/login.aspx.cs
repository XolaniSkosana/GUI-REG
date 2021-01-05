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

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            //try { conn.Open(); }
            //catch (Exception ex)
            //{
            //    conn = null;
            //}
            //return conn;
            OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["izozoDBConnection"].ConnectionString);
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
                "alert('An error occured during log in validation! Please try again or contact support.')", true);

            }
            conn.Close();

            /*conn.Open();
           int numRows = int.Parse("SELECT COUNT(custUsername, custPassword) FROM tblCustomer WHERE custUsername = '" + username.Text + "' AND custPassword = '" + password.Text+"'");


           if (numRows == 1)
           {
               Response.Write("You have successfully logged in");
           }
           else
           {
               Response.Write("Inalid details");
           }*/


            //OdbcCommand cmd = new OdbcCommand(str, conn);
            //OdbcDataReader dr = cmd.ExecuteReader();

            //if(dr.Read())
            //{
            //    dr.Close();
            //    lblLogin.Text = "Login Successful";
            //}
            //else
            //{
            //    dr.Close();
            //    lblLogin.Text = "Account not found";
            //}


            //OdbcDataAdapter da = new OdbcDataAdapter(str, conn);
            //DataSet dt = new DataSet();
            //da.Fill(dt);

            //if (dt.Tables[0].Rows.Count > 0)
            //{
            //    lblLogin.Text = "successful login";
            //    conn.Close();
            //}
            //else if(dt.Tables[0].Rows.Count == 0)
            //{
            //    lblLogin.Text = "No rows returned";
            //}
            //else
            //{
            //    lblLogin.Text = "incorrect username/password";
            //}


            //OdbcDataAdapter adapt = new OdbcDataAdapter(str, conn);
            //DataSet dtss = new DataSet();   
            //adapt.Fill(dtss);

            //if (dtss.Tables[0].Rows.Count > 0)
            //{
            //    lblLogin.Text = "successful login";
            //    conn.Close();

            //}
            //else
            //{
            //    lblLogin.Text = "incorrect username/password";
            //}

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //string DatabaseConnStr = ConfigurationManager.ConnectionStrings["izozoDBConnection"].ConnectionString;
            //OdbcConnection conn = new OdbcConnection(DatabaseConnStr);

            //string str = "INSERT INTO tblcategory(categoryID, categoryName) VALUES ('123456786789', 'takeaway')";
            //OdbcCommand cmd = new OdbcCommand(str, conn);

            //Inserting values into customer table;

            conn.Open();
            string str = "INSERT INTO tblCustomer (custID, custName, custSurname, custPhoneNo, custUsername, custPassword, custStreetName, custTown, custCity, custStandNo, custUnitNo, custPostCode, custEmail) " +
                "VALUES (NULL, '" + txtRegName.Text + "', '" + txtRegSurname.Text + "', '" + txtRegPhoneNo.Text + "', '" + txtRegUsername.Text + "', '" + txtRegPassword.Text + "', NULL, NULL, NULL, NULL, NULL, NULL, '" + txtRegEmail.Text + "')";
            OdbcCommand cmd = new OdbcCommand(str, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            lblReg.Text = "successfully registered";
            Response.Redirect("login.aspx");







            conn.Close();

        }
    }
