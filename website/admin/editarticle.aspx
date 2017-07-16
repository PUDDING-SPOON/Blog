<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editarticle.aspx.cs" Inherits="admin_editarticle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width:100%">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" >
            <Columns>
                <asp:BoundField DataField="id" Visible="False" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" >
                <ItemStyle Width="80px" />
                </asp:CommandField>
                <asp:BoundField DataField="bwtitle" HeaderText="标题" SortExpression="bwtitle" />
                <asp:BoundField DataField="bwsub" HeaderText="正文" SortExpression="bwsub" />
                <asp:BoundField DataField="bwtime" HeaderText="发布时间" SortExpression="bwtime" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=blog;Persist Security Info=True;User ID=sa;Password=123456" DeleteCommand="DELETE FROM [article] WHERE [id] = @id" InsertCommand="INSERT INTO [article] ([bwtitle], [bwsub], [bwtime]) VALUES (@bwtitle, @bwsub, @bwtime)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [article]" UpdateCommand="UPDATE [article] SET [bwtitle] = @bwtitle, [bwsub] = @bwsub, [bwtime] = @bwtime WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="bwtitle" Type="String" />
                <asp:Parameter Name="bwsub" Type="String" />
                <asp:Parameter Name="bwtime" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="bwtitle" Type="String" />
                <asp:Parameter Name="bwsub" Type="String" />
                <asp:Parameter Name="bwtime" Type="DateTime" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
