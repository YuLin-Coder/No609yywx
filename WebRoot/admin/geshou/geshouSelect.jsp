<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
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
            function a(id,xingming)
            {
                 window.parent.document.getElementById("geshouId").value=id;
	             window.parent.document.getElementById("xxx").value=xingming;
	             var a = parent.document.getElementById("dialogBoxClose");
                 a.click();
            }
        </script>
	</head>

	<body style="margin: 0px;">
		 <table width="100%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA">
				
				<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
				    <td width="5%">序号</td>
					<td width="10%">姓名</td>
					<td width="10%">性别</td>
					<td width="10%">出生日期</td>
		        </tr>	
				<c:forEach items="${requestScope.geshouList}" var="geshou" varStatus="ss">
				<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
					<td bgcolor="#FFFFFF" align="center">
						${ss.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="a('${geshou.id}','${geshou.xingming}')" style="color: green;font-family: 微软雅黑;font-size: 15px;">${geshou.xingming}</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${geshou.xingbie}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${geshou.chusheng}
					</td>
				</tr>
				</c:forEach>
			</table>
	</body>
</html>
