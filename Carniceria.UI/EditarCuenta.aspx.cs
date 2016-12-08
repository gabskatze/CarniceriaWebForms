using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Carniceria.BL.Clases;
using Carniceria.BL.Interfaces;
using Carniceria.DATOS;


namespace Carniceria.UI
{
    public partial class EditarCuenta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                IPersonaBL iPersona = new BL.Clases.PersonaBL();

                var pr = iPersona.BuscarPersona(txtBcorreo.Text);
                if (pr != null)
                {
                    txtNombre.Text = pr.Nombre;
                    txtPApellido.Text = pr.PrimerApellido;
                    txtApellido.Text = pr.SegundoApellido;
                    txtDirrecion.Text = pr.Direccion;
                    txtCorreo.Text = pr.Email;
                    ddlrol.Text = pr.NombreUsuario;

                    txtContreseña.Text = pr.Contrasena;
                    txtTelefono.Text = pr.Telefono.ToString();
                }
                else
                {
                    mensaje.Visible = false;
                    mensajeError.Visible = true;
                    textoMensajeError.InnerHtml = "Persona no registrada. Intente otra vez";

                }
            }
            catch (Exception)
            {
                mensaje.Visible = false;
                mensajeError.Visible = true;
                textoMensajeError.InnerHtml = "Ocurrio un error";

            }
        }
    }
}
       
