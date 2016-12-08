using Carniceria.BL.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DATOS;

namespace Carniceria.BL.Clases
{
  

    public class RolBL : IRolBL
    {
        private readonly DS.Interfaces.IRolDS _d;

        public  RolBL()
        {
            _d = new DS.Clases.RolDS();
        }

      
        public void InsertarRol(Rol IdRol)
        {
            _d.InsertarRol(IdRol);
        }

        public List<Rol> ListarRoles()
        {
          return  _d.ListarRoles();
        }
    }
}
