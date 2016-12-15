<%@ Page Title="" Language="C#" MasterPageFile="~/Distribucion.Master" AutoEventWireup="true" CodeBehind="CrearRuta.aspx.cs" Inherits="Carniceria.UI.CrearRuta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <asp:ListBox ID="lbCompras" runat="server" CssClass="form-control"></asp:ListBox>
            </div>
            <div class="col-md-4">
                <asp:Button ID="btnAgregar" runat="server" Text="Agregar" CssClass="btn btn-success" OnClick="btnAgregar_Click" />
                <br />
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="btnEliminar_Click" />
                <br />
                <asp:Calendar ID="cldFechaEntrega" runat="server"></asp:Calendar>
                <br />
                <asp:TextBox ID="tb1" runat="server" CssClass="datepicker"></asp:TextBox>
                <br />
                <asp:Button ID="btnCrearRuta" runat="server" Text="Crear" CssClass="btn btn-primary" />
            </div>
            <div class="col-md-4">
                <asp:ListBox ID="lbRuta" runat="server" CssClass="form-control"></asp:ListBox>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(function () {
            $('.datepicker').datepicker();
        });
    </script>
</asp:Content>
