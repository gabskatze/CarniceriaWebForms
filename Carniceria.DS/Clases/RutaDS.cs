using Carniceria.DS.Interfaces;
using ServiceStack.OrmLite;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DATOS;

namespace Carniceria.DS.Clases
{
    public class RutaDS : IRutaDS
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;

        public RutaDS()
        {
            _conexion = new OrmLiteConnectionFactory(DS.Default.conexion, SqlServerDialect.Provider);
            _db = _conexion.Open();
        }

        public List<Ruta> ListarRutas()
        {
            return _db.Select<Ruta>();
        }
    }
}
