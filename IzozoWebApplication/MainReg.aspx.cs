using System;
using System.Collections.Generic;
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
using Xceed.Wpf.Toolkit;

public partial class MainReg : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["izozoDBConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();

            string str1 = "SELECT * from tblCustomer WHERE custUsername = '" + TextBox2.Text +
                         "'AND custEmail = '" + TextBox3.Text + "'";
            OdbcDataAdapter sda = new OdbcDataAdapter(str1, conn);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);

            if (TextBox5.Text != TextBox6.Text) //Check if passwords are the same
            {
                CompareValidator1.ErrorMessage = "Passwords must match!";
            }
            else if (dtbl.Rows.Count > 0)//Check if user exists in the DB
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript",
                "alert('User already exists!')", true);
                //lblReg.Text = "User already exists!";
            } 
            else
            {
                //Insert a new user's details into DB
                string str = "INSERT INTO tblCustomer (custID, custName, custSurname, custPhoneNo, " +
                                                        "custUsername, custPassword, custStreetName, " +
                                                        "custTown, custCity, custStandNo, custUnitNo," +
                                                        "custPostCode, custEmail) " +
                             "VALUES (NULL, '" + TextBox1.Text + "', '"
                                                    + TextBox50.Text + "', '" + TextBox4.Text + "', '" +
                                                      TextBox2.Text + "', '" +
                                                      TextBox5.Text + "', NULL, NULL, NULL, " +
                                                     "NULL, NULL, NULL, '" + TextBox3.Text + "')";
                OdbcCommand cmd = new OdbcCommand(str, conn);
                cmd.ExecuteNonQuery();

              //  lblReg.Visible = true;


               
              //  lblReg.Text = "successfully registered";
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript",
                "alert('successfully registered you can continue to login')", true);

            }
        }
        catch
        {


            //lblReg.Text = "Something went wrong!";
            //ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript",
            //   "alert('successfully registered you can continue to login')", true);

            throw;
        }
        finally
        {
            conn.Close();

        }
    }
}