<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%String path = request.getContextPath();%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" href="<%=path %>/css/login.css" />
		
	<style rel="stylesheet" type="text/css">
	
    </style>

    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
       
	<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.loginForm.userName.value=="")
			 {
			 	alert("请输入用户名");
				document.loginForm.userName.focus();
				return false;
			 }
			 if(document.loginForm.userPw.value=="")
			 {
			 	alert("请输入密码");
				document.loginForm.userPw.focus();
				return false;
			 }
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.loginForm.userName.value,document.loginForm.userPw.value,0,callback);
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
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
    </script>
</head>
  
<body>
		<div class="header-logo">
			<a href="##">
				<!-- logo--1111 -->
			</a>
		</div>
		<div class="login-box">		
			<div class="login-title">基于Java的音乐网站</div>
			<div class="login-form">
				<form name="loginForm" method="post" action="<%=path %>/admin/index.jsp">
					<div class="form-item user">
						<div class="form-ctrl">
							<input type="text" name="userName" value="" style="vertical-align:top;height: 30px;">
						</div>
						<div class="form-tips">							
							&nbsp;							
						</div>
					</div>
					
					<div class="form-item pass">
                        <div class="form-ctrl">
                            <input type="password" name="userPw" value="" style="vertical-align:top;height: 30px;">
                        </div>
                        <div class="form-tips">                        	
                        	&nbsp;		                     	
                        </div>
                    </div>
                    
                    <div class="form-item box" style="display: none">
                        <div class="rememb">
                            <select style="width: 200px;" name="userType">
                                <option value="0">0</option>
                            </select>
                        </div>
                        <div class="box-fr">
                            &nbsp;
                        </div>
                    </div>
                    
                    <div class="form-item form-button">
                        <button type="button" class="btn btn-green block btn-login" onclick="check1()">登录 </button>
                        <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
                    </div>
                                                                            
				</form>
			</div>
		</div>
		
	</body>
</html>
