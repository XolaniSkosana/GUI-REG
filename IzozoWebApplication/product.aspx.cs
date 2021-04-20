using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Odbc;
using System.Configuration;

public partial class product : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["izozoDBConnection"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            setImageUrl();
        }
        
        if (Session["Product"] != null)
        {
            OdbcDataAdapter sda = new OdbcDataAdapter("SELECT * FROM tblItem WHERE (itemName = '" + Session["Product"] + "')", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();

        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript",
                "alert('Session is null!'); window.location='order.aspx';", true);
            //Response.Write("Session is null");
            
        }

        if (!IsPostBack)
        {
            DataTable dt = this.GetData("SELECT IFNULL(AVG(ratingNo), 0) AverageRating, COUNT(ratingNo) RatingCount FROM tblreview");
            foreach (DataListItem controls in DataList1.Items)
            {
                Label lbresult = (Label)(controls.FindControl("lbresult"));
                lbresult.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
                AjaxControlToolkit.Rating Rating1 = (AjaxControlToolkit.Rating)(controls.FindControl("Rating1"));
                Rating1.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);

            }

        }


    }
    private DataTable GetData(string query)
    {

        //OdbcConnection con = new OdbcConnection(conn);
        OdbcCommand cmd = new OdbcCommand(query);
        OdbcDataAdapter sda = new OdbcDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = conn;
        sda.SelectCommand = cmd;
        sda.Fill(dt);
        return dt;
    }
    

    protected void DataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }



    protected void Unnamed1_Tick(object sender, EventArgs e)
    {
        setImageUrl();
    }

    private void setImageUrl()
    {
        
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void reviewButton_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button19_Click(object sender, EventArgs e)
    {

    }

    protected void btnMinus_Click(object sender, EventArgs e)
    {
        foreach (DataListItem item in DataList1.Items)
        {
            Label lblQuantity = (Label)item.FindControl("lblQuantity");
            int quantity = int.Parse(lblQuantity.Text);
            if (quantity > 0)
            {
                quantity = quantity - 1;
                lblQuantity.Text = quantity.ToString();
            }
            else
            {
                quantity = 0;
                lblQuantity.Text = quantity.ToString();
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        foreach (DataListItem item in DataList1.Items)
        {
            Label lblQuantity = (Label)item.FindControl("lblQuantity");
            int quantity = int.Parse(lblQuantity.Text);
            quantity = quantity + 1;
            lblQuantity.Text = quantity.ToString();

        }
    }

    protected void DataSource1_Selecting1(object sender, SqlDataSourceSelectingEventArgs e)
    {
        

        
        
        
    }

    protected void btnAdd_Click1(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        


        //Label lblQuantity = (Label)e.Item.FindControl("lblQuantity");
        //    int quantity = int.Parse(lblQuantity.Text);

        //if (e.CommandName == "addItem")
        //{
        //    quantity = quantity + 1;
        //    lblQuantity.Text = quantity.ToString();
        //}





        //if (e.CommandName == "minusItem")
        //    {
                
        //        if (quantity > 0)
        //        {
        //            quantity = quantity - 1;
        //        lblQuantity.Text = quantity.ToString();
        //    }
        //        else
        //        {
        //         quantity = 0;
        //        lblQuantity.Text = quantity.ToString();
        //    }
        //    }
            

        
    }





    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        TextBox txtreview;
        AjaxControlToolkit.Rating Rating1;
        foreach (DataListItem item in DataList1.Items)
        {
            txtreview = (TextBox)(item.FindControl("txtreview"));
            Rating1 = (AjaxControlToolkit.Rating)(item.FindControl("Rating1"));

            if(Rating1!= null || txtreview != null)
            {
                OdbcCommand cmd = new OdbcCommand("insert into tblreview (ratingNo, reviewText) values ('" + Rating1.CurrentRating.ToString() + "','" + txtreview.Text + "')");
                OdbcDataAdapter sda = new OdbcDataAdapter();
                cmd.CommandType = CommandType.Text;

                cmd.Connection = conn;

                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect(Request.Url.AbsoluteUri);
            }
        }
        
    }
}
