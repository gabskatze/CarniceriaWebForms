<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Logiin.aspx.cs" Inherits="Carniceria.UI.Logiin" %>
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
    
    <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
    <asp:TextBox ID="tbxUsuario" runat="server" class="form-control"></asp:TextBox><br />
    <asp:Label ID="lblContrasena" runat="server" Text="Contrasena"></asp:Label>
    <asp:TextBox ID="tbxContrasena" runat="server" class="form-control"></asp:TextBox><br />
    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary"/>
     <asp:Label ID="Label1" runat="server" Text="No tienes una cuenta?"></asp:Label>
             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Crea una Aquí</asp:LinkButton>
</asp:Content>
