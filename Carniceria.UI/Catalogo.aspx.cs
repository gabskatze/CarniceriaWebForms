using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Carniceria.BL.Interfaces;
using Carniceria.BL.Clases;
using Carniceria.DATOS;

namespace Carniceria.UI
{
    public partial class Catalogo : System.Web.UI.Page
    {
        private double cantidad;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                IProductoBL iProducto = new BL.Clases.ProductoBL();
                ICategoria_ProductoBL iCategoria = new BL.Clases.Categoria_ProductoBL();
                List<Producto> listaProductos = iProducto.ListarProductos();
                lvProductos.DataSource = listaProductos;
                lvProductos.DataBind();
                var _categorias = iCategoria.ListarCategorias();
                ddlCategorias.DataSource = _categorias.Select(x => x.NombreCategoria);
                ddlCategorias.DataBind();
            }
        }

       

       

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
           ICategoria_ProductoBL iCategoria = new BL.Clases.Categoria_ProductoBL();
            var _categorias = iCategoria.ListarCategorias();
            int idCategoria =
                _categorias.Where(x => x.NombreCategoria == ddlCategorias.Text).Select(x => x.IdCategoria).FirstOrDefault();
            IProductoBL iProducto = new BL.Clases.ProductoBL();
            List<Producto> listaProductos = iProducto.BuscarProductoPorCategoria(idCategoria);
            lvProductos.DataSource = null;
            lvProductos.DataSource = listaProductos;
            lvProductos.DataBind();
        }

        protected void btnAñadirCarro_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("Carrito.aspx");

        }
    }
}