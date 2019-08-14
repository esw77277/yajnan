using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for ParliamentDAL
/// </summary>
public class ParliamentDAL
{
    public ParliamentDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public List<oParliment> andhraParliments()
    {
        try
        {
            Database DB = DatabaseFactory.CreateDatabase();
            DbCommand dbCom = DB.GetStoredProcCommand("GET_ANDHRA_PAR");

            DataSet Objds = DB.ExecuteDataSet(dbCom);
            List<oParliment> objwishselect = Objds.Tables[0].AsEnumerable().Select(row => new oParliment
            {
                AP_P_ID = row.Field<Int32?>("AP_P_ID").GetValueOrDefault(),
                PARLIAMENT_NAME = String.IsNullOrEmpty(row.Field<string>("PARLIAMENT_NAME")) ? "" : row.Field<string>("PARLIAMENT_NAME"),
                BJP = String.IsNullOrEmpty(row.Field<string>("BJP")) ? "" : row.Field<string>("BJP"),
                INC = String.IsNullOrEmpty(row.Field<string>("INC")) ? "" : row.Field<string>("INC"),
                TDP = String.IsNullOrEmpty(row.Field<string>("TDP")) ? "" : row.Field<string>("TDP"),
                YSRCP = String.IsNullOrEmpty(row.Field<string>("YSRCP")) ? "" : row.Field<string>("YSRCP"),
                JANASENA = String.IsNullOrEmpty(row.Field<string>("JANASENA")) ? "" : row.Field<string>("JANASENA"),
                OTHERS = String.IsNullOrEmpty(row.Field<string>("OTHERS")) ? "" : row.Field<string>("OTHERS")


            }).ToList();

            return objwishselect;
        }
        catch (Exception ex)
        {
            throw ex; ;
        }
    }


    public List<oParliment> telanganaParliments()
    {
        try
        {
            Database DB = DatabaseFactory.CreateDatabase();
            DbCommand dbCom = DB.GetStoredProcCommand("GET_TELANGANA_PAR");

            DataSet Objds = DB.ExecuteDataSet(dbCom);
            List<oParliment> objwishselect = Objds.Tables[0].AsEnumerable().Select(row => new oParliment
            {
                T_P_ID = row.Field<Int32?>("T_P_ID").GetValueOrDefault(),
                PARLIAMENT_NAME = String.IsNullOrEmpty(row.Field<string>("PARLIAMENT_NAME")) ? "" : row.Field<string>("PARLIAMENT_NAME"),
                BJP = String.IsNullOrEmpty(row.Field<string>("BJP")) ? "" : row.Field<string>("BJP"),
                INC = String.IsNullOrEmpty(row.Field<string>("INC")) ? "" : row.Field<string>("INC"),
                OTHERS = String.IsNullOrEmpty(row.Field<string>("OTHERS")) ? "" : row.Field<string>("OTHERS"),
                TRS = String.IsNullOrEmpty(row.Field<string>("TRS")) ? "" : row.Field<string>("TRS")
            }).ToList();

            return objwishselect;
        }
        catch (Exception ex)
        {
            throw ex; ;
        }
    }


    public void Maildal(string subject, string body, string tomail)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.IsBodyHtml = true;
        myMessage.Subject = subject;
        myMessage.Body = body;
        myMessage.From = (new MailAddress("electionMonk@gmail.com"));
        myMessage.To.Add(new MailAddress(tomail));
        SmtpClient mySmtpClient = new SmtpClient();
        mySmtpClient.Send(myMessage);
    }


    public List<oParliment> ApPredictions()
    {
        try
        {
            Database DB = DatabaseFactory.CreateDatabase();
            DbCommand dbCom = DB.GetStoredProcCommand("GET_ALL_AP_PARLIMENT_PREDITS");

            DataSet Objds = DB.ExecuteDataSet(dbCom);
            List<oParliment> objwishselect = Objds.Tables[0].AsEnumerable().Select(row => new oParliment
            {
                AP_P_ID = row.Field<Int32?>("AP_PAR_PRED_ID").GetValueOrDefault(),
                Uemail = String.IsNullOrEmpty(row.Field<string>("USER_EMAIL")) ? "" : row.Field<string>("USER_EMAIL"),
                Shortcode = String.IsNullOrEmpty(row.Field<string>("SHORT_CODE")) ? "" : row.Field<string>("SHORT_CODE"),
                Userpredicts = String.IsNullOrEmpty(row.Field<string>("PREDICTIONS")) ? "" : row.Field<string>("PREDICTIONS"),

            }).ToList();

            return objwishselect;
        }
        catch (Exception ex)
        {
            throw ex; ;
        }
    }

    public void apUserPredicts(oParliment entities)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("insert_AP_PARLIMENT_PREDICTIONS");
        DB.AddInParameter(dbCom, "@USER_EMAIL", DbType.String, entities.Uemail);
        DB.AddInParameter(dbCom, "@SHORT_CODE", DbType.String, entities.Shortcode);
        DB.AddInParameter(dbCom, "@PREDICTIONS", DbType.String, entities.Userpredicts);
        DB.ExecuteNonQuery(dbCom);
    }



    public List<oParliment> gETtelaPredictions()
    {
        try
        {
            Database DB = DatabaseFactory.CreateDatabase();
            DbCommand dbCom = DB.GetStoredProcCommand("GET_ALL_TELANGANA_PARLIMENT_PREDITS");

            DataSet Objds = DB.ExecuteDataSet(dbCom);
            List<oParliment> objwishselect = Objds.Tables[0].AsEnumerable().Select(row => new oParliment
            {
                T_P_ID = row.Field<Int32?>("T_P_PRED").GetValueOrDefault(),
                Uemail = String.IsNullOrEmpty(row.Field<string>("USER_EMAIL")) ? "" : row.Field<string>("USER_EMAIL"),
                Shortcode = String.IsNullOrEmpty(row.Field<string>("SHORT_CODE")) ? "" : row.Field<string>("SHORT_CODE"),
                Userpredicts = String.IsNullOrEmpty(row.Field<string>("USER_PREDICTS")) ? "" : row.Field<string>("USER_PREDICTS"),

            }).ToList();

            return objwishselect;
        }
        catch (Exception ex)
        {
            throw ex; ;
        }
    }


    public void savetelanagapredicts(oParliment entities)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("insert_TELANAGANA_PARLIMENT_PREDICTIONS");
        DB.AddInParameter(dbCom, "@USER_EMAIL", DbType.String, entities.Uemail);
        DB.AddInParameter(dbCom, "@SHORT_CODE", DbType.String, entities.Shortcode);
        DB.AddInParameter(dbCom, "@PREDICTIONS", DbType.String, entities.Userpredicts);
        DB.ExecuteNonQuery(dbCom);
    }

}