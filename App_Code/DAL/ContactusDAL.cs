using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for ContactusDAL
/// </summary>
public class ContactusDAL
{
    public ContactusDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public void User_reg(Contact entites)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("ASP_INSERT_CONTACTFORM");
        DB.AddInParameter(dbCom, "@NAME", DbType.String, entites.Name);
        DB.AddInParameter(dbCom, "@MAILID", DbType.String, entites.Email);
        DB.AddInParameter(dbCom, "@MOBILE", DbType.String, entites.Mobile);
        DB.AddInParameter(dbCom, "@SUBJECT", DbType.String, entites.Subject);
        DB.AddInParameter(dbCom, "@CREA_BY", DbType.String, entites.IpAddress);

        DB.ExecuteNonQuery(dbCom);
    }

    public void Maildal(string subject, string body, string tomail)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.IsBodyHtml = true;
        myMessage.Subject = subject;
        myMessage.Body = body;
        myMessage.CC.Add("saroopya@techbytesinc.com");
       myMessage.Bcc.Add("anilkumar@supremenetsoft.com");
        myMessage.From = (new MailAddress("electionMonk@gmail.com"));
        myMessage.To.Add(new MailAddress(tomail));
        SmtpClient mySmtpClient = new SmtpClient();
        mySmtpClient.Send(myMessage);
    }

}