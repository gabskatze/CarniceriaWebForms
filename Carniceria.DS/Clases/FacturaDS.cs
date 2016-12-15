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
    public class FacturaDS : IFacturaDS
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;

        public FacturaDS()
        {
            _conexion = new OrmLiteConnectionFactory(DS.Default.conexion, SqlServerDialect.Provider);
            _db = _conexion.Open();
        }
        public List<Factura> ListarFacturas()
        {
            return _db.Select<Factura>();
        }
    }
}
