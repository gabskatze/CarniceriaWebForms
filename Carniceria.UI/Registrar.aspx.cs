using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Carniceria.BL.Interfaces;
using Carniceria.DATOS;

namespace Carniceria.UI
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            IPersonaBL irol = new BL.Clases.PersonaBL();
            var _roles = irol.ListarPersona();
           ddlrol.DataSource = _roles.Select(x => x.NombreUsuario);
            ddlrol.DataBind();

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {

            try
            {
                IPersonaBL rol = new BL.Clases.PersonaBL();
                var _per = rol.ListarPersona();
                int perso =
                    _per.Where(x => x.NombreUsuario == ddlrol.Text).Select(x => x.IdRol).FirstOrDefault();

                var pr = new Persona
                {

                    Nombre = txtNombre.Text,
                    PrimerApellido = txtPApellido.Text,
                    SegundoApellido = txtApellido.Text,
                    Direccion = txtDirrecion.Text,
                    Email = txtCorreo.Text,
                    IdRol = perso,
                    NombreUsuario = ddlrol.SelectedValue,
                    Contrasena = Encriptar.Encriptars(txtContreseña.Text, Encriptar.Llave),
                    Telefono = Convert.ToInt32(txtTelefono.Text)
                };
                IPersonaBL iProducto = new BL.Clases.PersonaBL();
                iProducto.InsertarPersona(pr);
            }
            catch
            {
                mensaje.Visible = false;
                mensajeError.Visible = true;
                textoMensaje.InnerHtml = string.Empty;
                textoMensajeError.InnerHtml = "Ocurrio un error";
            }
        }
    }
}