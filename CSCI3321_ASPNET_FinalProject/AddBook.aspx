<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>&nbsp;</h1>
    <h1>Add the book</h1>
    <asp:Label ID="lblBookTitle" runat="server" Text="Book Title: " Width="147px"></asp:Label>
    <asp:TextBox ID="txtBookTitle" runat="server" Width="201px" height="27px" OnTextChanged="txtBookTitle_TextChanged" AutoPostBack="True"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblPrice" runat="server" Text="Price: " Width="147px"></asp:Label>
    <asp:TextBox ID="txtPrice" runat="server" Width="200px" height="27px" OnTextChanged="txtBookTitle_TextChanged" AutoPostBack="True"></asp:TextBox>
    <br />
    <asp:Label ID="lblPublish" runat="server" Text="Date of Publication: " Width="147px"></asp:Label>
    <asp:TextBox ID="txtPublish" runat="server" Width="200px" height="27px" OnTextChanged="txtBookTitle_TextChanged" AutoPostBack="True"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Select Author:" Width="146px"></asp:Label>
    <asp:DropDownList ID="ddlAuthor" runat="server" DataSourceID="SqlDataSource3" DataTextField="LastName" DataValueField="AuthorID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT LastName,AuthorID FROM [Authors]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Select Publisher: " Width="146px"></asp:Label>
    <asp:DropDownList ID="ddlPublisher" runat="server" DataSourceID="SqlDataSource2" DataTextField="PublisherName" DataValueField="PublisherID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT PublisherName,PublisherID FROM [Publishers]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Select Genre: " Width="146px"></asp:Label>
    <asp:DropDownList ID="ddlGenre" runat="server" DataSourceID="SqlDataSource1" DataTextField="GenreName" DataValueField="GenreID">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" SelectCommand="SELECT GenreName,GenreID FROM [Genres]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="btnBook" runat="server" Height="32px" OnClick="btnBook_Click" Text="Add" Width="102px" />
    <asp:Label ID="lblComplete" runat="server"></asp:Label>
</asp:Content>