<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addarticle.aspx.cs" Inherits="admin_addarticle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  
              <table style="width: 100%; height: 100%;">
                <tr>
                    <td class="style2">
                        标题：
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox1" runat="server" Width="450px" Height="30px" Style="margin-left: 0px; "
                            Font-Size="16pt"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        正文：
                    </td>
                    <td class="style4">
                      <asp:TextBox ID="TextBox2" runat="server" Width="450px" Height="130px">
                        </asp:TextBox>
                        </td>
                </tr>
                   <tr>
                    <td></td>
                    <td class="style4">
                     <asp:Button ID="Button1" runat="server" Text="发表" Width="90px" OnClick="Button1_Click" 
                             />
                        </td>
                </tr>
                  </table>
    </form>
</body>
</html>
