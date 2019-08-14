using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Summary description for ConsistencyDAL
/// </summary>
public class ConsistencyDAL
{
    public ConsistencyDAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }   

    public List<oAPCONSISTENCIES> GetWINNERSLIST()
    {
        try
        {
            Database DB = DatabaseFactory.CreateDatabase();
            DbCommand dbCom = DB.GetStoredProcCommand("GET_CONSTITUENCIES");
            
            DataSet Objds = DB.ExecuteDataSet(dbCom);
            List<oAPCONSISTENCIES> objwishselect = Objds.Tables[0].AsEnumerable().Select(row => new oAPCONSISTENCIES
            {
                ID = row.Field<Int32?>("ID").GetValueOrDefault(),
                Dist_id = row.Field<Int32?>("DID").GetValueOrDefault(),
                //DISTRICT_NAME = String.IsNullOrEmpty(row.Field<string>("DISTRICT_NAME")) ? "" : row.Field<string>("DISTRICT_NAME"),
                CONSTITUENCY_NAME = String.IsNullOrEmpty(row.Field<string>("CONSISTENCIES_NAME")) ? "" : row.Field<string>("CONSISTENCIES_NAME"),
                Tdp = String.IsNullOrEmpty(row.Field<string>("TDP")) ? "" : row.Field<string>("TDP"),
                Ysrcp = String.IsNullOrEmpty(row.Field<string>("YSRCP")) ? "" : row.Field<string>("YSRCP"),
                Janasena = String.IsNullOrEmpty(row.Field<string>("JANASENA")) ? "" : row.Field<string>("JANASENA"),
                Bjp = String.IsNullOrEmpty(row.Field<string>("BJP")) ? "" : row.Field<string>("BJP"),


            }).ToList();

            return objwishselect;
        }
        catch (Exception ex)
        {
            throw ex; ;
        }
    }

    public List<oAPCONSISTENCIES> Getdistdata()
    {
        try
        {
            Database DB = DatabaseFactory.CreateDatabase();
            DbCommand dbCom = DB.GetStoredProcCommand("GET_DIST");

            DataSet Objds = DB.ExecuteDataSet(dbCom);
            List<oAPCONSISTENCIES> objwishselect = Objds.Tables[0].AsEnumerable().Select(row => new oAPCONSISTENCIES
            {
                Dist_id = row.Field<Int32?>("ID").GetValueOrDefault(),
                Dist_Headquarter1 = String.IsNullOrEmpty(row.Field<string>("CAPITAL")) ? "" : row.Field<string>("CAPITAL"),
                Areatotal1 = String.IsNullOrEmpty(row.Field<string>("AREATOTAL")) ? "" : row.Field<string>("AREATOTAL"),
                PopulationTotal1 = String.IsNullOrEmpty(row.Field<string>("POPULATION_TOTAL")) ? "" : row.Field<string>("POPULATION_TOTAL"),
                PopDensity = String.IsNullOrEmpty(row.Field<string>("POP_DENSITY")) ? "" : row.Field<string>("POP_DENSITY"),
                Urban1 = String.IsNullOrEmpty(row.Field<string>("URBAN")) ? "" : row.Field<string>("URBAN"),
                VehicleReg = String.IsNullOrEmpty(row.Field<string>("VEHICLE_REG")) ? "" : row.Field<string>("VEHICLE_REG"),
                SvgMapPoints = String.IsNullOrEmpty(row.Field<string>("SVG_MAP_POINTS")) ? "" : row.Field<string>("SVG_MAP_POINTS"),
                DISTRICT_NAME = String.IsNullOrEmpty(row.Field<string>("DISTRICT_NAME")) ? "" : row.Field<string>("DISTRICT_NAME")

            }).ToList();

            return objwishselect;
        }
        catch (Exception ex)
        {
            throw ex; ;
        }
    }


    public List<oAPCONSISTENCIES> Userslist()
    {
        try
        {
            Database DB = DatabaseFactory.CreateDatabase();
            DbCommand dbCom = DB.GetStoredProcCommand("LISTOF_USERS");

            DataSet Objds = DB.ExecuteDataSet(dbCom);
            List<oAPCONSISTENCIES> objwishselect = Objds.Tables[0].AsEnumerable().Select(row => new oAPCONSISTENCIES
            {
                Userid = row.Field<Int32?>("U_ID").GetValueOrDefault(),
                Useremail = String.IsNullOrEmpty(row.Field<string>("U_EMAIL")) ? "" : row.Field<string>("U_EMAIL"),
                Userpredicts = String.IsNullOrEmpty(row.Field<string>("USER_PREDICTS")) ? "" : row.Field<string>("USER_PREDICTS"),
                Userpwd = String.IsNullOrEmpty(row.Field<string>("U_PWD")) ? "" : row.Field<string>("U_PWD"),
                Distwisepredicts = String.IsNullOrEmpty(row.Field<string>("DIST_WISE_PRED")) ? "" : row.Field<string>("DIST_WISE_PRED"),
                Dist_id = row.Field<Int32?>("dist_id").GetValueOrDefault(),
                Shot_code = String.IsNullOrEmpty(row.Field<string>("SHOT_CODE")) ? "" : row.Field<string>("SHOT_CODE"),


            }).ToList();

            return objwishselect;
        }
        catch (Exception ex)
        {
            throw ex; ;
        }
    }


    public void User_reg(oAPCONSISTENCIES entities)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("USER_REG");
        DB.AddInParameter(dbCom, "@U_EMAIL", DbType.String, entities.Useremail);
        DB.AddInParameter(dbCom, "@U_PWD", DbType.String, entities.Userpwd);
        DB.ExecuteNonQuery(dbCom);
    }
    public void UserPredicts(oAPCONSISTENCIES entities)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("USER_PREDICTS");
        DB.AddInParameter(dbCom, "@U_EMAIL", DbType.String, entities.Useremail);
        DB.AddInParameter(dbCom, "@U_PREDICT", DbType.String, entities.Userpredicts);
        DB.ExecuteNonQuery(dbCom);
    }

    public void Maildal(string subject,string body,string tomail)
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



    public List<oAPCONSISTENCIES> GeTSTATEdata()
    {
        try
        {
            Database DB = DatabaseFactory.CreateDatabase();
            DbCommand dbCom = DB.GetStoredProcCommand("GET_STATES");

            DataSet Objds = DB.ExecuteDataSet(dbCom);
            List<oAPCONSISTENCIES> objwishselect = Objds.Tables[0].AsEnumerable().Select(row => new oAPCONSISTENCIES
            {
                StateId = row.Field<Int32?>("ID").GetValueOrDefault(),
                STATE_NAME = String.IsNullOrEmpty(row.Field<string>("STATE_NAME")) ? "" : row.Field<string>("STATE_NAME"),


            }).ToList();

            return objwishselect;
        }
        catch (Exception ex)
        {
            throw ex; ;
        }
    }




    public List<oAPCONSISTENCIES> Userprdictslist()
    {
        try
        {
            Database DB = DatabaseFactory.CreateDatabase();
            DbCommand dbCom = DB.GetStoredProcCommand("GETaLLPREDICTS");

            DataSet Objds = DB.ExecuteDataSet(dbCom);
            List<oAPCONSISTENCIES> objwishselect = Objds.Tables[0].AsEnumerable().Select(row => new oAPCONSISTENCIES
            {
                Userid = row.Field<Int32?>("User_idd").GetValueOrDefault(),
                Userpredicts = String.IsNullOrEmpty(row.Field<string>("USER_PREDICTIONS")) ? "" : row.Field<string>("USER_PREDICTIONS"),
                Dist_id = row.Field<Int32?>("DIST_ID").GetValueOrDefault(),
                Shot_code = String.IsNullOrEmpty(row.Field<string>("short_code")) ? "" : row.Field<string>("short_code"),
                Useremail = String.IsNullOrEmpty(row.Field<string>("user_email")) ? "" : row.Field<string>("user_email"),
            }).ToList();

            return objwishselect;
        }
        catch (Exception ex)
        {
            throw ex; ;
        }
    }

    public void INSERT_USERS(oAPCONSISTENCIES entities)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("USP_INSERT_USERS");
        DB.AddInParameter(dbCom, "@U_EMAIL", DbType.String, entities.Useremail);
        DB.AddInParameter(dbCom, "@USER_PREDICTS", DbType.String, entities.Userpredicts);
        DB.AddInParameter(dbCom, "@SHOT_CODE", DbType.String, entities.Shot_code);
        DB.AddInParameter(dbCom, "@QUERY_STATUS", DbType.String, "CHECK");
        var rdr = DB.ExecuteReader(dbCom);
        if (rdr.Read())
        {
            entities.Query_status = rdr["QUERY_STATUS"].ToString();
        }
        rdr.Close();
        DB.ExecuteNonQuery(dbCom);
    }

    public void INSERT_USER_DIST_PREDICTIONS(oAPCONSISTENCIES entities)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("USP_INSERT_USER_DIST_PREDICTIONS");
        DB.AddInParameter(dbCom, "@DIST_ID", DbType.Int16, entities.Dist_id);
        DB.AddInParameter(dbCom, "@USER_EMAIL", DbType.String, entities.Useremail);
        DB.AddInParameter(dbCom, "@USER_PREDICTIONS", DbType.String, entities.Userpredicts);
        DB.AddInParameter(dbCom, "@SHORT_CODE", DbType.String, entities.Shot_code);
        DB.AddInParameter(dbCom, "@TDP", DbType.Int16, entities.Tdp_count);
        DB.AddInParameter(dbCom, "@YSRCP", DbType.Int16, entities.Ysrcp_count);
        DB.AddInParameter(dbCom, "@JANASENA", DbType.Int16, entities.Jsp_count);
        DB.AddInParameter(dbCom, "@BJP", DbType.Int16, entities.Bjp_count);
        DB.AddInParameter(dbCom, "@MAJORITY_COUNT", DbType.Int16, entities.Majority_count);
        DB.AddInParameter(dbCom, "@MAJORITY_COUNT_PARTY_NAME", DbType.String, entities.Majority_count_party_name);
        DB.AddInParameter(dbCom, "@QUERY_STATUS", DbType.String, "CHECK");
        var rdr = DB.ExecuteReader(dbCom);
        if (rdr.Read())
        {
            entities.Query_status = rdr["QUERY_STATUS"].ToString();
        }
        rdr.Close();
        DB.ExecuteNonQuery(dbCom);
    }

    public void GET_USER_DIST_PREDICTIONS(oAPCONSISTENCIES entities)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("USP_GET_USER_DIST_PREDICTIONS");
        DB.AddInParameter(dbCom, "@SHORT_CODE", DbType.String, entities.Shot_code);
        var rdr = DB.ExecuteReader(dbCom);
        if (rdr.Read())
        {
            entities.Dist_id = int.Parse(rdr["DIST_ID"].ToString());
            entities.Useremail = rdr["USER_EMAIL"].ToString();
            entities.Userpredicts = rdr["USER_PREDICTIONS"].ToString();
        }
        rdr.Close();
        DB.ExecuteNonQuery(dbCom);
    }


    public void GET_USER_DIST_PREDICTIONS_DEFAULT(oAPCONSISTENCIES entities)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("USP_GET_USER_DIST_PREDICTIONS_DEFUALT");
        DB.AddInParameter(dbCom, "@DIST_ID", DbType.Int16, entities.Dist_id);
        DB.AddInParameter(dbCom, "@USER_EMAIL", DbType.String, entities.Useremail);
        var rdr = DB.ExecuteReader(dbCom);
        if (rdr.Read())
        {
            entities.Dist_id = int.Parse(rdr["DIST_ID"].ToString());
            entities.Useremail = rdr["USER_EMAIL"].ToString();
            entities.Userpredicts = rdr["USER_PREDICTIONS"].ToString();
        }
        rdr.Close();
        DB.ExecuteNonQuery(dbCom);
    }
}