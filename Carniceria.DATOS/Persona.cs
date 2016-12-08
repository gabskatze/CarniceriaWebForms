using ServiceStack.DataAnnotations;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Carniceria.DATOS
{
    public class Persona
    {
        [Key]
        [AutoIncrement]
        public int IdPersona { get; set; }

        public string Nombre { get; set; }
        public string PrimerApellido { get; set; }
        public string SegundoApellido { get; set; }
        public int Telefono { get; set; }
        public string Direccion { get; set; }
        public string Email { get; set; }
        public string Contrasena { get; set; }
        public string NombreUsuario { get; set; }
        public int IdRol { get; set; }

    }
}
