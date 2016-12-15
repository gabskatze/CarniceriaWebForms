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

        List<Persona> ListarPersonas();
    }
}
