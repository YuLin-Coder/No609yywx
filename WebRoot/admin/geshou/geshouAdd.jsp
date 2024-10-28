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
        
        <link rel="stylesheet" href="<%=path %>/jquery/ui.datepicker.css" type="text/css" media="screen"  charset="utf-8" />
	
	<script src="<%=path %>/jquery/jquery-1.2.6.js" type="text/javascript" charset="utf-8"></script>	
	<script src="<%=path %>/jquery/ui.datepicker.js" type="text/javascript" charset="utf-8"></script>	
	<script src="<%=path %>/jquery/ui.datepicker-zh-CN.js" type="text/javascript" charset="utf-8"></script>	
        
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        
        <script language="javascript">
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
		        if(document.formAdd.xingming.value=="")
		        {
		            alert("请填写姓名");
		            return false;
		        }
		        if(document.formAdd.fujian.value=="")
		        {
		            alert("请上传照片");
		            return false;
		        }
		        document.formAdd.submit();
		    }
		    
		    jQuery(function($){
			$('#datepicker').datepicker({
					yearRange: '1900:2099', //取值范围.
					showOn: 'both', //输入框和图片按钮都可以使用日历控件。
					buttonImage: '<%=path %>/jquery/calendar.gif', //日历控件的按钮
					buttonImageOnly: true,
					showButtonPanel: true
				});	
				
			});
        </script>
	</head>

	<body style="margin: 13px;">
			<form action="<%=path %>/geshouAdd.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="103" bgcolor="#FFFFFF" align="right">
						         姓名：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <input type="text" name="xingming" size="40"/>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="103" bgcolor="#FFFFFF" align="right">
						        性别：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <input type="radio" name="xingbie" value="男" checked="checked" style="border: 0px;"/>男
								&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="radio" name="xingbie" value="女" style="border: 0px;"/>女
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="103" bgcolor="#FFFFFF" align="right">
						       出生日期：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
                                <input type="text" id="datepicker" name="chusheng" value="1990-01-01" size="40" readonly="readonly"/>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="103" bgcolor="#FFFFFF" align="right">
						       简介：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
                                <textarea rows="4" cols="98" name="jianjie"></textarea>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="103" bgcolor="#FFFFFF" align="right">
						        照片：
						    </td>
						    <td bgcolor="#FFFFFF" align="left">
						        <input type="text" name="fujian" id="fujian" size="40" readonly="readonly"/>
						        <input type="button" value="上传" onclick="up()"/>
						        <input type="hidden" name="fujianYuanshiming" id="fujianYuanshiming"/>
						    </td>
						</tr>
						<tr align="center" bgcolor="#FAFAF1" style="height: 34px;">
						    <td width="103" bgcolor="#FFFFFF" align="right">&nbsp;
						        
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
