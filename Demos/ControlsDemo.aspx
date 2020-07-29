<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlsDemo.aspx.cs" Inherits="MyFirstWebPage.Demos.ControlsDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="../Styles/styles.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="Your Name:"></asp:Label>
            <asp:TextBox ID="YourName" runat="server" style="margin-left: 8px" ></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="SubmitButton_Click" Text="Submit Information" CssClass="intro" />
            <br />
            <asp:Label ID="Result" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
