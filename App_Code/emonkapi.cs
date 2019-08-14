using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for emonkapi
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class emonkapi : System.Web.Services.WebService
{

    public emonkapi()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void Saveu_predicts(string email,string predicts)
    {
        Database DB = DatabaseFactory.CreateDatabase();
        DbCommand dbCom = DB.GetStoredProcCommand("SAVE_USER_PREDICTS");
        DB.AddInParameter(dbCom, "@UEMAIL", DbType.String, email);
        DB.AddInParameter(dbCom, "@DIST_WISE_PRED", DbType.String, predicts);
        DB.ExecuteNonQuery(dbCom);
    }

}
