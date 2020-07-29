<%@ Page Title="About us" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="AboutUS.aspx.cs" Inherits="MyFirstWebPage.About1.AboutUS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    một vài dòng text mô tả website, mục đích, giới thiệu bản thân, v.v.<asp:Button ID="Button1" runat="server" Text="Button" />
    <ngocminhtran:Banner ID="Banner2" runat="server" DisplayDirection="Horizontal" />
&nbsp;
</asp:Content>
