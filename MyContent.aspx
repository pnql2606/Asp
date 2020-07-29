<%@ Page Title="MyContent" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="MyContent.aspx.cs" Inherits="MyFirstWebPage.MyContent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
<marquee behavior="alternate"><marquee width="150"><h1>Chào mừng đến với ASP.NET</h1></marquee></marquee>
    <p>Chuc cac ban thanh cong voi mon hoc nay!</p> 
    <p>Den trang <a href="Login.aspx">Dang nhap</a></p>
</asp:Content>
