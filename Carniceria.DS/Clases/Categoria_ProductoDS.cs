using Carniceria.DS.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DATOS;
using ServiceStack.OrmLite;
using System.Data;

namespace Carniceria.DS.Clases
{
    public class Categoria_ProductoDS : ICategoria_ProductoDS
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;

        public Categoria_ProductoDS()
        {
            _conexion = new OrmLiteConnectionFactory(DS.Default.conexion, SqlServerDialect.Provider);
            _db = _conexion.Open();
        }

        public void ActualizarCategoria(Categoria_Producto categoria)
        {
            _db.Update(categoria);
        }

        public Categoria_Producto BuscarCategoria(int idCategoria)
        {
            return _db.Select<DATOS.Categoria_Producto>(x => x.IdCategoria == idCategoria).FirstOrDefault(); ;
        }

        public void EliminarCategoria(int idCategoria)
        {
            _db.Delete<DATOS.Categoria_Producto>(x => x.IdCategoria == idCategoria);
        }

        public void InsertarCategoria(Categoria_Producto categoria)
        {
            _db.Insert(categoria);
        }

        public List<Categoria_Producto> ListarCategorias()
        {
            return _db.Select<DATOS.Categoria_Producto>();
        }
    }
}
