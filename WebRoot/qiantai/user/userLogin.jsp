<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style rel="stylesheet" type="text/css">
	    *{ font-family:Microsoft Yahei;font-size: 13px; }
    </style>
	
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	
	<script type="text/javascript">
	        function login()
	        {
	           if(document.userLogin.userName.value=="")
	           {
	               alert("请输入账号");
	               return;
	           }
	           if(document.userLogin.userPw.value=="")
	           {
	               alert("请输入密码");
	               return;
	           }
	           
	           document.getElementById("indicator").style.display="block";
			   loginService.login(document.userLogin.userName.value,document.userLogin.userPw.value,1,callback);
	        }
	        
	        
	        function callback(data)
			{
			    document.getElementById("indicator").style.display="none";
			    if(data=="no")
			    {
			        alert("用户名或密码错");
			    }
			    if(data=="yes")
			    {
			        alert("通过验证,系统登录成功");
			        window.location.reload();
			    }
			    
			}
			
			function userLogout()
	        {
			    loginService.userLogout(callback1);
	        }
	        
	        
	        function callback1(data)
			{
			    alert("退出系统");
			    window.location.reload();
			}
			
			function gerenzhongxin()
			{
			    var targetWinUrl="<%=path %>/auser/index.jsp";
				var targetWinName="newWin";
				var features="width="+screen.width+" ,height="+screen.height+" ,toolbar=yes, top=0, left=0, menubar=yes, scrollbars=yes, resizable=yes,location=no, status=yes";
				var new_win=window.open(targetWinUrl,targetWinName,features);
			}
			
			function userReg()
			{
			    var url="<%=path %>/qiantai/user/userReg.jsp";
			    window.location.href=url;
			}
	</script>
  </head>
  
  <body>
       <s:if test="#session.userType !=1">
			<form action="<%=path %>/userLogin.action" name="userLogin" method="post">
			      <table cellspacing="0" cellpadding="0" width="98%" align="center" border="0">
			          <tr>
			            <td align="center" colspan="2" height="15"></td>
			          </tr>
			          <tr>
			            <td align="right" width="20%" height="30" style="font-size: 14px;">账号：</td>
			            <td align="left" width="80%"><input style="width: 150px;" name="userName" type="text" /></td>
			          </tr>
			          <tr>
			            <td align="right" height="30" style="font-size: 14px;">密码：</td>
			            <td align="left"><input type="password" style="width: 150px;" name="userPw"/></td>
			          </tr>
			          <tr>
			            <td align="right" height="30" style="font-size: 14px;">&nbsp;</td>
			            <td align="left">
			               <input type="button" value="登  录" onclick="login()" style="border:#ccc 1px solid; padding-top:3px;width: 60px;" />
			               <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
			               <input type="button" value="注 册" onclick="userReg()" style="border:#ccc 1px solid; padding-top:3px;width: 60px;" />
			            </td>
			          </tr>
			      </table>
		    </form>
		    </s:if>
		    
		    <s:if test="#session.userType==1">
		    <div style="margin: 10px;">
			    <span>欢迎您：<s:property value="#session.user.userRealname"/> </span>&nbsp;&nbsp;
			    <a href="#" onclick="userLogout()">安全退出</a> &nbsp;&nbsp;
			    <!-- <A href="#" onclick="gerenzhongxin()">个人中心</A> -->
			    <A href="<%=path %>/qiantai/user/userinfo.jsp" >个人信息</A>
			</div>
			</s:if>
  </body>
</html>
