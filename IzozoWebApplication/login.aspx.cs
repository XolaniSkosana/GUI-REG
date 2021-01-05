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


public partial class login : System.Web.UI.Page
{
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["Dsn=izozoDS;Driver={MariaDB ODBC 3.1 Driver};tcpip=1;server=localhost;uid=root;database=izozodb"].ConnectionString);
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
        int numRows = int.Parse("SELECT COUNT(custUsername, custPassword) FROM tblCustomer WHERE custUsername = '" + username.Text + "' AND custPassword = '" + password.Text+"'");
        

        if (numRows == 1)
        {
            Response.Write("You have successfully logged in");
        }
        else
        {
            Response.Write("Inalid details");
        }




        conn.Close();

    }
}