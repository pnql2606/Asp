<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentsFilter.aspx.cs" Inherits="MyFirstWebPage.StudentsFilter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TenKhoa" DataValueField="MaKhoa">
                <asp:ListItem>Chon Khoa</asp:ListItem>
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSV" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="MaSV" HeaderText="MaSV" ReadOnly="True" SortExpression="MaSV" />
                    <asp:BoundField DataField="TenSV" HeaderText="TenSV" SortExpression="TenSV" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="MaKhoa" HeaderText="MaKhoa" SortExpression="MaKhoa" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLySinhVienConnectionString1 %>" SelectCommand="SELECT * FROM [SinhVien] WHERE ([MaKhoa] = @MaKhoa)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="MaKhoa" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLySinhVienConnectionString1 %>" SelectCommand="SELECT [MaKhoa], [TenKhoa] FROM [Khoa]"></asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
