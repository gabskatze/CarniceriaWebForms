using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Carniceria.BL.Interfaces;
using Carniceria.DATOS;
using Carniceria.BL.Clases;

namespace Carniceria.UI
{
    public partial class Logiin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {

                IPersonaBL _us = new PersonaBL();
                var usuario = _us.BuscarUsuario(tbxUsuario.Text,
                    Encriptar.Encriptars(tbxContrasena.Text, Encriptar.Llave));
                if (usuario != null)
                {
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    mensajeError.Visible = true;
                    textoMensajeError.InnerHtml = "Correo o contraseña incorrecto";
                    tbxUsuario.Text = string.Empty;
                    tbxContrasena.Text = string.Empty;
                    tbxUsuario.Focus();
                }
            }
            catch
            {
                mensaje.Visible = false;
                mensajeError.Visible = true;
                textoMensaje.InnerHtml = string.Empty;
                textoMensajeError.InnerHtml = "Ocurrio un error";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            Response.Redirect("Registrar.aspx");
        }
    }
}