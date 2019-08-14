using electionapis.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;


namespace electionapis.Controllers
{
    public class electionmonkController : ApiController
    {
        EMonk_ProductionEntities db = new EMonk_ProductionEntities();
        List<ASP_RETRIEVE_CONSISTENCYSS_WINNING_LIST_Result> _CONSISTENCYSS_WINNING_LIST_Results;


        public List<ASP_RETRIEVE_CONSISTENCYSS_WINNING_LIST_Result> Get()
        {
            var list = db.ASP_RETRIEVE_CONSISTENCYSS_WINNING_LIST(dISTNAME: "All Districts");
            return  _CONSISTENCYSS_WINNING_LIST_Results = db.ASP_RETRIEVE_CONSISTENCYSS_WINNING_LIST(dISTNAME: "All Districts").ToList();
        }
    }
}
