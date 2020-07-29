<%@ Page Title="Contact us" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="ContactUS.aspx.cs" Inherits="MyFirstWebPage.About1.ContactUS" ValidateRequest="false" %>

<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="ngocminhtran" TagName="ContactForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <ngocminhtran:ContactForm runat="server" id="ContactForm" />
</asp:Content>
