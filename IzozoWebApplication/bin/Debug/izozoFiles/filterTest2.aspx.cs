using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class filterTest2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = true;
        vegetabalesPanel.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = true;
        vegetabalesPanel.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegetabalesPanel.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegetabalesPanel.Visible = false;

    }

    protected void all_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = true;
        vegetabalesPanel.Visible = true;
        bakeryPanel.Visible = true;
        groceryPanel.Visible = true;
        beveragesPanel.Visible = true;
        eggdairyPanel.Visible = true;
    }

    protected void btnFruits_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = true;
        vegetabalesPanel.Visible = false;
        bakeryPanel.Visible = false;
        groceryPanel.Visible = false;
        beveragesPanel.Visible = false;
        eggdairyPanel.Visible = false;
    }

    protected void btnVeg_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegetabalesPanel.Visible = true;
        bakeryPanel.Visible = false;
        groceryPanel.Visible = false;
        beveragesPanel.Visible = false;
        eggdairyPanel.Visible = false;
    }

    protected void btnBakery_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegetabalesPanel.Visible = false;
        bakeryPanel.Visible = false;
        groceryPanel.Visible = false;
        beveragesPanel.Visible = false;
        eggdairyPanel.Visible = true;
    }

    protected void btnGroc_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegetabalesPanel.Visible = false;
        bakeryPanel.Visible = false;
        groceryPanel.Visible = true;
        beveragesPanel.Visible = false;
        eggdairyPanel.Visible = false;
    }

    protected void btnBev_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegetabalesPanel.Visible = false;
        bakeryPanel.Visible = false;
        groceryPanel.Visible = false;
        beveragesPanel.Visible = true;
        eggdairyPanel.Visible = false;
    }

    protected void btndairy_Click(object sender, EventArgs e)
    {
        fruitsPanel.Visible = false;
        vegetabalesPanel.Visible = false;
        bakeryPanel.Visible = false;
        groceryPanel.Visible = false;
        beveragesPanel.Visible = false;
        eggdairyPanel.Visible = true;
    }
}