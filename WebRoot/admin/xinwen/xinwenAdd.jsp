<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
        
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        
        <script language="javascript">
            function c()
            {
                if(document.formAdd.biaoti.value=="")
                {
                    alert("请输入标题：");
                    return false;
                }
                
                document.formAdd.submit();
            }
            function up()
		    {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:100});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
		    }
        </script>
	</head>

	<body style="margin: 13px;">
			<form action="<%=path %>/xinwenAdd.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="103" bgcolor="#FFFFFF" align="right">
						          信息标题：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <input type="text" name="biaoti" size="90"/>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="103" bgcolor="#FFFFFF" align="right">
						        信息内容：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <FCK:editor instanceName="neirong"  basePath="/fckeditor" width="800" height="300" value="" toolbarSet="Default">
	                            </FCK:editor>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="103" bgcolor="#FFFFFF" align="right">
						         信息图片：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <input type="text" name="fujian" id="fujian" size="50" readonly="readonly"/>
						        <input type="button" value="上传" onclick="up()"/>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="103" bgcolor="#FFFFFF" align="right">
						          发布时间：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <input type="text" name="shijian" size="30" value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date())%>"/>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="10" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						       <input type="button" value="提交" onclick="c()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
