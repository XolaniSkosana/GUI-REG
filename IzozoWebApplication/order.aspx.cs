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
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["izozoDBConnection"].ConnectionString);
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
        OdbcDataAdapter sda = new OdbcDataAdapter("SELECT * FROM tblItem WHERE (itemCategory LIKE 'Grocery%')", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList3.DataSourceID = null;
        DataList3.DataSource = dt;
        DataList3.DataBind();
    }

    protected void btnFruits_Click(object sender, EventArgs e)
    {
        OdbcDataAdapter sda = new OdbcDataAdapter("SELECT * FROM tblItem WHERE (itemCategory LIKE 'Grocery-fruit')", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList3.DataSourceID = null;
        DataList3.DataSource = dt;
        DataList3.DataBind();

    }

    protected void btnVeg_Click(object sender, EventArgs e)
    {
        OdbcDataAdapter sda = new OdbcDataAdapter("SELECT * FROM tblItem WHERE (itemCategory LIKE 'Grocery-vegetables')", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList3.DataSourceID = null;
        DataList3.DataSource = dt;
        DataList3.DataBind();
    }

    protected void btnBakery_Click(object sender, EventArgs e)
    {
        OdbcDataAdapter sda = new OdbcDataAdapter("SELECT * FROM tblItem WHERE (itemCategory LIKE 'Grocery-bakery')", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList3.DataSourceID = null;
        DataList3.DataSource = dt;
        DataList3.DataBind();
    }

    protected void btnGroc_Click(object sender, EventArgs e)
    {
        OdbcDataAdapter sda = new OdbcDataAdapter("SELECT * FROM tblItem WHERE (itemCategory LIKE 'Grocery-other')", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList3.DataSourceID = null;
        DataList3.DataSource = dt;
        DataList3.DataBind();
    }

    protected void btnBev_Click(object sender, EventArgs e)
    {
        OdbcDataAdapter sda = new OdbcDataAdapter("SELECT * FROM tblItem WHERE (itemCategory LIKE 'Grocery-beverages')", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList3.DataSourceID = null;
        DataList3.DataSource = dt;
        DataList3.DataBind();
    }

    protected void btndairy_Click(object sender, EventArgs e)
    {
        OdbcDataAdapter sda = new OdbcDataAdapter("SELECT * FROM tblItem WHERE (itemCategory LIKE 'Grocery-dairy')", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList3.DataSourceID = null;
        DataList3.DataSource = dt;
        DataList3.DataBind();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
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
        

        //Datalist1
        OdbcDataAdapter sda = new OdbcDataAdapter("SELECT * FROM tblOutlet WHERE (outletName like '%" + txtSearch.Text + "%')", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count == 0)
        {
           

        }
        DataList1.DataSourceID = null;
        DataList1.DataSource = dt;
        DataList1.DataBind();

        //Datalist2
        OdbcDataAdapter sda2 = new OdbcDataAdapter("SELECT * FROM tblItem WHERE (itemName like '%" + txtSearch.Text + "%')", conn);
        DataTable dt2 = new DataTable();
        sda2.Fill(dt2);
        DataList2.DataSourceID = null;
        DataList2.DataSource = dt2;
        DataList2.DataBind();


    }

    protected void izozoDS_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void izozoDS3_Selecting(object sender, SqlDataSourceSelectingEventArgs e)

    {


        //String query = "Select * from tblItem where itemDesc LIKE 'Grocery%'";
       
        //OdbcCommand cmd = new OdbcCommand(query, conn);
    
        //conn.Open();
        //OdbcDataReader r = cmd.ExecuteReader();

        //if(!Convert.IsDBNull(r["itemImage"]))
        //{
        //    byte[] bytes = (byte[])r[null];
        //}

        //if (!Convert.IsDBNull(r[query]))
        //{
        //    byte[] bytes  = (byte[]) r["null"];
        //}
    }

    protected void Image2_Load(object sender, EventArgs e)
    {
        //String query = "Select * from tblItem where itemDesc LIKE 'Grocery' "+ '";

        //OdbcCommand cmd = new OdbcCommand(query, conn);

        //conn.Open();
        //OdbcDataReader r = cmd.ExecuteReader();

        //if (!Convert.IsDBNull(r["itemImage"]))
        //{
        //    String imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])r["itemImage"]);
        //    // do other things
        //}
        //else
        //{
        //    // do something else
        //}

    }

    protected void btnView_Click(object sender, EventArgs e)
    {
        

        ;
        //Response.Redirect("~/Default2.aspx");
        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript",
               "alert('Welcome ' + Session['Product']); window.location='order.aspx';", true);
    }

    protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName == "ViewProduct")
        {
            Session["Product"] = e.CommandArgument;
        }
        Response.Redirect("product.aspx?itemName= "+e.CommandArgument+"");
    }
}
    
