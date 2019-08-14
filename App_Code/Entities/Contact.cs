using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Contact
/// </summary>
public class Contact
{
    public Contact()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    int _Id;
    string _Name;
    string _email;
    string _mobile;
    string _subject;
    string _ipAddress;

    public int Id
    {
        get
        {
            return _Id;
        }

        set
        {
            _Id = value;
        }
    }

    public string Name
    {
        get
        {
            return _Name;
        }

        set
        {
            _Name = value;
        }
    }

    public string Email
    {
        get
        {
            return _email;
        }

        set
        {
            _email = value;
        }
    }

    public string Mobile
    {
        get
        {
            return _mobile;
        }

        set
        {
            _mobile = value;
        }
    }

    public string Subject
    {
        get
        {
            return _subject;
        }

        set
        {
            _subject = value;
        }
    }

    public string IpAddress
    {
        get
        {
            return _ipAddress;
        }

        set
        {
            _ipAddress = value;
        }
    }
}