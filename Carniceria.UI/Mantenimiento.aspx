<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.Master" AutoEventWireup="true" CodeBehind="Mantenimiento.aspx.cs" Inherits="Carniceria.UI.Mantenimiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-inline">
        <div class="alert alert-success" visible="false" id="mensaje" runat="server">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong id="textoMensaje" runat="server"></strong>
        </div>
        <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong id="textoMensajeError" runat="server"></strong>
        </div>
        <asp:Label ID="lbProducto" runat="server" Text="IdProducto: " ErrorMessage="Debe digitar el Id."></asp:Label>
        <asp:TextBox ID="txtIdProducto" runat="server" class="form-control"></asp:TextBox>
        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" CssClass="btn btn-primary" />
    </div>
    <div class="form-group" id="formMantenimiento" runat="server" visible="false">
        <asp:Label ID="lbNombre" runat="server" Text="Nombre: "></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="lbCategoria" runat="server" Text="Categoria: "></asp:Label>
        <asp:DropDownList ID="ddlCategorias" runat="server" CssClass="form-control" Width="280"></asp:DropDownList><br />
        <asp:Label ID="lbCantidad" runat="server" Text="Cantidad: "></asp:Label>
        <asp:TextBox ID="txtCantidad" runat="server" class="form-control"></asp:TextBox>
        <div class="form-inline">
            <asp:TextBox ID="txtImagen" runat="server" class="form-control"></asp:TextBox>
            <asp:Button ID="btnImportar" runat="server" Text="Importar" CssClass="btn btn-primary" />
        </div>
        <asp:Label ID="lbDesc" runat="server" Text="Descripcion: "></asp:Label>
        <asp:TextBox ID="txtDescripcion" runat="server" class="form-control"></asp:TextBox>
        <asp:Label ID="lbPrecio" runat="server" Text="Precio: "></asp:Label>
        <asp:TextBox ID="txtPrecio" runat="server" class="form-control"></asp:TextBox>
        <div class="form-horizontal">
            <br />
            <asp:Button ID="btnModificar" runat="server" Text="Modificar" CssClass="btn btn-primary" OnClick="btnModificar_Click" />
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="btnEliminar_Click"/>
        </div>
    </div>
</asp:Content>
