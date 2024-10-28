<%@page import="java.text.SimpleDateFormat"%>
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
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
        
        <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        
        <script language="javascript">
            function init()
	        {
	           loginService.leibieSelect(callBack);
	        }
	        
	        function callBack(data)
	        {
	            DWRUtil.addOptions("leibieId",data,"id","mingcheng");
	        }
			
			function up()
		    {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:100});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","文件上传");
	            pop.build();
	            pop.show();
		    }
			
		    
		    function check()
		    {
		        if(document.formAdd.geshouId.value=="")
		        {
		            alert("请选择歌手");
		            return false;
		        }
		        if(document.formAdd.mingcheng.value=="")
		        {
		            alert("请填写音乐名称");
		            return false;
		        }
		        
		        if(document.formAdd.fujian.value=="")
		        {
		            alert("请上传音乐");
		            return false;
		        }
		        document.formAdd.submit();
		    }
		    
		    
		    function geshouSelect()
	        {
	             var strUrl = "<%=path %>/geshouSelect.action";
                  var pop=new Popup({ contentType:1,isReloadOnClose:false,width:700,height:200});
	             pop.setContent("contentUrl",strUrl);
	             pop.setContent("title","");
	             pop.build();
	             pop.show();
	        }
        </script>
	</head>

	<body onload="init()" style="margin: 12px;">
			<form action="<%=path %>/gequAdd.action" name="formAdd" method="post" enctype="multipart/form-data">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="90" bgcolor="#FFFFFF" align="right">
						         歌手：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <input type="text" name="xxx" id="xxx" style="width: 180px;" readonly="readonly"/>
						        <input type="hidden" name="geshouId" id="geshouId" size="60"/>
						        <input type="button" value="选择" onclick="geshouSelect()"/>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="90" bgcolor="#FFFFFF" align="right">
						         类别：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <select name="leibieId" id="leibieId" style="width: 280px;">
								</select>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="90" bgcolor="#FFFFFF" align="right">
						         音乐名称：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <input type="text" name="mingcheng" style="width: 280px;"/>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="90" bgcolor="#FFFFFF" align="right">
						        简单介绍：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
                                <textarea rows="3" cols="88" name="jieshao"></textarea>
						    </td>
						</tr>
						
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="90" bgcolor="#FFFFFF" align="right">
						       附件：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <input type="text" name="fujian" id="fujian" style="width: 280px;" readonly="readonly"/>
						        <input type="button" value="上传" onclick="up()"/>
						        <input type="hidden" name="fujianYuanshiming" id="fujianYuanshiming"/>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="90" bgcolor="#FFFFFF" align="right">
						      时间：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <input type="text" name="shijian"  style="width: 280px;" value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date())%>" />
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="90" bgcolor="#FFFFFF" align="right">&nbsp;
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						       <input type="button" value="提交" onclick="check()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
