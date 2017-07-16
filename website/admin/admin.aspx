<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="website.admin.admin" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>博客管理</title>
<link rel="stylesheet" type="text/css" href="../css/blog.css"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.ad-gallery.js"></script>
<script type="text/javascript" src="js/zzsc.js"></script>
</head>

<body>
    <form id="form1" runat="server">
<div id="container">
	<div id="globallink">
    <ul>
			<li><a href="../index.aspx">个人首页</a></li>			
			<li><a href="../article.aspx">我的视频</a></li>
			<li><a href="../album.aspx">我的相册</a></li>
			<li><a href="../message.aspx">我的留言</a></li>			
		</ul>
  </div>

	<div id="login" >
  
      管理员<%=Session["username"]%>，您好
     
  
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="退出" />
  </div>
<div id="content">

	<div id="left">
	    <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows">
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <Nodes>
                <asp:TreeNode Text="账号设置" Value="账号设置">
                    <asp:TreeNode Text="个人资料" Value="个人帐号" NavigateUrl="~/admin/profile.aspx" Target="main"></asp:TreeNode>
                    <asp:TreeNode Text="用户资料" Value="用户帐号" NavigateUrl="~/admin/userprofile.aspx" Target="main"></asp:TreeNode>
                </asp:TreeNode>
                <asp:TreeNode Text="博客管理" Value="博客管理">
                    <asp:TreeNode Text="文章" Value="文章">
                        <asp:TreeNode NavigateUrl="~/admin/editarticle.aspx" Target="main" Text="查看文章" Value="查看文章"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/admin/addarticle.aspx" Target="main" Text="发表新文章" Value="发表新文章"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode Text="视频" Value="视频" NavigateUrl="~/admin/vedio.aspx" Target="main"></asp:TreeNode>
                    <asp:TreeNode Text="相册" Value="相册" NavigateUrl="~/admin/addphoto.aspx" Target="main"></asp:TreeNode>
                    <asp:TreeNode Text="留言" Value="留言" NavigateUrl="~/admin/manams.aspx" Target="main"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
            <ParentNodeStyle Font-Bold="False" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
        </asp:TreeView>
    </div>
   <div id="main">
        <iframe id="mainf" name="main" frameborder="0">你好，管理员</iframe>
       </div>
  <div id="footer">
    <p>All Rights Reserved </p>
  </div>
</div>
   
    </form>
</body>
</html>
