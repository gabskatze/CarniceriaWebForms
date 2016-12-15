using Carniceria.BL.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DATOS;


namespace Carniceria.BL.Clases
{
    public class PersonaBL : IPersonaBL
    {
        private readonly DS.Interfaces.IPersonaDS _s;

        public  PersonaBL()
        {
            _s = new DS.Clases.PersonaDS();
        }
        public void InsertarPersona(Persona persona)
        {
            _s.InsertarPersona(persona);
        }

        public List<Persona> ListarPersonas(IEnumerable<int> idsPersona)
        {
            return _s.ListarPersonas().Where(x => idsPersona.Contains(x.IdPersona)).ToList();
        }
    }
}
