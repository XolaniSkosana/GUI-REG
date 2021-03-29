using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class driverRegistration : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        /*
        con = new SqlConnection(@"Dsn=izozoDS;database=izozodb;option=0;port=0;server=localhost;uid=root");
        con.Open();
        cmd = new SqlCommand("INSERT INTO member_registration (name,surname,identity_number,gender,phone_number,email,residential_address,province,zip_code) VALUES (@name,@surname,@identity_number,@gender,@phone_number,@email,@residential_address,@province,@zip_code)", con);
        cmd.Parameters.Add("@name", TextBox1.Text);
        cmd.Parameters.Add("@surname", TextBox2.Text);
        cmd.Parameters.Add("@identity_number", TextBox3.Text);
        cmd.Parameters.Add("@gender", DropDownList1.SelectedItem.Value);
        cmd.Parameters.Add("@phone_number", TextBox4.Text);
        cmd.Parameters.Add("@email", TextBox5.Text);
        cmd.Parameters.Add("@residential_address", TextBox6.Text);
        cmd.Parameters.Add("@province", TextBox7.Text);
        cmd.Parameters.Add("@zip_code", TextBox8.Text);
        cmd.ExecuteNonQuery();

        string msgstring = " you are now a registered member thank you";
        string content = "window.onload=function(){ alert('";
        content += msgstring;
        content += "');";
        content += "windows.location ='";
        content += Request.Url.AbsoluteUri;
        content += "';}";
        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", content, true);


        Response.Redirect(Request.Url.AbsoluteUri);*/
    }
}