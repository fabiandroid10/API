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
using WebApi___FABIAN.Datos;

namespace WebApi___FABIAN.Controllers
{
    public class personasController : ApiController
    {
        private pruebaEntities db = new pruebaEntities();

        // GET: api/personas
        public IHttpActionResult Getpersonas()
        {
            if(db.personas.Count() <= 0)
            {
                return NotFound();
            }
            return Ok(db.personas);
        }

        // GET: api/personas/5
        [ResponseType(typeof(personas))]
        public IHttpActionResult Getpersona(int id)
        {
            personas personas = db.personas.Find(id);
            if (personas == null)
            {
                return NotFound();
            }

            return Ok(personas);
        }

    }
}