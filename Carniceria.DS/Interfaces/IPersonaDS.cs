using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DATOS;
namespace Carniceria.DS.Interfaces
{
    public interface IPersonaDS
    {
        void InsertarPersona(Persona persona);
<<<<<<< HEAD
        List<Persona> ListarPersona();
        DATOS.Persona BuscarUsuario(string correo, string contra);
        DATOS.Persona BuscarPersona(string correo);
        List<Persona> ListarPersona1();
=======

        List<Persona> ListarPersonas();
>>>>>>> cc8e1dfc8e75d2fad82b5f0024c019057423c6fc
    }
}
