using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class profile : System.Web.UI.Page
{
    oAPCONSISTENCIES aPCONSISTENCIES = new oAPCONSISTENCIES();
    List<oAPCONSISTENCIES> aPCONSISTENCIEs = new List<oAPCONSISTENCIES>();
    ConsistencyDAL dAL = new ConsistencyDAL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"]==null)
        {
            Response.Redirect("login.aspx");
        }
        else if (Session["email"] != null)
        {
            BindProfile(email: Session["email"].ToString());
        }
                
        
    }

    public void BindProfile(string email)
    {
        aPCONSISTENCIEs = dAL.Userslist();
        foreach (var item in aPCONSISTENCIEs.Where(y=>y.Useremail==email))
        {
            txtemail.Text = item.Useremail;
            txtpwd.Text = item.Userpwd;
        }
    }
}