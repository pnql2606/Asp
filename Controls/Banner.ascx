<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Banner.ascx.cs" Inherits="MyFirstWebpage.Controls.Banner" %>
<asp:Panel ID="VerticalPanel" runat="server">
    <a href ="http://www.microsoft.com/" target="_blank" runat="server" id="VerticalLink">
    <asp:Image ID="Image1" runat="server" AlternateText="Đây là một banner" ImageUrl="~/Images/ezgif.com-resize.gif"/>
    </a>
</asp:Panel>
<asp:Panel ID="HorizontalPanel" runat="server">
    <a href ="http://www.microsoft.com/" target="_blank" runat="server" id="HorizontalLink">
    <asp:Image ID="Image2" runat="server" AlternateText="Đây là một banner" ImageUrl="~/Images/CAPPOO.gif" />
    </a>
</asp:Panel>