using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Services;

/// <summary>
/// Summary description for emonk
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class emonk : System.Web.Services.WebService
{
    oAPCONSISTENCIES entities = new oAPCONSISTENCIES();
    ConsistencyDAL dAL = new ConsistencyDAL();
    string cs = ConfigurationManager.ConnectionStrings["ATSDBSTRING"].ConnectionString;
    public emonk()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public void UserNameExists(string userName)
    {
        bool userNameInUse = false;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("CHECK_USER", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter()
            {
                ParameterName = "@email",
                Value = userName
            });
            con.Open();
            userNameInUse = Convert.ToBoolean(cmd.ExecuteScalar());
        }


        oAPCONSISTENCIES entities = new oAPCONSISTENCIES();
        entities.Useremail = userName;
        entities.UserNameInUse = userNameInUse;

        JavaScriptSerializer js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(entities));
    }


    [WebMethod]
    public void Adduser(string email,string pwd)
    {
        entities.Useremail = email;
        entities.Userpwd = pwd;
        dAL.User_reg(entities);
    }


}
