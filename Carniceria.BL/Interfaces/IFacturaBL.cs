﻿using Carniceria.DATOS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Carniceria.BL.Interfaces
{
    public interface IFacturaBL
    {
        List<Factura> ListarFacturasSinEntregar();
    }
}
