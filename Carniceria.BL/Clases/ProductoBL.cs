using Carniceria.BL.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DATOS;
using Carniceria.DS.Clases;
using Carniceria.DS.Interfaces;

namespace Carniceria.BL.Clases
{
    public class ProductoBL : IProductoBL
    {
        private IProductoDS productos;

        public ProductoBL()
        {
            productos = new ProductoDS();
        }

        public void ActualizarProducto(Producto producto)
        {
            throw new NotImplementedException();
        }

        public Producto BuscarProducto(int idProducto)
        {
            return productos.BuscarProducto(idProducto);
        }

        public List<Producto> BuscarProductos(int? idCategoria)
        {
            if (idCategoria == null)
            {
                return productos.ListarProductos();
            }

            return productos.ListarProductos().Where(x => x.IdCategoria == idCategoria).ToList();
            
        }

        public void EliminarProducto(int idProducto)
        {
            throw new NotImplementedException();
        }

        public void InsertarProducto(Producto producto)
        {
            throw new NotImplementedException();
        }

        public List<Producto> ListarProductos()
        {
            throw new NotImplementedException();
        }
    }
}
