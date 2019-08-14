using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

/// <summary>
/// Summary description for apelection
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class apelection : System.Web.Services.WebService
{
    JavaScriptSerializer js = new JavaScriptSerializer();
    ParliamentDAL dAL = new ParliamentDAL();
    public apelection()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    public class Mail
    {
        string _tomail;
        string _subject;
        string _body;
        string _sharelink;

        public string Tomail
        {
            get
            {
                return _tomail;
            }

            set
            {
                _tomail = value;
            }
        }

        public string Subject
        {
            get
            {
                return _subject;
            }

            set
            {
                _subject = value;
            }
        }

        public string Body
        {
            get
            {
                return _body;
            }

            set
            {
                _body = value;
            }
        }

        public string Sharelink
        {
            get
            {
                return _sharelink;
            }

            set
            {
                _sharelink = value;
            }
        }
    }

    [WebMethod]
    public void UserPredicts(oAPCONSISTENCIES entities)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("USER_PREDICTS_SAVING");
        DB.AddInParameter(dbCom, "@USERID", DbType.Int32, entities.Userid);
        DB.AddInParameter(dbCom, "@USER_PREDICTIONS", DbType.String, entities.Userpredicts);
        DB.AddInParameter(dbCom, "@DIST_ID", DbType.Int32, entities.Dist_id);

        DB.ExecuteNonQuery(dbCom);
    }

    [WebMethod]
    public void UserPredictsS(string Upredicts, int did, int uid)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("USER_PREDICTS_SAVING");
        DB.AddInParameter(dbCom, "@USERID", DbType.Int32, uid);
        DB.AddInParameter(dbCom, "@USER_PREDICTIONS", DbType.String, Upredicts);
        DB.AddInParameter(dbCom, "@DIST_ID", DbType.Int32, did);

        DB.ExecuteNonQuery(dbCom);
    }

    [WebMethod]
    public void Mailmethod(Mail mail)
    {
        apelection Parent = new apelection();
        MailMessage myMessage = new MailMessage();
        myMessage.IsBodyHtml = true;
        myMessage.Subject = "Your prediction at ElectionMonk";
        myMessage.Body = Parent.MailContent(mail.Sharelink);
        myMessage.From = (new MailAddress("electionMonk@gmail.com"));
        myMessage.To.Add(new MailAddress(mail.Tomail));
        SmtpClient mySmtpClient = new SmtpClient();
        mySmtpClient.Send(myMessage);
    }

    private string MailContent(string msg)
    {
        string textbody = string.Empty;
        using (StreamReader reader = new StreamReader(Server.MapPath("~/Mail_Templates/sharecode.html")))
        {
            textbody = reader.ReadToEnd();
        }
        textbody = textbody.Replace("[url]", msg);
        textbody = textbody.Replace("[fburl]", "https://www.facebook.com/sharer.php?u=" + msg);
        textbody = textbody.Replace("[waurl]", "https://wa.me/?text=" + msg);
        return textbody;
    }


    // [WebMethod]
    //public void Mailmethod(Mail mail)
    //{
    //    dAL.Maildal(subject: mail.Subject, body: mail.Body, tomail: mail.Tomail);
    //}

    [WebMethod]
    public void apuserPredicts()
    {
        Context.Response.Write(js.Serialize(dAL.ApPredictions()));
    }
    [WebMethod]
    public void saveapparliment(oParliment parliment)
    {
        dAL.apUserPredicts(parliment);
    }

    [WebMethod]
    public void telanganauserPredicts()
    {
        Context.Response.Write(js.Serialize(dAL.gETtelaPredictions()));
    }
    [WebMethod]
    public void savetelaanganaparliment(oParliment parliment)
    {
        dAL.savetelanagapredicts(parliment);
    }

    [WebMethod]
    public void dIstpredicts_duplicate(oAPCONSISTENCIES entities)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("INSERT_US_PRED_DIST_DUPLICATES");
        DB.AddInParameter(dbCom, "@U_EMAIL", DbType.String, entities.Useremail);
        DB.AddInParameter(dbCom, "@U_PREDICTS", DbType.String, entities.Userpredicts);
        DB.AddInParameter(dbCom, "@SHORTCODE", DbType.String, entities.Shot_code);
        DB.AddInParameter(dbCom, "@DIST_ID", DbType.Int16, entities.Dist_id);
        DB.ExecuteNonQuery(dbCom);
    }

    [WebMethod]
    public void dIstpredicts_dplicate(string uemail, string scode, string up, int id)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("INSERT_US_PRED_DIST_DUPLICATES");
        DB.AddInParameter(dbCom, "@U_EMAIL", DbType.String, uemail);
        DB.AddInParameter(dbCom, "@U_PREDICTS", DbType.String, up);
        DB.AddInParameter(dbCom, "@SHORTCODE", DbType.String, scode);
        DB.AddInParameter(dbCom, "@DIST_ID", DbType.Int16, id);
        DB.ExecuteNonQuery(dbCom);
    }

}
