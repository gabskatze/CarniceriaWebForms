using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DATOS;
namespace Carniceria.BL.Interfaces
{
    public interface IPersonaBL
    {
        void InsertarPersona(Persona persona);
<<<<<<< HEAD
        List<Persona> ListarPersona();
        DATOS.Persona BuscarUsuario(string correo, string contra);
        List<Persona> ListarPersona1();
        DATOS.Persona BuscarPersona(string correo);
=======

        List<Persona> ListarPersonas(IEnumerable<int> idsPersona);
>>>>>>> cc8e1dfc8e75d2fad82b5f0024c019057423c6fc
    }
}
