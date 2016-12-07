using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DATOS;

namespace Carniceria.BL.Interfaces
{
    public interface IProductoBL
    {
        List<Producto> ListarProductos();

        Producto BuscarProducto(int idProducto);

        void InsertarProducto(Producto producto);

        void ActualizarProducto(Producto producto);

        void EliminarProducto(int idProducto);

		List<DATOS.Producto> BuscarProductos(int? idCategoria);
             
    }
}
