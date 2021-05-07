<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyBooks.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.MyBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Books</h3>

    <br />
    <asp:Table ID="tblBooks" runat="server" CssClass="table tale-stripe">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>Title</asp:TableHeaderCell>
            <asp:TableHeaderCell>Author</asp:TableHeaderCell>
            <asp:TableHeaderCell>Price</asp:TableHeaderCell>
            <asp:TableHeaderCell>Publish Date</asp:TableHeaderCell>
            <asp:TableHeaderCell>Publisher</asp:TableHeaderCell>
            <asp:TableHeaderCell>Genre</asp:TableHeaderCell>
        </asp:TableHeaderRow>
    </asp:Table>

    <!-- Build a table to list your book collection -->
    <!-- What server control should you use? -->
</asp:Content>