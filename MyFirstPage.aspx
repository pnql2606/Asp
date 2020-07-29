<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyFirstPage.aspx.cs" Inherits="MyFirstWebPage.MyFirstPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/styles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3 style="color: #000080; border-style: dashed; border-color: #000000 #00FF00 #FF0000 #FFFF00" >Xin chào các bạn. Đây là trang ASP đầu tiên của tôi.</h3>
            <p style="font-size: 40px; background-color: #00FFFF; border-style: dotted; border-color: #008000 #FF00FF #000080 #808080">Xin chào</p> 
            <asp:Label ID="lbServer" runat="server" Text=""></asp:Label><br/>
            <asp:Label ID="lbHTML" runat="server" Text=""></asp:Label><br/>
            <asp:Button ID="btnServer" runat="server" Text="Server" OnClick="ServerMessage" /><br/>
            <button type="button" onclick="HTMLMessage()">html</button>
        </div>
    </form>
    <script>
        function HTMLMessage() {
            document.getElementById("lbHTML").innerHTML = "I am HTML"
        }
    </script>
</body>
</html>
