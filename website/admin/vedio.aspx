<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vedio.aspx.cs" Inherits="admin_vedio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        视频管理<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="vname" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="title" HeaderText="标题" SortExpression="title" />
                <asp:BoundField DataField="vpath" HeaderText="保存路径" SortExpression="vpatch" />
                <asp:BoundField DataField="vname" HeaderText="视频名" SortExpression="vname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=blog;Persist Security Info=True;User ID=sa;Password=123456" DeleteCommand="DELETE FROM [video] WHERE [vname] = @vname" InsertCommand="INSERT INTO [video] ([title], [vpath], [vname]) VALUES (@title, @vpath, @vname)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [video]" UpdateCommand="UPDATE [video] SET [title] = @title, [vpath] = @vpath WHERE [vname] = @vname">
            <DeleteParameters>
                <asp:Parameter Name="vname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="vpath" Type="String" />
                <asp:Parameter Name="vname" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="vpath" Type="String" />
                <asp:Parameter Name="vname" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        上传视频</div>
        <table >
                <tr>
                    <td class="style2">
                        标题：
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        选择视频：
                    </td>
                    <td class="style4">
                   <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                </tr>
                   <tr>
                    <td></td>
                    <td class="style4">
                     <asp:Button ID="Button1" runat="server" Text="上传" Width="90px" OnClick="Button1_Click" 
                             />
                        </td>
                </tr>
                  </table>
    </form>
</body>
</html>
