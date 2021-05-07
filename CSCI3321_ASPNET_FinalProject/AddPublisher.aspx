<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPublisher.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddPublishers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Add the publisher</h1>
    <asp:Label ID="lblName" runat="server" Text="Publisher Name: "></asp:Label>
    <asp:TextBox ID="txtName" runat="server" Width="201px" height="27px" OnTextChanged="txtName_TextChanged" AutoPostBack="True"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblAddress" runat="server" Text="Address: " Width="118px"></asp:Label>
    <asp:TextBox ID="txtAddress" runat="server" Width="200px" height="27px" OnTextChanged="txtName_TextChanged" AutoPostBack="True"></asp:TextBox>
    <br />
    <asp:Label ID="lblCity" runat="server" Text="City: " Width="118px"></asp:Label>
    <asp:TextBox ID="txtCity" runat="server" Width="200px" height="27px" OnTextChanged="txtName_TextChanged" AutoPostBack="True"></asp:TextBox>
    <br />
    <asp:Label ID="lblPost" runat="server" Text="Postal Code: " Width="118px"></asp:Label>
    <asp:TextBox ID="txtPost" runat="server" Width="200px" height="27px" OnTextChanged="txtName_TextChanged" AutoPostBack="True"></asp:TextBox>
    <br />
    <asp:Label ID="lblCountry" runat="server" Text="Country: " Width="118px"></asp:Label>
    <asp:TextBox ID="txtCountry" runat="server" Width="200px" height="27px" OnTextChanged="txtName_TextChanged" AutoPostBack="True"></asp:TextBox>
    <br />
    <asp:Label ID="lblPhone" runat="server" Text="Phone Number: " Width="118px"></asp:Label>
    <asp:TextBox ID="txtPhone" runat="server" Width="200px" height="27px" OnTextChanged="txtName_TextChanged" AutoPostBack="True"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnPublisher" runat="server" Height="32px" OnClick="btnPublisher_Click" Text="Add" Width="102px" />
    <asp:Label ID="lblComplete" runat="server"></asp:Label>
</asp:Content>