using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using electionapis.Models;

namespace electionapis.Controllers
{
    public class ApemonkController : ApiController
    {
        EMONK_APEntities db = new EMONK_APEntities();
        public List<AP_CONSTITUENCIES> aP_CONSTITUENCIEs;
        //public List<AP_CONSTITUENCIES> Get()
        //{
        //    return db.AP_CONSTITUENCIES();
        //}
    }
}
