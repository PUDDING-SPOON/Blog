<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="admin_userprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="account" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" >
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="account" HeaderText="帐号" SortExpression="account" ReadOnly="True" />
                <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" />
                <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=blog;Persist Security Info=True;User ID=sa;Password=123456" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [UserProfile]" DeleteCommand="DELETE FROM [UserProfile] WHERE [account] = @account" InsertCommand="INSERT INTO [UserProfile] ([account], [password], [username]) VALUES (@account, @password, @username)" UpdateCommand="UPDATE [UserProfile] SET [password] = @password, [username] = @username WHERE [account] = @account">
            <DeleteParameters>
                <asp:Parameter Name="account" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="account" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="username" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="account" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
    </div>
    </form>
</body>
</html>
