using Carniceria.DATOS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Carniceria.DS.Interfaces
{
    public interface IDetalle_RutaDS
    {
        List<Detalle_Ruta> ListarDetalleRuta(int idRuta);

        List<Detalle_Ruta> ListarDetalleRuta();
    }
}
