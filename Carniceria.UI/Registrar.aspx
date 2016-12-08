<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Carniceria.UI.Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
     <div class="alert alert-success" visible="false" id="mensaje" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensaje" runat="server"></strong>
    </div>
    <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensajeError" runat="server"></strong>
    </div> 

     <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="Primer Apellido:"></asp:Label>
    <asp:TextBox ID="txtPApellido" runat="server"></asp:TextBox>
    <asp:Label ID="Label3" runat="server" Text="Segundo Apellido:"></asp:Label>
    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>  
    <asp:Label ID="Label4" runat="server" Text="Telefono:"></asp:Label>
    <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>  
    <asp:Label ID="Label5" runat="server" Text="Dirreción:"></asp:Label>
    <asp:TextBox ID="txtDirrecion" runat="server"></asp:TextBox>
    <asp:Label ID="Label6" runat="server" Text="Correo:"></asp:Label>
    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
  <asp:Label ID="Label7" runat="server" Text="rol"></asp:Label>
      <asp:DropDownList ID="ddlrol" runat="server" CssClass="form-control" Width="400px"></asp:DropDownList>

    <asp:Label ID="Label8" runat="server" Text="Contaseña:"></asp:Label>
    <asp:TextBox ID="txtContreseña" runat="server"></asp:TextBox>
         <br />
    <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />


</asp:Content>
