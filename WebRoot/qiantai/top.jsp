<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%String path = request.getContextPath();%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="<%=path %>/css/style.css" rel="stylesheet" type="text/css" />
	
	<style rel="stylesheet" type="text/css">
	   a{font-size: 14px;}
    </style>

    <script type="text/javascript">
    
    </script>
</head>
  
<body>
<div class="heard" style="background:url(/loginxiangmu/images/bg02.jpg)">
	<div class="top">
		<table border="0" width="100%">
		    <tr>
		       <td align="left" valign="top" width="50%">
		          <div class="logo" style="font-size: 28px;margin-top: 20px;margin-left: 128px;"><%-- <img src="<%=path %>/images/logo.jpg" width="398" height="86" /> --%>基于Java的音乐网站</div>
		       </td>
		       <td align="left" valign="top" width="50%">
		          <div style="font-size: 13px;margin-top: 70px;margin-left: 100px;">
		               <!-- <a href="#" style="font-weight: 700">用户注册</a>&nbsp;&nbsp;&nbsp;
		               <a href="#" style="font-weight: 700">登陆</a> -->
		               <SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;'+''.charAt(new Date().getDay());",1000)</SCRIPT><SPAN id=clock></SPAN>
		          </div>
		       </td>
		    </tr>
		</table>
	</div>
</div>



<div class="rz_bw_nav001_m">
	<div class="nav">
		<div class="nav_main">
			<ul id="nav_all" style="margin-left: 30px;">
				<li><a href="<%=path %>/qiantai/default.jsp" style="font-size: 15px;">系统首页</a></li><li class="spale"><img src="<%=path %>/images/navbg2.jpg" width="2" height="61" /></li>
				<li><a href="<%=path %>/xinwenAll.action" style="font-size: 15px;">新闻资讯 </a></li><li class="spale"><img src="<%=path %>/images/navbg2.jpg" width="2" height="61" /></li>
				<li><a href="<%=path %>/liuyanAll.action" style="font-size: 15px;">系统留言板</a></li><li class="spale"><img src="<%=path %>/images/navbg2.jpg" width="2" height="61" /></li>
				<li><a href="<%=path %>/gequAll.action" style="font-size: 15px;">音乐信息</a></li><li class="spale"><img src="<%=path %>/images/navbg2.jpg" width="2" height="61" /></li>
				<li><a href="<%=path %>/qiantai/gequ/gequSea.jsp" style="font-size: 15px;">音乐查询</a></li><li class="spale"><img src="<%=path %>/images/navbg2.jpg" width="2" height="61" /></li>
				<li><a href="<%=path %>/geshouRenqi.action" style="font-size: 15px;">人气歌手</a></li><li class="spale"><img src="<%=path %>/images/navbg2.jpg" width="2" height="61" /></li>
			</ul>
		</div>
	</div>
</div>    
</body>
</html>
