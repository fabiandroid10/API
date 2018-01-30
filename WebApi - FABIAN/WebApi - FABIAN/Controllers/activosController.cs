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
    public class activosController : ApiController
    {

        private pruebaEntities db = new pruebaEntities();

        // GET: api/activos
        public IHttpActionResult Getactivos()
        {
            if(db.activos.Count() <= 0)
            {
                return NotFound();
            }
            return Ok(db.activos);
        }


        // GET: api/activos/5
        [ResponseType(typeof(activos))]
        public IHttpActionResult Getactivo(int id)
        {
            activos activos = db.activos.Find(id);
            if (activos == null)
            {
                return NotFound();
            }
            
            return Ok(activos);
        }


        // GET: por TIPO
        public IHttpActionResult GetActivosByTipo(string tipo)
        {
            return Ok(db.activos.Where(c => c.tipo == tipo).ToList());
        }

        // GET: por FECHA COMPRA
        public IHttpActionResult GetActivosByFechaCompra(DateTime fecha_compra)
        {
            return Ok(db.activos.Where(c => c.fecha_compra == fecha_compra).ToList());
        }

        // GET: por SERIAL
        public IHttpActionResult GetActivosBySerial(string serial)
        {
            return Ok(db.activos.Where(c => c.serial == serial).ToList());
        }
        

        // PUT: api/activos/5
        [ResponseType(typeof(void))]
        public IHttpActionResult Putactivos(int id, activos activos)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (activos.serial.Equals(""))
            {
                return BadRequest("El serial es obligatorio");
            }

            if (id != activos.id_activo)
            {
                return BadRequest("El ID no es el mismo");
            }
            if (activos.fecha_baja > activos.fecha_compra)
            {
                return BadRequest("La Fecha de Baja no puede ser mayor a la Fecha de Compra");

            }

            db.Entry(activos).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException ex)
            {
                if (!activosExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw ex.GetBaseException();
                }
            }

            return Ok("Registro Actualizado Correctamente");
        }

        // POST: api/activos
        [ResponseType(typeof(activos))]
        public IHttpActionResult Postactivos(activos activos)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            if (activos.fecha_baja > activos.fecha_compra)
            {
                return BadRequest("La Fecha de Baja no puede ser mayor a la Fecha de Compra");
                 
            }

            db.activos.Add(activos);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException ex)
            {
                if (activosExists(activos.id_activo))
                {
                    return InternalServerError(ex.GetBaseException());
                }
                else
                {
                    throw;
                }
            }

            return Ok("Registro Insertado Correctamente");
        }


        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool activosExists(int id)
        {
            return db.activos.Count(e => e.id_activo == id) > 0;
        }
    }
}