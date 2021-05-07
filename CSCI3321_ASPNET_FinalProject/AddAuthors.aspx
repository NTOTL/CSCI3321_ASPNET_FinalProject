<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAuthors.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddAuthors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Add the author</h1>
    <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
    <asp:TextBox ID="txtFirstName" runat="server" Width="200px" OnTextChanged="txtLastName_TextChanged" AutoPostBack="True"></asp:TextBox>
    <br />
    <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
    <asp:TextBox ID="txtLastName" runat="server" OnTextChanged="txtLastName_TextChanged" Width="200px" AutoPostBack="True"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblGender" runat="server" Text="Gender:" Width="93px" Height="26px"></asp:Label>
    <asp:RadioButtonList ID="radGender" runat="server">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Label ID="lblBirthdate" runat="server" Text="Birth year: "></asp:Label>
   


<div class="calendarClass">
    <asp:DropDownList id="YearList" runat="server" AutoPostBack="true" OnSelectedIndexChanged="YearList_SelectedIndexChanged"></asp:DropDownList>
    <asp:Calendar id="CalendarControl" runat="server"></asp:Calendar>
</div>
    <br />
    <br />
    <asp:Button ID="btnAuthor" runat="server" Height="32px" OnClick="btnAuthor_Click" Text="Add" Width="102px" />
    <asp:Label ID="lblComplete" runat="server"></asp:Label>
</asp:Content>
