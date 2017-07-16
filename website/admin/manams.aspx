<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manams.aspx.cs" Inherits="admin_manams" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="time">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username" />
                <asp:BoundField DataField="message" HeaderText="留言" SortExpression="message" />
                <asp:BoundField DataField="time" HeaderText="发表时间" SortExpression="time" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=blog;Persist Security Info=True;User ID=sa;Password=123456" DeleteCommand="DELETE FROM [message] WHERE [time] = @time" InsertCommand="INSERT INTO [message] ([username], [message], [time]) VALUES (@username, @message, @time)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [message]" UpdateCommand="UPDATE [message] SET [username] = @username, [message] = @message WHERE [time] = @time">
            <DeleteParameters>
                <asp:Parameter Name="time" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="message" Type="String" />
                <asp:Parameter Name="time" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="message" Type="String" />
                <asp:Parameter Name="time" Type="DateTime" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
