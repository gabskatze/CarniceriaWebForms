using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DATOS;

namespace Carniceria.DS.Interfaces
{
    public interface IProductoDS
    {
        List<Producto> ListarProductos();

        Producto BuscarProducto(int idProducto);

        void InsertarProducto(Producto producto);

        void ActualizarProducto(Producto producto);

        void EliminarProducto(int idProducto);
        void ActualizarDisponibles(int idProducto);
        List<Producto> BuscarProductoPorCategoria(int idCategoria);
    }
}
