using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DATOS;

namespace Carniceria.DS.Interfaces
{
    public interface ICategoria_ProductoDS
    {
        List<Categoria_Producto> ListarCategorias();

        Categoria_Producto BuscarCategoria(int idCategoria);

        void InsertarCategoria(Categoria_Producto categoria);

        void ActualizarCategoria(Categoria_Producto categoria);

        void EliminarCategoria(int idCategoria);
    }
}
