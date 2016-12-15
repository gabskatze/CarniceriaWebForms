using Carniceria.BL.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Carniceria.DATOS;
using Carniceria.DS.Interfaces;
using Carniceria.DS.Clases;

namespace Carniceria.BL.Clases
{
    public class FacturaBL : IFacturaBL
    {
        private readonly IFacturaDS facturaDS;
        private readonly IDetalle_RutaDS detalleRutaDS;

        public  FacturaBL()
        {
            facturaDS = new FacturaDS();
            detalleRutaDS = new Detalle_RutaDS();
        }

        public List<Factura> ListarFacturasSinEntregar()
        {
            var facturas = facturaDS.ListarFacturas();
            var detalleRutaEntregadas = detalleRutaDS.ListarDetalleRuta().Where(x => x.Entregado);
            var idsFacturasEntregadas = detalleRutaEntregadas.Select(x => x.IdFactura);

            return facturas.Where(x => !idsFacturasEntregadas.Contains(x.IdFactura)).ToList();
        }
    }
}
