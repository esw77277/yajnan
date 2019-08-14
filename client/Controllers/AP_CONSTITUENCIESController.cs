using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using electionapis.Models;

namespace electionapis.Controllers
{
    public class AP_CONSTITUENCIESController : ApiController
    {
        private EMONK_APEntities db = new EMONK_APEntities();

        // GET: api/AP_CONSTITUENCIES
        public IQueryable<AP_CONSTITUENCIES> GetAP_CONSTITUENCIES()
        {
            return db.AP_CONSTITUENCIES;
        }

        // GET: api/AP_CONSTITUENCIES/5
        [ResponseType(typeof(AP_CONSTITUENCIES))]
        public IHttpActionResult GetAP_CONSTITUENCIES(int id)
        {
            AP_CONSTITUENCIES aP_CONSTITUENCIES = db.AP_CONSTITUENCIES.Find(id);
            if (aP_CONSTITUENCIES == null)
            {
                return NotFound();
            }

            return Ok(aP_CONSTITUENCIES);
        }

        // PUT: api/AP_CONSTITUENCIES/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutAP_CONSTITUENCIES(int id, AP_CONSTITUENCIES aP_CONSTITUENCIES)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != aP_CONSTITUENCIES.ID)
            {
                return BadRequest();
            }

            db.Entry(aP_CONSTITUENCIES).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AP_CONSTITUENCIESExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/AP_CONSTITUENCIES
        [ResponseType(typeof(AP_CONSTITUENCIES))]
        public IHttpActionResult PostAP_CONSTITUENCIES(AP_CONSTITUENCIES aP_CONSTITUENCIES)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.AP_CONSTITUENCIES.Add(aP_CONSTITUENCIES);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = aP_CONSTITUENCIES.ID }, aP_CONSTITUENCIES);
        }

        // DELETE: api/AP_CONSTITUENCIES/5
        [ResponseType(typeof(AP_CONSTITUENCIES))]
        public IHttpActionResult DeleteAP_CONSTITUENCIES(int id)
        {
            AP_CONSTITUENCIES aP_CONSTITUENCIES = db.AP_CONSTITUENCIES.Find(id);
            if (aP_CONSTITUENCIES == null)
            {
                return NotFound();
            }

            db.AP_CONSTITUENCIES.Remove(aP_CONSTITUENCIES);
            db.SaveChanges();

            return Ok(aP_CONSTITUENCIES);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool AP_CONSTITUENCIESExists(int id)
        {
            return db.AP_CONSTITUENCIES.Count(e => e.ID == id) > 0;
        }
    }
}