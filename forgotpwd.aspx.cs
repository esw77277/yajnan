using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forgotpwd : System.Web.UI.Page
{
    oAPCONSISTENCIES aPCONSISTENCIES = new oAPCONSISTENCIES();
    List<oAPCONSISTENCIES> aPCONSISTENCIEs = new List<oAPCONSISTENCIES>();
    ConsistencyDAL dAL = new ConsistencyDAL();
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsendmail_Click(object sender, EventArgs e)
    {
        try
        {
            aPCONSISTENCIEs = dAL.Userslist();
            i = aPCONSISTENCIEs.Count(x => x.Useremail == txtemail.Text);
            if (i == 1)
            {
                foreach (var item in aPCONSISTENCIEs.Where(y => y.Useremail == txtemail.Text))
                {
                    dAL.Maildal(subject: "Password Reset", body: "Password:" + item.Userpwd, tomail: txtemail.Text);
                }
                lblmsg.Text = "Your password is sent to your e-mail";
                lblmsg.BackColor = System.Drawing.Color.Green;
            }
            else if (i==0)
            {
                lblmsg.Text = "Your details are not matched to our records";
                lblmsg.BackColor = System.Drawing.Color.Orange;
            }
        }
        catch (Exception)
        {

            throw;
        }

    }
}