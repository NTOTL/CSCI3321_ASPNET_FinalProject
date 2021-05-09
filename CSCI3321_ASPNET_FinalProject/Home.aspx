<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <h1>&nbsp;</h1>
        <h1>Book Database</h1>

    <p>
        Would you like to...</p>
    <asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="HyperLink">
        <asp:ListItem Value="~/AddBook" runat="server">Add Book</asp:ListItem>
        <asp:ListItem Value="~/AddAuthors" runat="server">Add Authors</asp:ListItem>
        <asp:ListItem Value="~/AddPublishers" runat="server">Add Publishers</asp:ListItem>
        <asp:ListItem Value="~/MyBooks" runat="server">View Books</asp:ListItem>
    </asp:BulletedList>
</asp:Content>
