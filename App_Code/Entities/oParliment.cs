using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for oParliment
/// </summary>
public class oParliment
{
    public oParliment()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    string _userpredicts;
    string _shortcode;
    string _uemail;
    int _T_P_ID;
    int _AP_P_ID;
    string _PARLIAMENT_NAME;
    string _BJP;
    string _INC;
    string _TDP;
    string _YSRCP;
    string _JANASENA;
    string _OTHERS;
    string _TRS;

    public string PARLIAMENT_NAME
    {
        get
        {
            return _PARLIAMENT_NAME;
        }

        set
        {
            _PARLIAMENT_NAME = value;
        }
    }

    public string BJP
    {
        get
        {
            return _BJP;
        }

        set
        {
            _BJP = value;
        }
    }

    public string INC
    {
        get
        {
            return _INC;
        }

        set
        {
            _INC = value;
        }
    }

    public string TDP
    {
        get
        {
            return _TDP;
        }

        set
        {
            _TDP = value;
        }
    }

    public string YSRCP
    {
        get
        {
            return _YSRCP;
        }

        set
        {
            _YSRCP = value;
        }
    }

    public string JANASENA
    {
        get
        {
            return _JANASENA;
        }

        set
        {
            _JANASENA = value;
        }
    }

    public string OTHERS
    {
        get
        {
            return _OTHERS;
        }

        set
        {
            _OTHERS = value;
        }
    }

    public string TRS
    {
        get
        {
            return _TRS;
        }

        set
        {
            _TRS = value;
        }
    }

    public int AP_P_ID
    {
        get
        {
            return _AP_P_ID;
        }

        set
        {
            _AP_P_ID = value;
        }
    }

    public int T_P_ID
    {
        get
        {
            return _T_P_ID;
        }

        set
        {
            _T_P_ID = value;
        }
    }

    public string Userpredicts
    {
        get
        {
            return _userpredicts;
        }

        set
        {
            _userpredicts = value;
        }
    }

    public string Shortcode
    {
        get
        {
            return _shortcode;
        }

        set
        {
            _shortcode = value;
        }
    }

    public string Uemail
    {
        get
        {
            return _uemail;
        }

        set
        {
            _uemail = value;
        }
    }
}