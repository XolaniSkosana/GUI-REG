using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.Odbc;
using System.Configuration;

using System.Web.UI.WebControls;

public partial class personalInfo : System.Web.UI.Page
{
    OdbcConnection con = new OdbcConnection(ConfigurationManager.ConnectionStrings["izozoWebConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            Master.userNameText = "Welcome " + Session["User"] + " ";
            Master.LogOutbt.Visible = true;
            Master.loginButton.Visible = false;
        }
        else
        {
            Master.LogOutbt.Visible = false;
            Master.loginButton.Visible = true;
        }

        con.Open();
        if (Session["User"] != null)
        {
            
            OdbcCommand cmd1 = new OdbcCommand("select *  from tblcustomer where custusername ='" + Session["User"] + "'", con);
            OdbcDataReader da = cmd1.ExecuteReader();
            while (da.Read())
            {
                name.Text = da.GetValue(1).ToString();
                surname.Text = da.GetValue(2).ToString();
                email.Text = da.GetValue(12).ToString();
                cellNo.Text = da.GetValue(3).ToString();
                streetNo.Text = da.GetValue(0).ToString();
                username.Text = da.GetValue(4).ToString();
                town.Text = da.GetValue(7).ToString();
                unitNo.Text = da.GetValue(9).ToString();
                postalCode.Text = da.GetValue(11).ToString();
                standNo.Text = da.GetValue(8).ToString();
                streetName.Text = da.GetValue(6).ToString();
                custCity.Text = da.GetValue(5).ToString();
            }
        }
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
          

            con.Open();
            if (Session["User"] != null)
            {
                //OdbcCommand cmd = new OdbcCommand("update tblcustomer set custName = '" + name.Text +
                //"',custSurname = '" + surname.Text + "',custEmail ='" + email.Text + "',custPhoneNo='" +
                //cellNo.Text + "',custCity = '" + streetNo.Text + "',custusername = '" + username.Text +
                //"',custTown = '" + town.Text + "',custUnitNo ='" + unitNo.Text + "',custPostCode ='" +
                //postalCode.Text + "',custStandNo = '" + standNo.Text + "',custStreetName = '" + streetName.Text +
                //"'where custUsername ='" + Session["User"] + "'", con);
                // cmd.ExecuteNonQuery();
                // Response.Write("record updated successfully");
                string updateQuery = "";
                if (name.Text != null)
                {
                    updateQuery = "UPDATE tblCustomer SET custName ='" + name.Text + "'WHERE custUsername ='" + Session["User"].ToString() + "'";
                }
                else if (surname.Text != null)
                {
                    updateQuery = "UPDATE tblCustomer SET custSurname ='" + surname.Text + "'WHERE custUsername ='" + Session["User"].ToString() + "'";
                }
                else if (email.Text != null)
                {
                    updateQuery = "UPDATE tblCustomer SET custEmail ='" + email.Text + "'WHERE custUsername ='" + Session["User"].ToString() + "'";
                }
                else if (streetNo.Text != null)
                {
                    updateQuery = "UPDATE tblCustomer SET custStreetNo ='" + streetNo.Text + "'WHERE custUsername ='" + Session["User"].ToString() + "'";
                }
                else if (cellNo.Text != null)
                {
                    updateQuery = "UPDATE tblCustomer SET custCellNo ='" + cellNo.Text + "'WHERE custUsername ='" + Session["User"].ToString() + "'";
                }
                else if (postalCode.Text != null)
                {
                    updateQuery = "UPDATE tblCustomer SET custPostalCode ='" + postalCode.Text + "'WHERE custUsername ='" + Session["User"].ToString() + "'";
                }
                else if (standNo.Text != null)
                {
                    updateQuery = "UPDATE tblCustomer SET custStandNo ='" + standNo.Text + "'WHERE custUsername ='" + Session["User"].ToString() + "'";
                }
                else if (username.Text != null)
                {
                    updateQuery = "UPDATE tblCustomer SET custUsername ='" + username.Text + "'WHERE custUsername ='" + Session["User"].ToString() + "'";
                }
                else if (town.Text != null)
                {
                    updateQuery = "UPDATE tblCustomer SET custTown ='" + town.Text + "'WHERE custUsername ='" + Session["User"].ToString() + "'";
                }
                else if (custCity.Text != null)
                {
                    updateQuery = "UPDATE tblCustomer SET custCity ='" + custCity.Text + "'WHERE custUsername ='" + Session["User"].ToString() + "'";
                } 
                var cmd = new OdbcCommand(updateQuery, con);
                cmd.ExecuteNonQuery();

            }
            con.Close();
        }
        catch(Exception ex)
        {
            Console.Write(ex);
        }
    }
    //Function to update user Details
    public void UpdateCustomer(updateCustomer updatefield,string sessionName)
    {

        try
        {
            string updateQuery = "";

            switch(updatefield)
            {
                case updateCustomer.custName:
                    updateQuery = "UPDATE tblCustomer SET custName ='"+name.Text+"'WHERE custUsername ='"+ sessionName + "'";
                    break;
                case updateCustomer.custSurname:
                    updateQuery= "UPDATE tblCustomer SET custSurname ='" + surname.Text + "'WHERE custUsername ='" + sessionName + "'";
                    break;
                case updateCustomer.custEmail:
                    updateQuery = "UPDATE tblCustomer SET custEmail ='" + email.Text + "'WHERE custUsername ='" + sessionName + "'";
                    break;
                case updateCustomer.custPhoneNo:
                    updateQuery = "UPDATE tblCustomer SET custPhoneNo ='" + cellNo.Text + "'WHERE custUsername ='" + sessionName + "'";
                    break;
                case updateCustomer.custPostCode:
                    updateQuery = "UPDATE tblCustomer SET custPostCode ='" + postalCode.Text + "'WHERE custUsername ='" + sessionName + "'";
                    break;
                case updateCustomer.custTown:
                    updateQuery = "UPDATE tblCustomer SET custName ='" + town.Text + "'WHERE custUsername ='" + sessionName + "'";
                    break;
                case updateCustomer.custStreetName:
                    updateQuery = "UPDATE tblCustomer SET custStreetName ='" + streetName.Text + "'WHERE custUsername ='" + sessionName + "'";
                    break;
                case updateCustomer.custUnitNo:
                    updateQuery = "UPDATE tblCustomer SET custUnitNo ='" + unitNo.Text + "'WHERE custUsername ='" + sessionName + "'";
                    break;
                case updateCustomer.custStandNo:
                    updateQuery = "UPDATE tblCustomer SET custStandNo ='" + standNo + "'WHERE custUsername ='" + sessionName + "'";
                    break;      
            }
            con.Open();
            var cmd = new OdbcCommand(updateQuery, con);
            cmd.ExecuteNonQuery();

        }
        catch(Exception ex)
        {
            Console.WriteLine("Error " + ex);
        }
        finally
        {
            con.Close();
        }


    }
    public enum updateCustomer
    {
        custName,
        custSurname,
        custEmail,
        custUsername,
        custPhoneNo,
        custTown,
        custUnitNo,
        custPostCode,
        custStandNo,
        custStreetName
    }
}