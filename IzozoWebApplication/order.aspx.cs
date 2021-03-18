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

using System.Threading.Tasks;
using System.Windows;
using System.IO;




public partial class order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
}

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void JokoBtn_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button10_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        
    }

    protected void all_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = true;
        vegPanel.Visible = true;
        bakeryPanel.Visible = true;
        groceryPanel.Visible = true;
        bevPanel.Visible = true;
        dairyPanel.Visible = true;
    }

    protected void btnFruits_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = true;
        vegPanel.Visible = false;
        bakeryPanel.Visible = false;
        groceryPanel.Visible = false;
        bevPanel.Visible = false;
        dairyPanel.Visible = false;
    }

    protected void btnVeg_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegPanel.Visible = true;
        bakeryPanel.Visible = false;
        groceryPanel.Visible = false;
        bevPanel.Visible = false;
        dairyPanel.Visible = false;
        //btnVeg.Attributes.Add("onclick", "return false;");
    }

    protected void btnBakery_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegPanel.Visible = false;
        bakeryPanel.Visible = true;
        groceryPanel.Visible = false;
        bevPanel.Visible = false;
        dairyPanel.Visible = false;
    }

    protected void btnGroc_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegPanel.Visible = false;
        bakeryPanel.Visible = false;
        groceryPanel.Visible = true;
        bevPanel.Visible = false;
        dairyPanel.Visible = false;
    }

    protected void btnBev_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegPanel.Visible = false;
        bakeryPanel.Visible = false;
        groceryPanel.Visible = false;
        bevPanel.Visible = true;
        dairyPanel.Visible = false;
    }

    protected void btndairy_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegPanel.Visible = false;
        bakeryPanel.Visible = false;
        groceryPanel.Visible = false;
        bevPanel.Visible = false;
        dairyPanel.Visible = true;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegPanel.Visible = false;
        bakeryPanel.Visible = false;
        groceryPanel.Visible = false;
        bevPanel.Visible = false;
        dairyPanel.Visible = true;
    }

    protected void testBtn_ServerClick(object sender, EventArgs e)
    {
        
    }

    protected void btnCake_Click(object sender, EventArgs e)
    {

    }

    protected void btnBread_Click(object sender, EventArgs e)
    {

    }

    protected void btnYoghurt_Click(object sender, EventArgs e)
    {

    }

    protected void btnPizza_Click(object sender, EventArgs e)
    {
        
    }
    public bool viewPanel() {  return true;  }
    public bool MyName
    {
        get { return true; }
    }

    protected void btnBananas_Click(object sender, EventArgs e)
    {
        //Server.Transfer("product.aspx");
        //Button btn = ((Button)PreviousPage.FindControl("Button67"));
        //Button67.Text = btn.Text;
        //Panel name = ((Panel)PreviousPage.FindControl("BananasPanel"));
        
        

        
        
    }



    protected void btnBananas_Click1(object sender, EventArgs e)
    {
        Session["Bananas"] = "BananasPanel";
        Response.Redirect("product.aspx");

        
    }

    protected void searchBtn_Click(object sender, EventArgs e)
    {
        OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["izozoDBConnection"].ConnectionString);

        OdbcDataAdapter sda = new OdbcDataAdapter("SELECT * FROM tblItem WHERE (itemName like '%" + txtSearch.Text + "%') OR (itemID like '%"+txtSearch.Text+"%')", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        


    }
}
    
