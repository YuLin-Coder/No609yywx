<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%String path = request.getContextPath();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="<%=path %>/css/houtai.css" rel="stylesheet" type="text/css">
	
	<style rel="stylesheet" type="text/css">
	   em{font-size: 15px;}
    </style>

    <script type="text/javascript">
        function logout()
		{
		   if(confirm("确定要退出吗??"))
		   {
			   window.parent.location="<%=path %>/qiantai/default.jsp";
		   }
		}
    </script>
</head>
  
<body>
<div id="dcWrap" style="height: 88px;"> 
<div id="dcHead" style="height: 88px;">
 <div id="head">
  <div class="logo" style="color: white;margin-top: 20px;font-size: 28px;margin-left: 45px;width: 450px;"><%-- <img src="<%=path %>/images/dclogo.gif" alt="logo"> --%>基于Java的音乐网站</div>
  <div class="nav">
   <ul class="navRight" style="margin-right: 500px;">
    <li class="M noLeft"><a href="#">您好，系统管理员</a></li>
    <li class="noRight"><a href="#" onclick="logout()">退出</a></li>
   </ul>
  </div>
 </div>
</div>


<div id="dcLeft">
<div id="menu">
 <ul>
  <li><a href="<%=path %>/admin/userinfo/userPw.jsp" target="iframe1"><i class="home"></i><em>修改登陆密码</em></a></li>
 </ul>
 
 <ul>
  <li><a href="<%=path %>/userMana.action" target="iframe1"><i class="system"></i><em>注册用户管理</em></a></li>
  <li><a href="<%=path %>/liuyanMana.action" target="iframe1"><i class="nav"></i><em>留言信息管理</em></a></li>
 </ul>
  
  
 <ul>
  <li><a href="<%=path %>/xinwenMana.action" target="iframe1"><i class="show"></i><em>新闻资讯管理</em></a></li>
  <li><a href="<%=path %>/gonggaoMana.action" target="iframe1"><i class="page"></i><em>系统公告管理</em></a></li>
 </ul>
 
 <ul>
  <li><a href="<%=path %>/geshouMana.action" target="iframe1"><i class="productCat"></i><em>歌手信息管理</em></a></li>
  <li><a href="<%=path %>/admin/geshou/geshouAdd.jsp" target="iframe1"><i class="product"></i><em>添加歌手信息</em></a></li>
 </ul>
 
 <ul>
  <li><a href="<%=path %>/leibieMana.action" target="iframe1"><i class="articleCat"></i><em>音乐类别管理</em></a></li>
  <li><a href="<%=path %>/gequMana.action" target="iframe1"><i class="article"></i><em>音乐信息管理</em></a></li>
  <li><a href="<%=path %>/admin/gequ/gequAdd.jsp" target="iframe1"><i class="article"></i><em>添加音乐信息</em></a></li>
 </ul>
 
</div>
</div>


<div id="dcMain"> 
<div id="index" class="mainBox" style="padding-top:10px;height:auto!important;height:550px;min-height:550px;">
  <iframe name="iframe1" align="top" frameborder="0" scrolling="auto" width="100%" height="550" src="">
  </iframe> 
</div>
</div>
</div>


</body>
</html>
