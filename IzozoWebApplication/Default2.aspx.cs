using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    
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
                mailMessage.From = new MailAddress("izozoemail");
                mailMessage.To.Add("izozoemail");
                mailMessage.Subject = TextBox4.Text;

                mailMessage.Body = "<b>Sender Name : </b>" + TextBox3.Text + "<br/>"
                      + "<b>Sender Email : </b>" + TextBox1.Text + "<br/>"
                      + "<b>Sender Phone Number : </b>" + TextBox2.Text + "<br/>"
                      + "<b>Message: </b>" + TextBox5.Text;
                mailMessage.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 25);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("izozoemail", "emailpassword");
                smtpClient.Send(mailMessage);

                Label1.ForeColor = System.Drawing.Color.DarkGreen;
                Label1.Text = "Thank you for contacting us";

                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
                TextBox4.Enabled = false;
                TextBox5.Enabled = false;
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