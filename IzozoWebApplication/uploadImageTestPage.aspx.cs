using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.Odbc;

public partial class uploadImageTestPage : System.Web.UI.Page
{
    
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["izozoDBConnection"].ConnectionString);


    protected void Page_Load(object sender, EventArgs e)
    {
        string str = "SELECT itemImage FROM tblItem WHERE itemName = 'PAPAS'";
      
        OdbcDataAdapter da = new OdbcDataAdapter(str,conn);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count == 1)
        {
            
        }

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        OdbcDataAdapter sda = new OdbcDataAdapter("SELECT * FROM tblItem WHERE (itemName like '%" + txt1.Text + "%')", conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        DataList1.DataSourceID = null;
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}