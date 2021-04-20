using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Odbc;
using System.Configuration;

using AjaxControlToolkit;

public partial class TestRating : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    OdbcConnection conn = new OdbcConnection(ConfigurationManager.ConnectionStrings["izozoDBConnection"].ConnectionString);
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
            if (!IsPostBack)
            {
                DataTable dt = this.GetData("SELECT IFNULL(AVG(ratingNo), 0) AverageRating, COUNT(ratingNo) RatingCount FROM tblreview");
                Rating1.CurrentRating = Convert.ToInt32(dt.Rows[0]["AverageRating"]);
                lbresult.Text = string.Format("{0} Users have rated. Average Rating {1}", dt.Rows[0]["RatingCount"], dt.Rows[0]["AverageRating"]);
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
    protected void Rating1_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        //OdbcConnection con = new OdbcConnection(conn);
        OdbcCommand cmd = new OdbcCommand("insert into tblreview (ratingNo, reviewText) values ('" + Rating1.CurrentRating.ToString()+"','"+ txtreview.Text+"')");
        OdbcDataAdapter sda = new OdbcDataAdapter();
        cmd.CommandType = CommandType.Text;
        //cmd.Parameters.AddWithValue("@ratingNo", Rating1.CurrentRating.ToString());
        //cmd.Parameters.AddWithValue("@reviewText", txtreview.Text);
        cmd.Connection = conn;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Redirect(Request.Url.AbsoluteUri);
    }
}