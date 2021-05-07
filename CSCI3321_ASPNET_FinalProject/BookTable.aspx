<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookTable.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.BookTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>All Books</h3>
        <br />
    <div>
         <asp:GridView ID="gvBooks" runat="server" CellSpacing="2" Width="100%" GridLines="None" RowHeaderColumn="Title" ShowFooter="True">
             <AlternatingRowStyle BackColor="#F0F0F0" />
         </asp:GridView>
    </div>
</asp:Content>