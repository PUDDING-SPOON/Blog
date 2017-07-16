<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addphoto.aspx.cs" Inherits="admin_addphoto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    照片管理
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="imgname" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="imgname" HeaderText="图片名" SortExpression="imgname" ReadOnly="True" />
                <asp:BoundField DataField="imgpath" HeaderText="保存路径" SortExpression="imgpath" ReadOnly="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=localhost;Initial Catalog=blog;Persist Security Info=True;User ID=sa;Password=123456" DeleteCommand="DELETE FROM [album] WHERE [imgname] = @imgname" InsertCommand="INSERT INTO [album] ([imgname], [imgpath]) VALUES (@imgname, @imgpath)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [album]" UpdateCommand="UPDATE [album] SET [imgpath] = @imgpath WHERE [imgname] = @imgname">
            <DeleteParameters>
                <asp:Parameter Name="imgname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="imgname" Type="String" />
                <asp:Parameter Name="imgpath" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="imgpath" Type="String" />
                <asp:Parameter Name="imgname" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
    
        上传照片
        <table >
                <tr>
                    <td class="style3">
                        选择图片： </td>
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
    </div>
    </form>
</body>
</html>
