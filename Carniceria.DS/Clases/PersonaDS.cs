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
    public class PersonaDS : IPersonaDS
    {
        private OrmLiteConnectionFactory _conexion;
        private IDbConnection _db;

        public PersonaDS()
        {
            _conexion = new OrmLiteConnectionFactory(DS.Default.conexion, SqlServerDialect.Provider);
            _db = _conexion.Open();
        }

        public void InsertarPersona(Persona persona)
        {
            _db.Insert(persona);
            
        }
    }
}
