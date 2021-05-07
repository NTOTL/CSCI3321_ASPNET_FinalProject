<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAuthors.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddAuthors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Author</h3>
 
    <div class="row">
        <div class="col-md-3">
            First Name: 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtAuthorFirst" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Last Name: 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtAuthorLast" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Gender (optional): 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtAuthorGender" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Birthdate (YYYY-MM-DD, optional): 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtAuthorDate" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <asp:Button ID="btnAddAuthor" runat="server" Text="Add Author" OnClick="btnAddAuthor_Click" CssClass="form-control" />
        <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Text="Please fill all required fields" Visible="False"></asp:Label>
    </div>
</asp:Content>