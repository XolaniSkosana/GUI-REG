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
        
        con.Open();
        if (Session["User"] != null)
           {
            OdbcCommand cmd = new OdbcCommand("update tblcustomer set custName = '" + name.Text +
                                              //"',custSurname = '" + surname.Text + "',custEmail ='" + email.Text + "',custPhoneNo='" +
                                              //cellNo.Text + "',custCity = '" + streetNo.Text + "',custusername = '" + username.Text +
                                              //"',custTown = '" + town.Text + "',custUnitNo ='" + unitNo.Text + "',custPostCode ='" +
                                              //postalCode.Text + "',custStandNo = '" + standNo.Text + "',custStreetName = '" + streetName.Text +
                                              "' where custUsername ='" + Session["User"] + "'", con);
            cmd.ExecuteNonQuery();
            Response.Write("record updated successfully");
          }
        con.Close();
    }
}