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

public partial class MainLogin : System.Web.UI.Page
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();
            string str = "SELECT * FROM tblcustomer WHERE custUsername = '" +
                         TextBox2.Text + "' AND custPassword = '" + TextBox1.Text + "'";
            OdbcDataAdapter sda = new OdbcDataAdapter(str, conn);
            DataTable dtbl = new DataTable();
            sda.Fill(dtbl);
            if (dtbl.Rows.Count != 0)
            {
                Session["User"] = TextBox2.Text.Trim();
                Response.Redirect("home.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript",
                "alert('Invalid login details, if you have registered, please check your username or password')", true);

            }
            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.Message);

        }
    }
}