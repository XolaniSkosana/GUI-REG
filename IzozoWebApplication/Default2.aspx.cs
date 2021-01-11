using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.Page;
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
    protected void Button1_Click(object sender, EventArgs e)
    {
     try
        {
            var from = "youremail@gmail.com";
            var to = "youremail@gmail.com";
            const string password = "yourpassword";
            string mail_subject = TextBox4.Text.ToString();
            string mail_message = "From: " + TextBox3.Text + "\n";
            mail_message += "Email: " + TextBox1.Text + "\n";
            mail_message += "Phone: " + TextBox2.Text + "\n";
            mail_message += "Subject: " + TextBox4.Text + "\n";
            mail_message += "Message: " + TextBox5.Text + "\n";

            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 995; 
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(from, password);
                smtp.Timeout = 20000;
            }

            smtp.Send(from, to, mail_subject, mail_message);

            Confirm();
            confirm.Text = "Thank you for your Email";

            TextBox3.Text = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
        catch (Exception)
        {
            confirm.Text = "Something went wrong! Please try again";
            confirm.ForeColor = Color.Red;
        }
       
    }
    private void Confirm()
    {
        string ToEmail = TextBox1.Text.Trim();
        string UserName = TextBox3.Text;
        string Subject2 = TextBox4.Text;

        MailMessage mailMassage = new MailMessage("emailAddress@gmail.com", ToEmail);

        StringBuilder sbEmailBody = new StringBuilder();
        sbEmailBody.Append("Dear" + UserName);
        sbEmailBody.Append("<br/><br/>");
        sbEmailBody.Append("Thank you for your email");
        sbEmailBody.Append("<br/><br/>");
        sbEmailBody.Append("We received your email regarding" + Subject2 + "<br/>");
        sbEmailBody.Append("We will be back to you as soon as possible");
        sbEmailBody.Append("<br/><br/><br/>");
        sbEmailBody.Append("Sincerely, ");
        sbEmailBody.Append("");

        mailMassage.IsBodyHtml = true;

        mailMassage.Body = sbEmailBody.ToString();
        mailMassage.Subject = "Re: Thank you for your email";
        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", emailPortNumber);
        smtpClient.Credentials = new System.Net.NetworkCredential()
        {
            UserName = "youremail@gmail.com",
            Password = "yourpassword"
        };

        smtpClient.EnableSsl = true;
        smtpClient.Send(mailMassage);
    }
}