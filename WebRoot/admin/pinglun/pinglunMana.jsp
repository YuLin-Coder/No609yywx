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
           function pinglunDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/pinglunDel.action?id="+id;
               }
           }
       </script>
	</head>

	<body style="margin: 11px;">
			<table width="70%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA">
				<tr align="center" bgcolor="#FAFAF1" style="height: 30px;">
					<td width="10%">序号</td>
					<td width="20%">评论内容</td>
					<td width="10%">时间</td>
					<td width="10%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.pinglunList}" var="pinglun" varStatus="ss">
				<tr align='center' bgcolor="#FFFFFF" style="height: 35px;" >
					<td bgcolor="#FFFFFF" align="center">
						${ss.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${pinglun.neirong}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${pinglun.shijian}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="pinglunDel(${pinglun.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
	</body>
</html>
