<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente.Master" AutoEventWireup="true" CodeBehind="EditarCuenta.aspx.cs" Inherits="Carniceria.UI.EditarCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      
     <div class="alert alert-success" visible="false" id="mensaje" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensaje" runat="server"></strong>
    </div>
    <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensajeError" runat="server"></strong>
    </div> 
    <asp:Label ID="Label9" runat="server" Text="Busqueda por correo:"></asp:Label>
   <br />
     <asp:TextBox ID="txtBcorreo" runat="server"></asp:TextBox>

 
     <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
       <br />
    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
   <br />
     <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
   <br />
     <asp:Label ID="Label2" runat="server" Text="Primer Apellido:"></asp:Label>
   <br />
     <asp:TextBox ID="txtPApellido" runat="server"></asp:TextBox>
   <br />
     <asp:Label ID="Label3" runat="server" Text="Segundo Apellido:"></asp:Label>
  <br />
      <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>  
  <br />
      <asp:Label ID="Label4" runat="server" Text="Telefono:"></asp:Label>
   <br />
     <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>  
  <br />
      <asp:Label ID="Label5" runat="server" Text="Dirreción:"></asp:Label>
   <br />
     <asp:TextBox ID="txtDirrecion" runat="server"></asp:TextBox>
   <br />
     <asp:Label ID="Label6" runat="server" Text="Correo:"></asp:Label>
<br /> 
     <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
 <br /> 
    <asp:Label ID="Label7" runat="server" Text="rol"></asp:Label>
    <br />
      <asp:DropDownList ID="ddlrol" runat="server" ></asp:DropDownList>
    <br />
    <asp:Label ID="Label8" runat="server" Text="Contaseña:"></asp:Label>
   
    <br />
     <asp:TextBox ID="txtContreseña" runat="server"></asp:TextBox>
    <br />     
    <br />
    <asp:Button ID="btnModificar" runat="server" Text="Modificar"  OnClick="btnModificar_Click" CssClass="form-contro"/>
</asp:Content>
