using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class districtcc : System.Web.UI.Page
{
    public StringBuilder strBuilder = new StringBuilder();
    public string strBind = null;
    public List<oAPCONSISTENCIES> aPCONSISTENCIEs;
    oAPCONSISTENCIES entites = new oAPCONSISTENCIES();
    ConsistencyDAL dAL = new ConsistencyDAL();
    public int requeststr;
    public string[] UserPredicts;
    public string d_h;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            entites.Dist_id = int.Parse(Request.QueryString["id"]);
            entites.Useremail = "admin@supremesoft.com";

            dAL.GET_USER_DIST_PREDICTIONS_DEFAULT(entites);
            UserPredicts = entites.Userpredicts.Split(',');
            GridBind(id: entites.Dist_id);
            DistDetailsBind(id: entites.Dist_id);
            requeststr = entites.Dist_id;

        }
        else if (Request.QueryString["scode"] != null)
        {
            txtprdcsts.InnerText = "Prediction By You";
            entites.Shot_code = Request.QueryString["scode"];
            dAL.GET_USER_DIST_PREDICTIONS(entites);
            UserPredicts = entites.Userpredicts.Split(',');
            GridBind(id: entites.Dist_id);
            DistDetailsBind(id: entites.Dist_id);
            requeststr = entites.Dist_id;
        }
    }

    public void BindMap()
    {

    }

    //public void DistMapBind(int distID)
    //{
    //    if (distID == 1)
    //    {
    //        srikakulam.Style.Add("display", "block");
    //        txtmodule.InnerText = "Srikakulam";
    //    }
    //    if (distID == 2)
    //    {
    //        vijayanagaram.Style.Add("display", "block");
    //        txtmodule.InnerText = "Vijayanagaram";

    //    }
    //    if (distID == 3)
    //    {
    //        visakhapatnam.Style.Add("display", "block");
    //        txtmodule.InnerText = "Visakhapatnam";
    //    }
    //    if (distID == 4)
    //    {
    //        Eg.Style.Add("display", "block");
    //        txtmodule.InnerText = "East Godavari";

    //    }
    //    if (distID == 5)
    //    {
    //        wg.Style.Add("display", "block");
    //        txtmodule.InnerText = "West Godavari";

    //    }
    //    if (distID == 6)
    //    {
    //        krishna.Style.Add("display", "block");
    //        txtmodule.InnerText = "Krishna";

    //    }
    //    if (distID == 7)
    //    {
    //        guntur.Style.Add("display", "block");
    //        txtmodule.InnerText = "Guntur";

    //    }
    //    if (distID == 8)
    //    {
    //        prakasam.Style.Add("display", "block");
    //        txtmodule.InnerText = "Prakasam";

    //    }
    //    if (distID == 9)
    //    {
    //        nellore.Style.Add("display", "block");
    //        txtmodule.InnerText = "Nellore";

    //    }
    //    if (distID == 10)
    //    {
    //        chittor.Style.Add("display", "block");
    //        txtmodule.InnerText = "Chittor";

    //    }
    //    if (distID == 11)
    //    {
    //        kadapa.Style.Add("display", "block");
    //        txtmodule.InnerText = "Kadapa";
    //    }
    //    if (distID == 12)
    //    {
    //        kurnool.Style.Add("display", "block");
    //        txtmodule.InnerText = "Kurnool";
    //    }
    //    if (distID == 13)
    //    {
    //        ananthapur.Style.Add("display", "block");
    //        txtmodule.InnerText = "Ananthapur";

    //    }
    //}

    public void GridBind(int id)
    {
        aPCONSISTENCIEs = dAL.GetWINNERSLIST();
        gvconsist.DataSource = from dist in aPCONSISTENCIEs
                               where dist.Dist_id == id
                               select dist;
        gvconsist.DataBind();
    }

    public void DistDetailsBind(int id)
    {
        aPCONSISTENCIEs = dAL.Getdistdata();
        foreach (var item in aPCONSISTENCIEs.Where(y => y.Dist_id == id))
        {
            txtheadquarter.InnerText = item.Dist_Headquarter1;
            //txtareatotal.InnerText = item.Areatotal1;
            //txtdensity.InnerText = item.PopDensity;
            txtpopulation.InnerText = item.PopulationTotal1;
            d_h = item.DISTRICT_NAME;
            strBuilder.Append(item.SvgMapPoints);
            strBind = strBuilder.ToString();
            // txturban.InnerText = item.Urban1;
            //txtdensity.InnerText = item.PopDensity;
            // txtvhreg.InnerText = item.VehicleReg;
        }
    }

    protected void gvconsist_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            TableCellCollection cell = e.Row.Cells;
            cell[0].Attributes.Add("data-title", "Constituency No");
            cell[1].Attributes.Add("data-title", "Name");
            cell[2].Attributes.Add("data-title", "TDP");
            cell[3].Attributes.Add("data-title", "YSRCP");
            cell[4].Attributes.Add("data-title", "Janasena");
            //cell[5].Attributes.Add("data-title", "BJP");
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label lbljanasena = (Label)e.Row.FindControl("lbljanasena");
            Label lbltdp = (Label)e.Row.FindControl("lbltdp");
            Label lblysrcp = (Label)e.Row.FindControl("lblysrcp");
           // Label lblbjp = (Label)e.Row.FindControl("lblbjp");

            foreach (string str in UserPredicts)
            {
                if (str == lbljanasena.Text)
                    e.Row.Cells[4].Attributes.Add("class", "janasena");
                else if (str == lbltdp.Text)
                    e.Row.Cells[2].Attributes.Add("class", "tdp");
                else if (str == lblysrcp.Text)
                    e.Row.Cells[3].Attributes.Add("class", "ysrcp");
                //else if (str == lblbjp.Text)
                //    e.Row.Cells[5].Attributes.Add("class", "bjp");
            }
        }
    }

    [WebMethod]
    public static string GetCode(string data)
    {
        districtcc Parent = new districtcc();
        string[] arr = data.Split(':');
        string status = Parent.InsertUsersFun(int.Parse(arr[0]), arr[1], arr[2], arr[3]);
        return status;
    }

    public string InsertUsersFun(int did, string mail, string data, string eachPrtyCount)
    {
        entites.Dist_id = did;
        entites.Useremail = mail;
        entites.Userpredicts = data;
        int[] countArr = Array.ConvertAll(eachPrtyCount.Split(','), int.Parse);
        entites.Tdp_count = countArr[0];
        entites.Ysrcp_count = countArr[1];
        entites.Jsp_count = countArr[2];
        entites.Bjp_count = countArr[3];
        string[] partyNames = { "TDP", "YSRCP", "JANASENA", "BJP" };
        for (int i = 0; i < countArr.Length; i++)
        {
            for (int j = 0; j < countArr.Length - 1; j++)
            {
                if (countArr[j] > countArr[j + 1])
                {
                    entites.Majority_count = countArr[j];
                    entites.Majority_count_party_name = partyNames[j].ToString();
                }
            }
        }
        entites.Shot_code = GenerateRandomNo().ToString();
        dAL.INSERT_USER_DIST_PREDICTIONS(entites);
        return entites.Query_status;
    }

    //Shot code Generation
    public static Int32 GenerateRandomNo()
    {
        Int32 _min = 100000;
        Int32 _max = 999999;
        Random _rdm = new Random();
        return _rdm.Next(_min, _max);
    }

    //public static string Encrypt(string input, string key)
    //{
    //    byte[] inputArray = UTF8Encoding.UTF8.GetBytes(input);
    //    TripleDESCryptoServiceProvider tripleDES = new TripleDESCryptoServiceProvider();
    //    tripleDES.Key = UTF8Encoding.UTF8.GetBytes(key);
    //    tripleDES.Mode = CipherMode.ECB;
    //    tripleDES.Padding = PaddingMode.PKCS7;
    //    ICryptoTransform cTransform = tripleDES.CreateEncryptor();
    //    byte[] resultArray = cTransform.TransformFinalBlock(inputArray, 0, inputArray.Length);
    //    tripleDES.Clear();
    //    return Convert.ToBase64String(resultArray, 0, resultArray.Length);
    //    //Encrypt(pwdLogin.Text, "S2rd-N5ae-P3jv4-L5ap-2kz")
    //    //Encrypt(pwdLogin.Text, "S9Rh-nh@1-pojs6-l3as-2kz")
    //}
}