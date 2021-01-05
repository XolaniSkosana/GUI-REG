using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;
using System.Configuration;


public partial class registration : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["izozoDBConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.Open();
        string str = "INSERT INTO tblCustomer (custID, custName, custSurname, custPhoneNo, custUsername, custPassword, custStreetName, custTown, custCity, custStandNo, custUnitNo, custPostCode, custEmail) VALUES (NULL, '" + txtRegName.Text+ "', '"+ txtRegSurname.Text+ "', '" + txtRegPhoneNo.Text + "', '" + txtRegUsername.Text + "', '" + txtRegPassword.Text + "', NULL, NULL, NULL, NULL, NULL, NULL, '"+ txtRegEmail.Text+"')";
        OdbcCommand cmd = new OdbcCommand(str, conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect("login.aspx");
    }
}