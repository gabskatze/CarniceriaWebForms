using Carniceria.BL.Clases;
using Carniceria.BL.Interfaces;
using System;
using System.Linq;

namespace Carniceria.UI
{
    public partial class CrearRuta : System.Web.UI.Page
    {
        private readonly IFacturaBL facturaBL;
        private readonly IPersonaBL personaBL;

        public CrearRuta()
        {
            facturaBL = new FacturaBL();
            personaBL = new PersonaBL();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            var facturasSinEntregar = facturaBL.ListarFacturasSinEntregar();
            var idsPersona = facturasSinEntregar.Select(x => x.IdPersona);
            var personas = personaBL.ListarPersonas(idsPersona);
            var comprasDataSource = facturasSinEntregar.Join(personas, f => f.IdPersona, p => p.IdPersona, (f, p) => new {
                f.IdFactura,
                f.FechaCompra,
                Text = string.Format("{0} - {1} - {2}", f.FechaCompra.ToShortDateString(), p.Nombre, p.Direccion)
            }).OrderByDescending(x => x.FechaCompra);

            lbCompras.DataSource = comprasDataSource;
            lbCompras.DataValueField = "IdFactura";
            lbCompras.DataTextField = "Text";
            lbCompras.DataBind();
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}