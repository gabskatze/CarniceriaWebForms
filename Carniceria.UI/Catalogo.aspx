<%@ Page Title="" Language="C#" MasterPageFile="~/Inicio.Master" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="Carniceria.UI.Catalogo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="alert alert-success" visible="false" id="mensaje" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensaje" runat="server"></strong>
    </div>
    <div class="alert alert-danger" visible="false" id="mensajeError" runat="server">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong id="textoMensajeError" runat="server"></strong>
    </div>
    <div class="form-inline">
        <h3>Catalogo</h3>
        <asp:DropDownList ID="ddlCategorias" runat="server" CssClass="form-control" Width="400px"></asp:DropDownList>
        <asp:Button ID="btnFiltrar" runat="server" Text="Mostar" CssClass="btn btn-success" OnClick="btnFiltrar_Click"/>
    </div>
    <div class="form-group">
        <asp:ListView ID="lvProductos" runat="server"
            GroupItemCount="3"
            ItemType="Carniceria.DATOS.Producto" DataKeyNames="IdProducto">
            <EmptyDataTemplate>
                <table>
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <ItemTemplate>
                <td runat="server">
                    <table align="center">
                        <tr>
                            <td>
                                <asp:Image ID="imgProd" runat="server" ImageUrl="<%# Item.Imagen %>" Height="100px" Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%#: Item.NombreProducto %>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%#: Item.Precio %> X kilo
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%#: Item.Descripcion %>
                            </td>
                        </tr>
                        <tr>
                           
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnAñadirCarro" runat="server" Text="Añadir Al Carro" CssClass="btn btn-primary" OnClick="btnAñadirCarro_Click" />
                            </td>
                        </tr>
                    </table>
                    </p>
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table style="width: 100%;">
                    <tbody>
                        <tr>
                            <td>
                                <table id="groupPlaceholderContainer" runat="server" style="width: 100%">
                                    <tr id="groupPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                        <tr></tr>
                    </tbody>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    </div>

</asp:Content>
