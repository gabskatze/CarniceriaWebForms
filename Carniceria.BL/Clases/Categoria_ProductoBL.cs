using Carniceria.BL.Interfaces;
using System.Collections.Generic;
using Carniceria.DATOS;
using Carniceria.DS.Clases;
using Carniceria.DS.Interfaces;
using System;

namespace Carniceria.BL.Clases
{
    public class Categoria_ProductoBL : ICategoria_ProductoBL
    {
        private ICategoria_ProductoDS categorias;

        public Categoria_ProductoBL()
        {
            categorias = new Categoria_ProductoDS();
        }

		public void ActualizarCategoria(Categoria_Producto categoria)
        {
            throw new NotImplementedException();
        }

        public Categoria_Producto BuscarCategoria(int idCategoria)
        {
            throw new NotImplementedException();
        }

        public void EliminarCategoria(int idCategoria)
        {
            throw new NotImplementedException();
        }

        public void InsertarCategoria(Categoria_Producto categoria)
        {
            throw new NotImplementedException();
        }

        public List<Categoria_Producto> ListarCategorias()
        {
            return categorias.ListarCategorias();
        }
    }
}
