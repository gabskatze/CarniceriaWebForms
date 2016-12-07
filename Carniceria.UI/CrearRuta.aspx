<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearRuta.aspx.cs" Inherits="Carniceria.UI.CrearRuta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rutas</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvCompras" runat="server"></asp:GridView>
        <asp:Button ID="btnAgregar" runat="server" Text="Agregar" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" />
        <asp:GridView ID="gvRuta" runat="server"></asp:GridView>
        <asp:Calendar ID="cldFechaEntrega" runat="server"></asp:Calendar>
        <asp:Button ID="btnCrearRuta" runat="server" Text="Crear" />
    </div>
    </form>
</body>
</html>
