using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Carniceria.BL.Interfaces;
using Carniceria.DATOS;

namespace Carniceria.UI
{
    public partial class Productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IProductoBL iProducto = new Carniceria.BL.Clases.ProductoBL();
            List<Producto> listaProductos = iProducto.ListarProductos();
            var lista = listaProductos.Select(x => new { x.IdProducto, x.NombreProducto, x.Descripcion, x.CantDisponible, x.Precio }).ToList();
            dgvProductos.DataSource = lista;
            dgvProductos.DataBind();
        }
    }
}