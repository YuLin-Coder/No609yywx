<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <base target="_self"/>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
        
        <script language="javascript">
            function c()
            {
                if(document.formAdd.huifu.value=="")
                {
                    alert("请输入回复内容");
                    return false;
                }
                
                document.formAdd.submit();
            }
        </script>
	</head>

	<body style="margin: 13px;">
			<form action="<%=path %>/liuyanHuifu.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						
						<tr align="center" bgcolor="#FAFAF1" style="height: 54px;">
						    <td width="103" bgcolor="#FFFFFF" align="right">
						          回复内容：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <input type="text" name="huifu" size="80"/>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="103" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						       <input type="hidden" name="id" value="<%=request.getParameter("id") %>"/>
						       <input type="button" value="提交" onclick="c()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
