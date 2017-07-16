<%@ Page Language="C#" AutoEventWireup="true" CodeFile="album.aspx.cs" Inherits="website.album" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的相册</title>
<link rel="stylesheet" type="text/css" href="css/blog.css"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.ad-gallery.js"></script>
<script type="text/javascript" src="js/zzsc.js"></script>
</head>

<body>
  <form id="form" runat="server">
<div id="container">
	<div id="globallink">
    <ul>
			<li><a href="index.aspx">个人首页</a></li>			
			<li><a href="article.aspx">我的视频</a></li>
			<li><a href="#">我的相册</a></li>
			<li><a href="message.aspx">我的留言</a></li>			
		</ul>
  </div>
    <div id="login" >
    <% if (Session["type"] == null)
        { %>
        <asp:Label ID="Label1" runat="server" Text="游客，你好"></asp:Label>
 	 	<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登陆" />
        <asp:Button ID="Button2" runat="server" Text="注册" OnClick="Button2_Click" />

   <%}
       else if((int)Session["type"] == 0)
       {%>
       <%=Session["username"]%>，您好
        <asp:Button ID="Button4" runat="server" Text="管理" OnClick="Button4_Click" />  
 	 	<asp:Button ID="Button3" runat="server" Text="退出" OnClick="Button3_Click" />       
       <%}
       else {%>
       <%=Session["username"]%>，您好
 	 	<asp:Button ID="Button5" runat="server" Text="退出" OnClick="Button3_Click" />       
       <%}%>	      
  </div>
<div id="content">
<div class="modhead" style="width:190px; height:20px; display:block">
<span>博主</span>
</div>
<div class="modhead" style="width:490px; height:20px; display:block">
<span>相册</span>
</div>
	<div id="parameter">
		<div id="author">
			<p class="mypic"><img src="images/mypic.jpg"></p>
			<p><%=username%>的BLOG</p>
		</div>    
        <div id="profile" style="padding-bottom:30px;">
			<h1><span>个人资料</span></h1>
			<ul>
				<li><img src="images/1.gif" />位于 <%=location%></li>
				<li><img src="images/3.gif" />生日 <%=birthday%></li>
                <li><img src="images/2.gif" />简介 <%=introduction%></li>
				<li>
                    <img src="images/6.gif" />爱好 <%=hobby%></li>
                <li>
                    <img src="images/7.png" />邮箱 <%=email%></li>
			</ul>
			<br/>
		</div> 
	</div>
    <div id="main">
   <div id="gallery" class="ad-gallery">
  <div class="ad-image-wrapper"> </div>
  <div class="ad-nav" >
    <div class="ad-thumbs">
      <ul class="ad-thumb-list" >
           <%while(i>0)
            {
                 i--;%>
       <li> <a href="<%=path[i]%><%=name[i]%>"> <img src="<%=path[i]%><%=name[i]%>" width="90" height="60"/> </a> </li>


           <%
                  }%> 

      </ul>
    </div>
  </div>
</div>
    </div>
   
  <div id="footer">
    <p>All Rights Reserved </p>
  </div>
</div>
   </div>
      </form>
</body>
</html>

