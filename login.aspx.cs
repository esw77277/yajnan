using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    ConsistencyDAL dAL = new ConsistencyDAL();
    List<oAPCONSISTENCIES> aPCONSISTENCIEs = new List<oAPCONSISTENCIES>();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        aPCONSISTENCIEs = dAL.Userslist();
        Session["email"] = txtemail.Text;
        Session["pwd"] = txtpwd.Text;
        if (Session["email"]!=null && Session["pwd"]!=null)
        {
            foreach (var item in aPCONSISTENCIEs.Where(y => y.Useremail == txtemail.Text))
            {
                
                if (item.Useremail == txtemail.Text && item.Userpwd == txtpwd.Text)
                {
                    Session["userid"] = item.Userid;
                    // txtueremailmsg.Text = "Login";
                    Response.Redirect("index.aspx");
                }
                else if (item.Useremail != txtemail.Text || item.Userpwd != txtpwd.Text)
                {
                    Label1.Text = "Invalid Credentials";
                }

            }
        }
        else if (Session["email"] == null || Session["pwd"] == null)
        {
            Response.Redirect("login.aspx");
        }
       
       
    }
}