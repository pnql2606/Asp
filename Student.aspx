<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="MyFirstWebPage.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaSV" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="MaSV" HeaderText="MaSV" ReadOnly="True" SortExpression="MaSV" />
                    <asp:BoundField DataField="TenSV" HeaderText="TenSV" SortExpression="TenSV" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="MaKhoa" HeaderText="MaKhoa" SortExpression="MaKhoa" />
                </Columns>
            </asp:GridView>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="MaSV" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <Fields>
                    <asp:BoundField DataField="MaSV" HeaderText="MaSV" ReadOnly="True" SortExpression="MaSV" />
                    <asp:BoundField DataField="TenSV" HeaderText="TenSV" SortExpression="TenSV" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="MaKhoa" HeaderText="MaKhoa" SortExpression="MaKhoa" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLySinhVienConnectionString1 %>" DeleteCommand="DELETE FROM [SinhVien] WHERE [MaSV] = @MaSV" InsertCommand="INSERT INTO [SinhVien] ([MaSV], [TenSV], [Email], [MaKhoa]) VALUES (@MaSV, @TenSV, @Email, @MaKhoa)" ProviderName="<%$ ConnectionStrings:QuanLySinhVienConnectionString1.ProviderName %>" SelectCommand="SELECT [MaSV], [TenSV], [Email], [MaKhoa] FROM [SinhVien]" UpdateCommand="UPDATE [SinhVien] SET [TenSV] = @TenSV, [Email] = @Email, [MaKhoa] = @MaKhoa WHERE [MaSV] = @MaSV">
                <DeleteParameters>
                    <asp:Parameter Name="MaSV" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaSV" Type="String" />
                    <asp:Parameter Name="TenSV" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="MaKhoa" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TenSV" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="MaKhoa" Type="String" />
                    <asp:Parameter Name="MaSV" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            
        </div>
    </form>
</body>
</html>
