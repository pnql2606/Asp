<%@ Page Title="Management Reviews" Language="C#" MasterPageFile="~/MasterPages/Management.Master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="MyFirstWebPage.Management.Reviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
        
        <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
            <asp:ListItem Value=""> Make a selection</asp:ListItem>
        </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddEditReview.aspx?Id={0}" DataTextField="Title" HeaderText="Title" />
            <asp:TemplateField HeaderText="Authoized" SortExpression="Authoized">
          
                <ItemTemplate>
                    <asp:Label ID="AuthoizedLabel" runat="server" Text='<%# GetBooleanText (Eval("Authorized")) %>'/>

              
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CreateDateTime" DataFormatString="{0:g}" HeaderText="CreateDateTime" SortExpression="CreateDateTime" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
        </asp:GridView>
        <a href="AddEditReview.aspx">Insert new review</a><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" DeleteCommand="DELETE FROM [Review] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Review] ([Title], [Id], [Authoized], [CreateDateTime]) VALUES (@Title, @Id, @Authoized, @CreateDateTime)" SelectCommand="SELECT [Title], [Id], [Authorized], [CreateDateTime] FROM [Review] WHERE ([Genreld] = @Genreld)" UpdateCommand="UPDATE [Review] SET [Title] = @Title, [Authoized] = @Authoized, [CreateDateTime] = @CreateDateTime WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Authoized" Type="Boolean" />
                <asp:Parameter Name="CreateDateTime" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Genreld" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Authoized" Type="Boolean" />
                <asp:Parameter Name="CreateDateTime" Type="DateTime" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" SelectCommand="SELECT [Name], [Id] FROM [Genre] ORDER BY [SortOrder]"></asp:SqlDataSource>
</asp:Content>