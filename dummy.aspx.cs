using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class dummy : System.Web.UI.Page
{
    public List<oAPCONSISTENCIES> aPCONSISTENCIEs;
    oAPCONSISTENCIES entites = new oAPCONSISTENCIES();
    ConsistencyDAL dAL = new ConsistencyDAL();
    Int32[] U_p = new Int32[9];
    int Total_p = 0, totalc;
    string Predicts;
    public List<string> userprdlist = new List<string>();
    string[] updcts;
    string email;
    public string shareURL="";


    protected void Page_Load(object sender, EventArgs e)
    {
        
        aPCONSISTENCIEs = dAL.Userslist().ToList();

        if (Request.QueryString["scode"] == null)
        {
            Getuserpred(Uemail: "eswara.snpl@gmail.com");
        }
        else if (Request.QueryString["scode"] != null)
        {
            foreach (var item in aPCONSISTENCIEs.Where(x => x.Shot_code == Request.QueryString["scode"]))
            {
                Getuserpred(Uemail: item.Useremail);
            }
        }


    }

    public void Getuserpred(string Uemail)
    {
        aPCONSISTENCIEs = dAL.Userslist();
        foreach (var item in aPCONSISTENCIEs.Where(y => y.Useremail == Uemail))
        {
            Predicts = item.Userpredicts;
            updcts = Predicts.Split(',');
            lbljanasena.Text = updcts[0];
            lbltdp.Text = updcts[1];
            lblysr.Text = updcts[2];
            lblbjp.Text = updcts[3];
            //lblinc.Text = updcts[4];
            //lblothers.Text = updcts[5];
        }
    }

    public void ClearInputs(ControlCollection ctrls)
    {
        foreach (Control ctrl in ctrls)
        {
            if (ctrl is TextBox)
                ((TextBox)ctrl).Text = string.Empty;
            ClearInputs(ctrl.Controls);
        }
    }
    protected void btn_upredict_Click(object sender, EventArgs e)
    {
        aPCONSISTENCIEs = dAL.GetWINNERSLIST();
        if (Session["email"] != null)
        {
            totalc = aPCONSISTENCIEs.Count;
            U_p[0] = Convert.ToInt16(txtjana.Text);
            U_p[1] = Convert.ToInt16(txttdp.Text);
            U_p[2] = Convert.ToInt16(txtysr.Text);
            U_p[3] = Convert.ToInt16(txtbjp.Text);
            //U_p[4] = Convert.ToInt16(txtinc.Text);
            //U_p[5] = Convert.ToInt16(txtothers.Text);
            for (int i = 0; i < U_p.Length; i++)
            {
                Total_p = Total_p + U_p[i];
            }
            if (Total_p > Convert.ToInt16(totalc))
            {
                lbler.Text = "Predicts should not be greater than Total Consists:" + " " + totalc;
                lbler.ForeColor = System.Drawing.Color.Orange;
            }
            else if (Total_p <= Convert.ToInt16(totalc))
            {
                entites.Useremail = Session["email"].ToString();
                entites.Userpredicts = (U_p[0] + "," + U_p[1] + "," + U_p[2] + "," + U_p[3] + "," + U_p[4] + "," + U_p[5]).ToString();
                dAL.UserPredicts(entites);
                Getuserpred(Uemail: Session["email"].ToString());
                ClearInputs(Page.Controls);
                lbler.Text = "Predicts Saved Successfully";
                lbler.ForeColor = System.Drawing.Color.Green;

            }
        }
        else if (Session["email"] == null)
        {
            //Response.Redirect("login.aspx");
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "ModalView", "<script>$('#myModal').modal('show');</script>", false);
        }


    }

    //Shot code Generation
    public static Int32 GenerateRandomNo()
    {
        Int32 _min = 100000;
        Int32 _max = 999999;
        Random _rdm = new Random();
        return _rdm.Next(_min, _max);
    }

    public static string Encrypt(string input, string key)
    {
        byte[] inputArray = UTF8Encoding.UTF8.GetBytes(input);
        TripleDESCryptoServiceProvider tripleDES = new TripleDESCryptoServiceProvider();
        tripleDES.Key = UTF8Encoding.UTF8.GetBytes(key);
        tripleDES.Mode = CipherMode.ECB;
        tripleDES.Padding = PaddingMode.PKCS7;
        ICryptoTransform cTransform = tripleDES.CreateEncryptor();
        byte[] resultArray = cTransform.TransformFinalBlock(inputArray, 0, inputArray.Length);
        tripleDES.Clear();
        return Convert.ToBase64String(resultArray, 0, resultArray.Length);
        //Encrypt(pwdLogin.Text, "S2rd-N5ae-P3jv4-L5ap-2kz")
        //Encrypt(pwdLogin.Text, "S9Rh-nh@1-pojs6-l3as-2kz")
    }

    //[WebMethod]
    //public static string GetCode(string data)
    //{
    //    andhra Parent = new andhra();
    //    string[] arr = data.Split(':');
    //    string status = Parent.InsertUsersFun(arr[0], arr[1]);
    //    return status;
    //}


    public string InsertUsersFun(string mail, string data)
    {
        entites.Useremail = mail;
        entites.Userpredicts = data;
        entites.Shot_code = Encrypt(GenerateRandomNo().ToString(), "S2rd-N5ae-P3jv4-L5ap-2kz");
        dAL.INSERT_USERS(entites);
        return entites.Query_status;
    }
}