using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        commentPanel.Visible = false;
        reviewPanel.Visible = true;

        
    }

    protected void Button67_Click(object sender, EventArgs e)
    {
        int quantity = int.Parse(Button68.Text);
      
        if (quantity > 1)
        {
            quantity--;
        }
        else {
            quantity = 0;
        }
        Button68.Text = quantity.ToString();
           
    }

    protected void Button69_Click(object sender, EventArgs e)
    {
        int quantity = int.Parse(Button68.Text);


        quantity++;
            
        Button68.Text = quantity.ToString();
    }

    protected void appleReviewButton_Click(object sender, EventArgs e)
    {
        appleReviewPanel1.Visible = false;
        reviewApplePanel.Visible = true;
        
    }

    protected void bananaReviewButton_Click(object sender, EventArgs e)
    {
        bananaReviewPanel1.Visible = false;
        bananaReviewPanel2.Visible = true;
    }

    protected void orangesReviewButton_Click(object sender, EventArgs e)
    {
        orangesReviewPanel1.Visible = false;
        orangesReviewPanel2.Visible = true;
    }

    protected void spinachReviewButton_Click(object sender, EventArgs e)
    {
        spinachReviewPanel1.Visible = false;
        spinachReviewPanel2.Visible = true;
    }

    protected void tomatoesReviewButton1_Click(object sender, EventArgs e)
    {
        tomatoesReviewPanel1.Visible = false;
        tomatoesReviewPanel2.Visible = true;
    }

    protected void cabbageReviewButton_Click(object sender, EventArgs e)
    {

        cabbageReviewPanel1.Visible = false;
        cabbageReviewPanel2.Visible = true;
    }

    protected void cakeReviewButton_Click(object sender, EventArgs e)
    {
        cakeReviewPanel1.Visible = false;
        cakeReviewPanel2.Visible = true;
    }

    protected void Button126_Click(object sender, EventArgs e)
    {

    }

    protected void breadReviewButton_Click(object sender, EventArgs e)
    {
        breadReviewPanel1.Visible = false;
        breadReviewPanel2.Visible = true;
    }

    protected void muffinsReviewButton_Click(object sender, EventArgs e)
    {
        muffinsReviewPanel1.Visible = false;
        muffinsReviewPanel2.Visible = true;
    }

    protected void cookingOilReviewButton_Click(object sender, EventArgs e)
    {
        cookingOilReviewPanel1.Visible = false;
        cookingOilReviewPanel2.Visible = true;
    }

    protected void toiletPReviewButton_Click(object sender, EventArgs e)
    {
        toiletPReviewPanel1.Visible = false;
        toiletPReviewPanel2.Visible = true;
    }

    protected void fantaGrapeReviewButton_Click(object sender, EventArgs e)
    {
        fantaGrapeReviewPanel1.Visible = false;
        fantaGrapeReviewPanel2.Visible = true;
    }

    protected void wineReviewButton_Click(object sender, EventArgs e)
    {
        wineReviewPanel1.Visible = false;
        wineReviewPanel2.Visible = true;
    }

    protected void fruitJuiceReviewButton_Click(object sender, EventArgs e)
    {
        fruitJuiceReviewPanel1.Visible = false;
        fruitJuiceReviewPanel2.Visible = true;
    }

    protected void cheeseReviewButton_Click(object sender, EventArgs e)
    {
        cheeseReviewPanel1.Visible = false;
        cheeseReviewPanel2.Visible = true;
    }

    protected void milkReviewButton_Click(object sender, EventArgs e)
    {
        milkReviewPanel1.Visible = false;
        milkReviewPanel2.Visible = true;
    }

    protected void yoghurtReviewButton_Click(object sender, EventArgs e)
    {
        yoghurtReviewPanel1.Visible = false;
        yoghurtReviewPanel2.Visible = true;
    }

    protected void Button167_Click(object sender, EventArgs e)
    {
        int quantity = int.Parse(milkQuantity.Text);
        


        quantity++;

        milkQuantity.Text = quantity.ToString();
    }

    protected void btnQuantity1_Click(object sender, EventArgs e)
    {
        int quantity = int.Parse(lblQuantity.Text);

        if (quantity > 0)
        {
            quantity = quantity - 1;

        }
        else
        {
            quantity = 0;
        }
        lblQuantity.Text = quantity.ToString();
    }

    protected void btnQuantity2_Click(object sender, EventArgs e)
    {
        int quantity = int.Parse(lblQuantity.Text);
        quantity++;
        lblQuantity.Text = quantity.ToString();
    }

    protected void BananasPanel_Load(object sender, EventArgs e)
    {
       
    }
}
