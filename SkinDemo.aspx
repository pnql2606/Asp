<%@ Page Title="Test of skin" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="SkinDemo.aspx.cs" Inherits="MyFirstWebPage.SkinDemo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:Button ID="Button1" runat="server" EnableTheming="True" Text="Button" />
    <asp:Button ID="Button2" runat="server" SkinID="RedButton" Text="Button" />
</asp:Content>
