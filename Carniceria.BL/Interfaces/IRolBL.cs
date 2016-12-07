using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DATOS;
namespace Carniceria.BL.Interfaces
{
    public interface IRolBL
    {
        void InsertarRol(Rol IdRol);
        List<DATOS.Rol> ListarRoles();
        DATOS.Rol BuscarUsuario(string nombreUsuario, string contra);
    }
}
