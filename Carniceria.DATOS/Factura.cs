using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Carniceria.DATOS
{
    public class Factura
    {
        public int IdFactura { get; set; }
        public DateTime FechaCompra { get; set; }
        public string TipoPago { get; set; }
        public int IdPersona { get; set; }
    }
}
