using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.IO;

public partial class courier : System.Web.UI.Page
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
                mailMessage.Subject = "Supplier Application";


                mailMessage.Body = "<b>Sender Full Name(s) : </b>" + TextBox2.Text + "<br/>"
                    + "<b>Sender Email : </b>" + TextBox3.Text + "<br/>"
                      + "<b>Sender Contact Number : </b>" + TextBox6.Text + "<br/>"
                      + "<b>Will you be the one driving? : </b>" + buttonlist1.SelectedItem.Value + "<br/>"
                       + "<b>Business Details </b>" + "<br/>"
                      + "<b>Are you a Courier Company? : </b>" + buttonlist2.SelectedItem.Value + "<br/>"
                      + "<b>Will you be delivering with your personal vehicle? : </b>" + buttonlist3.SelectedItem.Value + "<br/>"
                      + "<b>What is your vehicle type? : </b>" + buttonlist4.SelectedItem.Value + "<br/>"
                      + "<b>In which area/town will you be operating? : </b>" + TextBox14.Text + "<br/>";
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
                buttonlist1.Enabled = false;
                buttonlist2.Enabled = false;
                buttonlist3.Enabled = false;
                buttonlist4.Enabled = false;
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