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
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script language="javascript">
           function over(picPath)
	       {
			  if (picPath=="")picPath="/images/default.jpg";
			  x = event.clientX;
			  y = event.clientY;      
			  document.all.tip.style.display = "block";
			  document.all.tip.style.top = y;
			  document.all.tip.style.left = x+10;
			  document.all.photo.src = ".."+picPath; 
		   }
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }		
       </script>
	</head>

	<body style="margin: 12px;">
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				
				<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
				    <td width="5%">序号</td>
					<td width="10%">姓名</td>
					<td width="10%">性别</td>
					<td width="10%">照片</td>
					
					<td width="10%">票数</td>
		        </tr>	
				<s:iterator value="#request.geshouList" id="geshou" status="ss">
				<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#geshou.xingming"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#geshou.xingbie"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   <div onmouseover = "over('<%=path %>/<s:property value="#geshou.fujian"/>')" onmouseout = "out()" style="cursor:hand;">
							照片
					   </div>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
					    <span style="color: red"><s:property value="#geshou.piaoshu"/></span>
					</td>
				</tr>
				</s:iterator>
			</table>
		    <div id="tip" style="position:absolute;display:none;border:0px;width:80px; height:80px;">
			<TABLE id="tipTable" border="0" bgcolor="#ffffee">
				<TR align="center">
					<TD><img id="photo" src="" height="160" width="130"></TD>
				</TR>
			</TABLE>
		</div>
	</body>
</html>
