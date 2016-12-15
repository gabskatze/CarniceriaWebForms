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

        List<Persona> ListarPersonas(IEnumerable<int> idsPersona);
    }
}
