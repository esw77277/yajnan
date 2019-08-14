using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userreg : System.Web.UI.Page
{
    public List<oAPCONSISTENCIES> aPCONSISTENCIEs;
    ConsistencyDAL dAL = new ConsistencyDAL();
    oAPCONSISTENCIES entities = new oAPCONSISTENCIES();
    int emailcount;
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnreg_Click(object sender, EventArgs e)
    {
        aPCONSISTENCIEs = dAL.Userslist();
        emailcount = aPCONSISTENCIEs.Count(x => x.Useremail == txtemail.Text);
        if (emailcount == 0)
        {
            entities.Useremail = txtemail.Text;
            entities.Userpwd = txtpwd.Text;
            dAL.User_reg(entities);
           // dAL.Maildal(subject: "SNPL", body: "Username:" + txtemail.Text + "<br/>" + "Password:" + txtpwd.Text, tomail: txtemail.Text);
            alertt.Visible = true;
            alertmsg.InnerText = "Registered Successfully";
        }
        else if (emailcount >= 1)
        {
            txtueremailmsg.Text = "Already Registered";
            txtueremailmsg.ForeColor = System.Drawing.Color.Orange;
        }

    }
}