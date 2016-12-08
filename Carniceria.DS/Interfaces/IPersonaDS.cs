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
        List<Persona> ListarPersona();
        DATOS.Persona BuscarUsuario(string correo, string contra);
        DATOS.Persona BuscarPersona(string correo);
        List<Persona> ListarPersona1();
    }
}
