<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">
        <div class="col-md-3">
            Book Name: 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBookName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Price: 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBookPrice" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Author: 
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlAuthorID" runat="server" DataSourceID="sdsAuthorIDs" DataTextField="FullName" CssClass="form-control" DataValueField="AuthorID"></asp:DropDownList>
            <asp:SqlDataSource ID="sdsAuthorIDs" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, FullName FROM Authors"></asp:SqlDataSource>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Publisher: 
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlPublisherID" runat="server" DataSourceID="sdsPublisherIDs" DataTextField="PublisherName" CssClass="form-control" DataValueField="PublisherID"></asp:DropDownList>
            <asp:SqlDataSource ID="sdsPublisherIDs" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID, PublisherName FROM Publishers"></asp:SqlDataSource>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Publish Date (YYYY-MM-DD): 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubDate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Genre: 
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlGenreID" runat="server" CssClass="form-control" DataSourceID="sdsGenreIDs" DataTextField="GenreName" DataValueField="GenreID"></asp:DropDownList>
            <asp:SqlDataSource ID="sdsGenreIDs" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreID, GenreName FROM Genres"></asp:SqlDataSource>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Word Count (optional): 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtWordCount" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <asp:Button ID="btnAddBook" runat="server" Text="Add Book" OnClick="btnAddBook_Click" CssClass="form-control" />
        <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Text="Please fill all required fields" Visible="False"></asp:Label>
    </div>
    
</asp:Content>
