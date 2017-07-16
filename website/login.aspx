<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录</title>
<link rel="stylesheet" type="text/css" href="css/blog.css"/>
</head>
  <body>
   <div id="container">
	<div id="globallink">
    <ul>
			<li><a href="index.aspx">个人首页</a></li>			
			<li><a href="article.aspx">我的视频</a></li>
			<li><a href="album.aspx">我的相册</a></li>
			<li><a href="message.aspx">我的留言</a></li>			
		</ul>
  </div>	
  <div id="register">
  <br/>
      <form id="form" runat="server">
  <h1>登陆</h1>
  帐号：&nbsp;&nbsp;
          <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
          <br/>
  密码：&nbsp;&nbsp; 
          <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
          <br/>
          <br/>
          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登陆" />
&nbsp;<input type="reset" name="cz" id="cz" value="重置" />
      <br/>
      <br/>
      <br/>
      </form>
	</div>
    <div id="footer">
    <p>All Rights Reserved </p>
    </div>
</div>
  </body>
</html>
