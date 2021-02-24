using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string userNameText
    {
        get
        {
            return custUsername.Text;
        }
        set
        {
            custUsername.Text = value;
            
        }
    }
    public LinkButton loginButton
    {
        get
        {
            return this.loginButto;
        }
        
        
    }
    public LinkButton LogOutbt
    {
        get
        {
            return this.LogOutbtn;
        }


    }


}
