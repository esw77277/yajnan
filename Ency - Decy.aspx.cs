using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ency___Decy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
    }

    public static string Decrypt(string input, string key)
    {
        byte[] inputArray = Convert.FromBase64String(input);
        TripleDESCryptoServiceProvider tripleDES = new TripleDESCryptoServiceProvider();
        tripleDES.Key = UTF8Encoding.UTF8.GetBytes(key);
        tripleDES.Mode = CipherMode.ECB;
        tripleDES.Padding = PaddingMode.PKCS7;
        ICryptoTransform cTransform = tripleDES.CreateDecryptor();
        byte[] resultArray = cTransform.TransformFinalBlock(inputArray, 0, inputArray.Length);
        tripleDES.Clear();
        return UTF8Encoding.UTF8.GetString(resultArray);
    }

    protected void encrybtn_ServerClick(object sender, EventArgs e)
    {
        //Key should be either of 128 bit or of 192 bit 
        //Here key is of 128 bit  
        //encrytxt.Text = Encrypt(nrmltxt.Text, "Snpl-9hv1-R@os06");
        //Here key is of 128 bit
        if (nrmltxtforencrypt.Text != string.Empty)
            encrytxt.Text = Encrypt(nrmltxtforencrypt.Text, "S2rd-N5ae-P3jv4-L5ap-2kz");
        nrmltxtfordecrypt.Text = encrytxt.Text;
    }

    protected void decrybtn_ServerClick(object sender, EventArgs e)
    {
        //decrytxt.Text = Decrypt(encrytxt.Text, "Snpl-9hv1-R@os06");
        if (nrmltxtfordecrypt.Text != string.Empty)
            decrytxt.Text = Decrypt(nrmltxtfordecrypt.Text, "S2rd-N5ae-P3jv4-L5ap-2kz");
    }
}