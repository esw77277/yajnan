using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for oAPCONSISTENCIES
/// </summary>
public class oAPCONSISTENCIES
{
    int _userid;
    public oAPCONSISTENCIES()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private string svgMapPoints;
    private string shot_code;
    private string query_status;
    private int majority_count;
    private string majority_count_party_name;
    private int tdp_count;
    private int ysrcp_count;
    private int jsp_count;
    private int bjp_count;
    string _Distwisepredicts;
    
    string _mailbody;
    string _mailsubject;
    string _tomail;
    string _Userpredicts;
    bool _UserNameInUse;
    string _Useremail;
    string _userpwd;
    int _ID;
    string _STATE_NAME;
    string _DISTRICT_NAME;
    int _CONSTITUENCY_NUMBER;
    string _CONSTITUENCY_NAME;
    int _constituenciesID;
    string Dist_Headquarter;
    string Areatotal;
    string PopulationTotal;
    string _PopDensity;
    string Urban;
    string _VehicleReg;
    int _dist_id;
    string _Tdp;
    string _bjp;
    string _janasena;
    string _ysrcp;
    int _stateId;



    public int ID
    {
        get
        {
            return _ID;
        }

        set
        {
            _ID = value;
        }
    }

    public string STATE_NAME
    {
        get
        {
            return _STATE_NAME;
        }

        set
        {
            _STATE_NAME = value;
        }
    }

    public string DISTRICT_NAME
    {
        get
        {
            return _DISTRICT_NAME;
        }

        set
        {
            _DISTRICT_NAME = value;
        }
    }

    public int CONSTITUENCY_NUMBER
    {
        get
        {
            return _CONSTITUENCY_NUMBER;
        }

        set
        {
            _CONSTITUENCY_NUMBER = value;
        }
    }

    public string CONSTITUENCY_NAME
    {
        get
        {
            return _CONSTITUENCY_NAME;
        }

        set
        {
            _CONSTITUENCY_NAME = value;
        }
    }

    public int ConstituenciesID
    {
        get
        {
            return _constituenciesID;
        }

        set
        {
            _constituenciesID = value;
        }
    }

    public string Dist_Headquarter1
    {
        get
        {
            return Dist_Headquarter;
        }

        set
        {
            Dist_Headquarter = value;
        }
    }

    public string Areatotal1
    {
        get
        {
            return Areatotal;
        }

        set
        {
            Areatotal = value;
        }
    }

    public string PopulationTotal1
    {
        get
        {
            return PopulationTotal;
        }

        set
        {
            PopulationTotal = value;
        }
    }

    public string PopDensity
    {
        get
        {
            return _PopDensity;
        }

        set
        {
            _PopDensity = value;
        }
    }

    public string Urban1
    {
        get
        {
            return Urban;
        }

        set
        {
            Urban = value;
        }
    }

    public string VehicleReg
    {
        get
        {
            return _VehicleReg;
        }

        set
        {
            _VehicleReg = value;
        }
    }

    public string Userpwd
    {
        get
        {
            return _userpwd;
        }

        set
        {
            _userpwd = value;
        }
    }

    public string Useremail
    {
        get
        {
            return _Useremail;
        }

        set
        {
            _Useremail = value;
        }
    }

    public bool UserNameInUse
    {
        get
        {
            return _UserNameInUse;
        }

        set
        {
            _UserNameInUse = value;
        }
    }

    public int Dist_id
    {
        get
        {
            return _dist_id;
        }

        set
        {
            _dist_id = value;
        }
    }

    public string Userpredicts
    {
        get
        {
            return _Userpredicts;
        }

        set
        {
            _Userpredicts = value;
        }
    }

    public string Mailbody
    {
        get
        {
            return _mailbody;
        }

        set
        {
            _mailbody = value;
        }
    }

    public string Mailsubject
    {
        get
        {
            return _mailsubject;
        }

        set
        {
            _mailsubject = value;
        }
    }

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

    public string Tdp
    {
        get
        {
            return _Tdp;
        }

        set
        {
            _Tdp = value;
        }
    }

    public string Bjp
    {
        get
        {
            return _bjp;
        }

        set
        {
            _bjp = value;
        }
    }

    public string Janasena
    {
        get
        {
            return _janasena;
        }

        set
        {
            _janasena = value;
        }
    }

    public string Ysrcp
    {
        get
        {
            return _ysrcp;
        }

        set
        {
            _ysrcp = value;
        }
    }

    public int StateId
    {
        get
        {
            return _stateId;
        }

        set
        {
            _stateId = value;
        }
    }

    public string Distwisepredicts
    {
        get
        {
            return _Distwisepredicts;
        }

        set
        {
            _Distwisepredicts = value;
        }
    }

    public int Userid
    {
        get
        {
            return _userid;
        }

        set
        {
            _userid = value;
        }
    }

    public string Shot_code
    {
        get
        {
            return shot_code;
        }

        set
        {
            shot_code = value;
        }
    }

    public string Query_status
    {
        get
        {
            return query_status;
        }

        set
        {
            query_status = value;
        }
    }

    public int Majority_count
    {
        get
        {
            return majority_count;
        }

        set
        {
            majority_count = value;
        }
    }

    public string Majority_count_party_name
    {
        get
        {
            return majority_count_party_name;
        }

        set
        {
            majority_count_party_name = value;
        }
    }

    public int Tdp_count
    {
        get
        {
            return tdp_count;
        }

        set
        {
            tdp_count = value;
        }
    }

    public int Ysrcp_count
    {
        get
        {
            return ysrcp_count;
        }

        set
        {
            ysrcp_count = value;
        }
    }

    public int Jsp_count
    {
        get
        {
            return jsp_count;
        }

        set
        {
            jsp_count = value;
        }
    }

    public int Bjp_count
    {
        get
        {
            return bjp_count;
        }

        set
        {
            bjp_count = value;
        }
    }

    public string SvgMapPoints
    {
        get
        {
            return svgMapPoints;
        }

        set
        {
            svgMapPoints = value;
        }
    }
}