<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
        </script>
	</head>

	<body style="margin: 12px;">
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				
				<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
					<td width="3%">序号</td>
					<td width="10%">账号</td>
					<td width="10%">密码</td>
					<td width="10%">姓名</td>
					
					<td width="10%">性别</td>
					<td width="10%">住址</td>
					<td width="10%">电话</td>
					<td width="10%">邮箱</td>
		        </tr>	
				<s:iterator value="#request.userList" id="user" status="ss">
				<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.userPw"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userRealname"/>
					</td>
					
					
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.userSex"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userAddress"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userTel"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userEmail"/>
					</td>
				</tr>
				</s:iterator>
			</table>
	</body>
</html>
