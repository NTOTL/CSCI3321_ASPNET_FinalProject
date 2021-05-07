<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPublisher.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddPublisher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Publisher</h3>
 
    <div class="row">
        <div class="col-md-3">
            Publisher Name: 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Address (optional): 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubAddress" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            City (optional): 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubCity" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Country: 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubCountry" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Postal Code (optional): 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubZip" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
            Phone (optional): 
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubPhone" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <asp:Button ID="btnAddPublisher" runat="server" Text="Add Publisher" OnClick="btnAddPublisher_Click" CssClass="form-control" />
    <asp:Label ID="lblErrorMessage" runat="server" Text="Please fill all required fields" Visible="False" ForeColor="Red"></asp:Label>
    </div>
    </asp:Content>