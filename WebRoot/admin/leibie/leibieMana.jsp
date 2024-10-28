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
           function leibieDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/leibieDel.action?id="+id;
               }
           }
           
           function leibiePre(id)
           {
                   window.location.href="<%=path %>/leibiePre.action?id="+id;
           }
           
           function leibieAdd()
           {
                 var url="<%=path %>/admin/leibie/leibieAdd.jsp";
				 window.location.href=url;
           }
       </script>
	</head>

	<body style="margin: 13px;">
			<table width="70%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA">
				<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
					<td width="10%">序号</td>
					<td width="40%">类别名称</td>
					<td width="15%">操作</td>
		        </tr>	
				<s:iterator value="#request.leibieList" id="leibie" status="sta">
				<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#sta.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#leibie.mingcheng"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="leibieDel(<s:property value="#leibie.id"/>)"/>
					</td>
				</tr>
				</s:iterator>
			</table>
			<input type="button" value="添加类别" style="width: 120px;margin-top: 9px;" onclick="leibieAdd()" />
	</body>
</html>
