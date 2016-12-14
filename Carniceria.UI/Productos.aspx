<%@ Page Title="" Language="C#" MasterPageFile="~/Administracion.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="Carniceria.UI.Productos" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-group" style="">
        <asp:GridView ID="dgvProductos" runat="server" CssClass="table table-hover"></asp:GridView>       
    </div>
</asp:Content>
