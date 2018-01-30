using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApi___FABIAN.Controllers;
using WebApi___FABIAN.Datos;
using WebApi___FABIAN.Models;

namespace WebApi___FABIAN
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {

            activosController ac = new activosController();
            pruebaEntities db = new pruebaEntities();

            if (txtID.Text != "" && dropTipo.Text != "" && calCompra.SelectedDate != null && txtSerial.Text != "")
            {
                int id = Convert.ToInt32(txtID.Text);
                GridViewTodo.DataSource = ac.Getactivo(id);
                
            }else
            {
                GridViewTodo.DataSource = db.activos.ToList();
            }
           GridViewTodo.DataBind();




        }

        protected void btnAreas_Click(object sender, EventArgs e)
        {

            activosController ac = new activosController();
            pruebaEntities db = new pruebaEntities();

            GridViewTodo.DataSource = db.areas.ToList();
            GridViewTodo.DataBind();

        }

        protected void btnPersonas_Click(object sender, EventArgs e)
        {
            activosController ac = new activosController();
            pruebaEntities db = new pruebaEntities();

            GridViewTodo.DataSource = db.personas.ToList();
            GridViewTodo.DataBind();

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            pruebaEntities db = new pruebaEntities();

            int id = Convert.ToInt32(txtID.Text);
            string nombre = txtNombre.Text;
            string descripcion = txtDescripcion.Text;
            string color = txtColor.Text;
            double valor = Convert.ToDouble(txtValor.Text);
            string serial = txtSerial.Text;
            string tipo = dropTipo.Text;
            string inventario = txtInventario.Text;
            string peso = txtPeso.Text;
            string ancho = txtAncho.Text;
            string alto = txtAlto.Text;
            string largo = txtLargo.Text;
            string estado = dropEstado.Text;
            DateTime compra = calCompra.SelectedDate;
            DateTime baja = calBaja.SelectedDate;

         

            agregar a = new agregar();
            a.Insertar(id,nombre,descripcion,color,valor,serial,tipo,inventario,
                peso,ancho,alto,largo,estado,compra,baja);


        }
    }
}