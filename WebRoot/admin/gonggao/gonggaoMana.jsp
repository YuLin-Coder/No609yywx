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
		
        <script language="javascript">
           function gonggaoAdd()
           {
              var url="<%=path %>/admin/gonggao/gonggaoAdd.jsp";
              window.location.href=url;
           }
           function gonggaoDel(gonggaoId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/gonggaoDel.action?gonggaoId="+gonggaoId;
               }
           }

           function gonggaoDetailHou(gonggaoId)
           {
                 var url="<%=path %>/gonggaoDetailHou.action?gonggaoId="+gonggaoId;
                 var n="";
                 var w="800px";
                 var h="400px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
           
           
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
					<td width="40%">信息标题</td>
					<td width="10%">发布时间</td>
					
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.gonggaoList" id="gonggao" status="ss">
				<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
					<td bgcolor="#FFFFFF" align="center">
						 <s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 <s:property value="#gonggao.gonggaoTitle"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#gonggao.gonggaoData"/>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
					    <input type="button" value="删除" onclick="gonggaoDel(<s:property value="#gonggao.gonggaoId"/>)"/>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 11px;">
			  <tr>
			    <td>
			      <input type="button" value="添加系统公告" style="width: 123px;" onclick="gonggaoAdd()" />
			    </td>
			  </tr>
		    </table>
		    
		    
		    <div id="tip" style="position:absolute;display:none;border:0px;width:80px; height:80px;">
			<TABLE id="tipTable" border="0" bgcolor="#ffffee">
				<TR align="center">
					<TD><img id="photo" src="" height="160" width="200"></TD>
				</TR>
			</TABLE>
	</body>
</html>
