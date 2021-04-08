using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Collections;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.IO;

public partial class SupplierReg : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("izozo.qha@gmail.com");
                mailMessage.To.Add("izozo.qha@gmail.com");
                mailMessage.Subject = "Courier Application";

                mailMessage.Body = "<b>Sender Name : </b>" + TextBox2.Text + "<br/>"
                    + "<b>Sender Surname : </b>" + TextBox3.Text + "<br/>"
                      + "<b>Sender Position : </b>" + TextBox6.Text + "<br/>"
                      + "<b>Sender Phone Number : </b>" + TextBox7.Text + "<br/>"
                      + "<b>Sender Email : </b>" + TextBox4.Text + "<br/>"
                      + "<b>Company Details </b>" + "<br/>"
                      + "<b>Head office location : </b>" + TextBox1.Text + "<br/>"
                      + "<b>Holding Company : </b>" + TextBox9.Text + "<br/>"
                      + "<b>Holding Company Registration Number : </b>" + TextBox13.Text + "<br/>"
                      + "<b>Telephone Number : </b>" + TextBox14.Text + "<br/>";


                mailMessage.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 25);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("izozo.qha@gmail.com", "Password@123");
                smtpClient.Send(mailMessage);

                Label1.ForeColor = System.Drawing.Color.DarkGreen;
                Label1.Text = "Thank you for contacting us";

                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
                TextBox6.Enabled = false;
                TextBox7.Enabled = false;
                TextBox4.Enabled = false;
                TextBox1.Enabled = false;
                TextBox9.Enabled = false;
                TextBox13.Enabled = false;
                TextBox14.Enabled = false;
                Button2.Enabled = false;
            }
        }
        catch (Exception ex)
        {
            // Log - event viewer or table
            Label1.ForeColor = System.Drawing.Color.DarkGreen;
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "The was an unkown problem, please try again later";
        }
    }
}

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] != null)
        {
            Response.Write("Welcome" + Session["User"]);
        }
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        //Session.Remove("User");
        //Response.Redirect("login.aspx");
    }
}