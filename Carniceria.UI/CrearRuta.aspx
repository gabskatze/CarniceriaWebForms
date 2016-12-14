<%@ Page Title="" Language="C#" MasterPageFile="~/Distribucion.Master" AutoEventWireup="true" CodeBehind="CrearRuta.aspx.cs" Inherits="Carniceria.UI.CrearRuta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:GridView ID="gvCompras" runat="server"></asp:GridView><br />
        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
        <asp:GridView ID="gvRuta" runat="server"></asp:GridView><br />
        <asp:Calendar ID="cldFechaEntrega" runat="server"></asp:Calendar>
        <asp:Button ID="btnCrearRuta" runat="server" Text="Crear" />
    </div>
</asp:Content>
