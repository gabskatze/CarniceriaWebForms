﻿using Carniceria.BL.Interfaces;
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

        public Persona BuscarPersona(string correo)
        {
            return _s.BuscarPersona(correo);
        }

        public Persona BuscarUsuario(string correo, string contra)
        {
            return _s.BuscarUsuario(correo, contra);
        }

        public void InsertarPersona(Persona persona)
        {
            _s.InsertarPersona(persona);
        }

<<<<<<< HEAD
        public List<Persona> ListarPersona()
        {
            return _s.ListarPersona();
        }

        public List<Persona> ListarPersona1()
        {
            return _s.ListarPersona();
        }

        
=======
        public List<Persona> ListarPersonas(IEnumerable<int> idsPersona)
        {
            return _s.ListarPersonas().Where(x => idsPersona.Contains(x.IdPersona)).ToList();
        }
>>>>>>> cc8e1dfc8e75d2fad82b5f0024c019057423c6fc
    }
}
