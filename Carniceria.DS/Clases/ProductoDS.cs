using Carniceria.DS.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DS;
using Carniceria.DATOS;
using ServiceStack.OrmLite;
using System.Data;


namespace Carniceria.DS.Clases
{
    public class ProductoDS : IProductoDS
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;

        public ProductoDS()
        {
            _conexion = new OrmLiteConnectionFactory(DS.Default.conexion, SqlServerDialect.Provider);
            _db = _conexion.Open();
        }

        public void ActualizarDisponibles(int idProducto)
        {
            _db.ExecuteSql(string.Concat("EXEC ActualizarDisponibles ", idProducto.ToString()));
        }

        public void ActualizarProducto(Producto producto)
        {
            _db.Update(producto);
        }

        public Producto BuscarProducto(int idProducto)
        {
            return _db.Select<DATOS.Producto>(x => x.IdProducto == idProducto).FirstOrDefault();
        }

        public List<Producto> BuscarProductoPorCategoria(int idCategoria)
        {
            return _db.Select<DATOS.Producto>(x => x.IdCategoria == idCategoria);
        }

        public void EliminarProducto(int idProducto)
        {
            _db.Delete<DATOS.Producto>(x => x.IdProducto == idProducto);
        }

        public void InsertarProducto(Producto producto)
        {
          _db.Insert(producto);
        }

        public List<Producto> ListarProductos()
        {
            return _db.Select<DATOS.Producto>();
        }
    }
}
