<%@ Page Title="Web services Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="WebServices.aspx.cs" Inherits="MyFirstWebPage.Demos.WebServices" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/WebServices/NameService.svc"/>
        </Services>
    </asp:ScriptManagerProxy>
    <input id="MyWebsite" type="text" />
    <input id="SayHello" type="button" value="SayHello" onclick="helloWorld();" />
    <input id="SayHelloPageMethod" type="button"
        value="Say Hello with a Page Method"
        onclick="helloWorldPageMethod();" />
    <script type="text/javascript">
        function helloWorld() {
            var myweb = document.getElementById('MyWebsite').value;
            alert("Hello " + myweb);
            //NameService.HelloWorld(myweb, helloWorldCallback);
        }
        function helloWorldCallback(result) {
            alert(result);
        }
        function helloWorldPageMethod() {
            var yourname = document.getElementById('MyWebsite').value;
           PageMethods.HelloWorld(yourname, helloWorldCallback);
        }
    </script>
</asp:Content>
