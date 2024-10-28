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
           function gequDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/gequDel.action?id="+id;
               }
           }
           
           function gequAdd()
           {
                 var url="<%=path %>/admin/gequ/gequAdd.jsp";
				 window.location.href=url;
           }
           
           
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }
		   
		   function down1(fujianPath,fujianYuashiMing)
           {
               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
           }
           
           function pinglunMana(gequId)
           {
                   window.location.href="<%=path %>/pinglunMana.action?gequId="+gequId;
           }		
       </script>
	</head>

	<body style="margin: 12px;">
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
				    <td width="4%">序号</td>
				    <td width="10%">歌手</td>
				    <td width="10%">类别</td>
					<td width="12%">名称</td>
					
					<!-- <td width="10%">歌曲介绍</td> -->
					<td width="18%">附件</td>
					<td width="10%">发布时间</td>
					<td width="6%">点击率</td>
					
					<td width="10%">操作</td>
		        </tr>	
				<c:forEach items="${requestScope.gequList}" var="gequ" varStatus="ss">
				<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
					<td bgcolor="#FFFFFF" align="center">
						${ss.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					     ${gequ.geshou.xingming}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${gequ.leibie.mingcheng}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					     ${gequ.mingcheng}
					</td>
					
					
					<%-- <td bgcolor="#FFFFFF" align="center">
					     ${gequ.jieshao}
					</td> --%>
					<td bgcolor="#FFFFFF" align="center">
					     <c:if test="${gequ.fujian !=''}">
						      ${gequ.fujian}&nbsp;&nbsp;<a href="#" onclick="down1('${gequ.fujian}','${gequ.fujian}')" style="color: red">下载</a>
					     </c:if>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					     ${gequ.shijian}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					     ${gequ.dianji}
					</td>
					
					
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="删除" onclick="gequDel(${gequ.id})"/>
						<input type="button" value="评论管理" onclick="pinglunMana(${gequ.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 11px;">
			  <tr>
			    <td>
			        <input type="button" value="添加音乐" style="width: 120px;" onclick="gequAdd()" />
			    </td>
			  </tr>
		    </table>
		    <div id="tip" style="position:absolute;display:none;border:0px;width:80px; height:80px;">
				<TABLE id="tipTable" border="0" bgcolor="#ffffee">
					<TR align="center">
						<TD><img id="photo" src="" height="80" width="80"></TD>
					</TR>
				</TABLE>
			</div>
	</body>
</html>