using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
}