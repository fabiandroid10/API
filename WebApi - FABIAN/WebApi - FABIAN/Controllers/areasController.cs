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
    public class areasController : ApiController
    {
        private pruebaEntities db = new pruebaEntities();

        // GET: api/areas
        public IHttpActionResult Getareas()
        {
            if(db.areas.Count() <= 0)
            {
                return NotFound();
            }
            return Ok(db.areas);
        }

        // GET: api/areas/5
        [ResponseType(typeof(areas))]
        public IHttpActionResult Getarea(int id)
        {
            areas areas = db.areas.Find(id);
            if (areas == null)
            {
                return NotFound();
            }

            return Ok(areas);
        }

    }
}