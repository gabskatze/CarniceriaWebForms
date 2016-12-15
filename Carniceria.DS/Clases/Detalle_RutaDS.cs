using Carniceria.DATOS;
using Carniceria.DS.Interfaces;
using ServiceStack.OrmLite;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Carniceria.DS.Clases
{
    public class Detalle_RutaDS : IDetalle_RutaDS
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;

        public Detalle_RutaDS()
        {
            _conexion = new OrmLiteConnectionFactory(DS.Default.conexion, SqlServerDialect.Provider);
            _db = _conexion.Open();
        }
        public List<Detalle_Ruta> ListarDetalleRuta(int idRuta)
        {
            return _db.Select<Detalle_Ruta>(x => x.IdRuta == idRuta);
        }

        public List<Detalle_Ruta> ListarDetalleRuta()
        {
            return _db.Select<Detalle_Ruta>();
        }

    }
}
