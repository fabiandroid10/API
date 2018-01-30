using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using WebApi___FABIAN.Controllers;
using WebApi___FABIAN.Datos;

namespace WebApi___FABIAN.Models
{
    public class agregar
    {

        public void Insertar(int id,string nombre,string descripcion,string color,
            double valor,string serial,string tipo,string inventario,string peso,
            string ancho,string alto,string largo,string estado,DateTime compra,DateTime baja)
        {
            activos a = new activos();

            a.id_activo = id;
            a.nombre = nombre;
            a.descripcion = descripcion;
            a.color = color;
            a.valor_compra = valor;
            a.serial = serial;
            a.tipo = tipo;
            a.num_inventario = inventario;
            a.peso = peso;
            a.ancho = ancho;
            a.alto = alto;
            a.largo = largo;
            a.estado = estado;
            a.fecha_compra = compra;
            a.fecha_baja = baja;

            activosController ac = new activosController();
            ac.Postactivos(a);

        } 







    }
}