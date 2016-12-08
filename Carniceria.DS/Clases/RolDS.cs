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
    public class RolDS : IRolDS
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;

        public RolDS()
        {
            _conexion = new OrmLiteConnectionFactory(DS.Default.conexion, SqlServerDialect.Provider);
            _db = _conexion.Open();
        }
        

        public void InsertarRol(Rol IdRol)
        {
            _db.Insert(IdRol);
        }

        public List<Rol> ListarRoles()
        {
            return _db.Select<DATOS.Rol>();
        }
    }
}
