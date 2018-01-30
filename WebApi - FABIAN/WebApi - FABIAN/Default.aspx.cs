using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApi___FABIAN.Controllers;
using WebApi___FABIAN.Datos;

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
    }
}