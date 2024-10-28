<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 

<%String path = request.getContextPath();%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<style rel="stylesheet" type="text/css">
	
    </style>

    <script type="text/javascript">
        function toupiaoAdd(geshouId)
		{
		       <c:if test="${sessionScope.userType!=1}">
                   alert("请先登录");
               </c:if>
            
	           <c:if test="${sessionScope.userType==1}">
	               var url="<%=path %>/toupiaoAdd.action?geshouId="+geshouId;
	               window.location.href=url;
	           </c:if>
		}
	</script>
</head>
  
<body>
<jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>




<div class="wap">
    <div class="main1">
        <!-- 左侧  -->
    	<div class="left">
        	<div class="a03">
            	<!-- <div class="info">
                	<div class="title">111</div>
                    <div class="more"><a href="#"></a></div>
                </div> -->
                <div class="content" style="margin: 5px;">
	                 <TABLE class=main border=0 cellSpacing=0 cellPadding=0 height=115 style="margin-top: 10px;margin-left: 10px;">
					              <TR>
					                  <td align="left" valign="top">
					                      <fieldset style="width:160px; height: 250px;border: 2px;"><legend class="fieldtitle">照片</legend>
												<table class="bill" width="99%">
												    <tr>
												        <td><IMG border=0 align=absMiddle src="<%=path %>/${requestScope.geshou.fujian}" width=155 height=196></td>
												    </tr>
												</table>
										  </fieldset>
					                  </td>
					                  <td></td>
					                  <td align="left" valign="top">
					                      <fieldset style="width:540px; margin-left:5px;height: 100%;border: 2px;"><legend class="fieldtitle">个人信息</legend>
												<table class="bill" width="99%" cellspacing="12">
												    <tr>
												        <td>姓名：${requestScope.geshou.xingming}</td>
												    </tr>
												    <tr>
												        <td>性别：${requestScope.geshou.xingbie}</td>
												    </tr>
												    <tr>
												        <td>出生日期：${requestScope.geshou.chusheng}</td>
												    </tr>
												    <tr>
												        <td>简介：<c:out value="${requestScope.geshou.jianjie}" escapeXml="false"></c:out></td>
												    </tr>
												    <tr>
												        <td><input type="button" value="投上一票" style="width: 100px;height: 30px;" onclick="toupiaoAdd(${requestScope.geshou.id})"/></td>
												    </tr>
												    <tr>
												        <td><a href="<%=path %>/gequByGeshou.action?geshouId=${requestScope.geshou.id}">歌曲信息</a></td>
												    </tr>
												</table>
										  </fieldset>
					                  </td>
					              </TR>
				              </TABLE>
                </div>
            </div>
        </div>
        <!-- 左侧  -->
        
        
        <!-- 右侧  -->
        <div class="right">
            <jsp:include flush="true" page="/qiantai/right.jsp"></jsp:include>
        </div>
        <!-- 右侧  -->
    </div>
    
    
    <!-- <div class="main2">
    	<div class="info">
        	<div class="title">11</div>
            <div class="more"><a href="#"></a></div>
        </div>
        <div class="content">
        	ssds
        </div>
    </div> -->
</div>




<jsp:include flush="true" page="/qiantai/down.jsp"></jsp:include>

</body>
</html>
