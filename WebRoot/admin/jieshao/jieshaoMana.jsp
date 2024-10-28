<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

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

	<body style="margin: 13px;">
			<form action="<%=path %>/jieshaoEdit.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="1%" bgcolor="#FFFFFF" align="right">
						    </td>
						    <td width="99%" bgcolor="#FFFFFF" align="left">
						        <FCK:editor instanceName="neirong"  basePath="/fckeditor" width="900" height="250" value="${requestScope.jieshao.neirong}" toolbarSet="Default">
	                            </FCK:editor>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="1%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="99%" bgcolor="#FFFFFF" align="left">
						       <input type="submit" value="提交"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
