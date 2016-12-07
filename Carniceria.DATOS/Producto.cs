using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Carniceria.DATOS
{
    public class Producto
    {
        public int IdProducto { get; set; }
        public string NombreProducto { get; set; }
        public int IdCategoria { get; set; }
        public double CantDisponible { get; set; }
        public string Imagen { get; set; }
        public string Descripcion { get; set; }
        public double Precio { get; set; }
    }
}
