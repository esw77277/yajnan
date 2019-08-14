using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class emonk : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["email"] != null)
        {
           // btnlogout.Visible = true;
            btnprofile.Text = Session["email"].ToString();
           // lilgnlgut.Visible = false;
            btnprofile.Visible = false;
        }
        
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Session.RemoveAll();
        Response.Redirect("login.aspx");
    }
}
