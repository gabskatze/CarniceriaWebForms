<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.Master" AutoEventWireup="true" CodeBehind="IngresarProducto.aspx.cs" Inherits="Carniceria.UI.IngresarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="alert alert-success" visible="false" id="mensaje" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensaje" runat="server"></strong>
    </div>
    <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensajeError" runat="server"></strong>
    </div>
    <div class="form-group">
        <asp:Label ID="lbProducto" runat="server" Text="IdProducto: "></asp:Label>
        <asp:TextBox ID="txtIdProducto" runat="server" class="form-control"></asp:TextBox><br />
        <asp:Label ID="lbNombre" runat="server" Text="Nombre: "></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" class="form-control"></asp:TextBox><br />
        <asp:Label ID="lbCategoria" runat="server" Text="Categoria: "></asp:Label>
        <asp:DropDownList ID="ddlCategorias" runat="server" CssClass="form-control" Width="280"></asp:DropDownList><br />
        <asp:Label ID="lbCantidad" runat="server" Text="Cantidad: "></asp:Label>
        <asp:TextBox ID="txtCantidad" runat="server" class="form-control"></asp:TextBox><br />
        <asp:Label ID="lbImagen" runat="server" Text="Imagen: "></asp:Label>
        <div class="form-inline">
            <asp:TextBox ID="txtImagen" runat="server" class="form-control"></asp:TextBox>
            <asp:Button ID="btnImportar" runat="server" Text="Importar" CssClass="btn btn-primary" />
        </div><br />
        <asp:Label ID="Label1" runat="server" Text="Descripcion: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox><br />
        <asp:Label ID="lbPrecio" runat="server" Text="Precio: "></asp:Label>
        <asp:TextBox ID="txtPrecio" runat="server" class="form-control"></asp:TextBox><br />       
        <br />
        <asp:Button ID="btnInsertar" runat="server" Text="Insertar" CssClass="btn btn-primary" OnClick="btnInsertar_Click" />

    </div>


</asp:Content>
