using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contactus : System.Web.UI.Page
{
    
    Contact objcontact = new Contact();
    ContactusDAL objcontactdal = new ContactusDAL();
    ConsistencyDAL constDal = new ConsistencyDAL();
    string Ipaddress;

    protected void Page_Load(object sender, EventArgs e)
    {
        alertmod.Visible = false;

    }

    public string getIpAddFun()
    {
        string hostName = Dns.GetHostName(); // Retrive the Name of HOST  
        Console.WriteLine(hostName);
        // Get the IP  
#pragma warning disable CS0618 // Type or member is obsolete
        string myIP = Dns.GetHostByName(hostName).AddressList[0].ToString();
#pragma warning restore CS0618 // Type or member is obsolete
        return myIP;
    }
    private string MailContent(string ip)
    {
        string textbody = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/Mail_Templates/contactus.html")))
        {
            textbody = reader.ReadToEnd();
        }
        textbody = textbody.Replace("[subject]", txtsubject.Text);
        textbody = textbody.Replace("[Name]", txtUserName.Text);

        textbody = textbody.Replace("[body]", txtbody.Text);
        textbody = textbody.Replace("[mail]", txtmail.Text);
        textbody = textbody.Replace("[mobile]", txtmobile.Text);
        textbody = textbody.Replace("[ip]", ip);
        return textbody;
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        objcontact.Email = txtmail.Text;
        objcontact.Name = txtUserName.Text;
        objcontact.Mobile = txtmobile.Text;
        objcontact.Subject = txtsubject.Text;
        objcontact.IpAddress = getIpAddFun();
        objcontactdal.User_reg(objcontact);
        string userIP = objcontact.IpAddress;
        objcontactdal.Maildal(subject:"From Contact Form of ElectionMonk", body: MailContent(userIP), tomail: "sandeep@techbytesinc.com");
        //sandeep@techbytesinc.com

        clear();
        Response.Redirect("thankyou.aspx");


    }

    public void clear()
    {
        txtUserName.Text = "";
        txtmail.Text = "";
        txtmobile.Text = "";
        txtsubject.Text = "";
        txtbody.Text = "";
    }
}