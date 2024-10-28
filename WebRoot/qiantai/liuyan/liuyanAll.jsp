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
	
	<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
	
	<style rel="stylesheet" type="text/css">
	
    </style>

    <script type="text/javascript">
	    function liuyanAdd()
        {
            <s:if test="#session.userType==null || #session.userType != 1">
                  alert("请先登录");
                  return false;
            </s:if>
            
                 var strUrl = "<%=path %>/qiantai/liuyan/liuyanAdd.jsp";
                 var pop=new Popup({ contentType:1,isReloadOnClose:true,width:700,height:200});
	             pop.setContent("contentUrl",strUrl);
	             pop.setContent("title","");
	             pop.build();
	             pop.show();
        }
        
        function liuyanDetail(id)
        {
             var strUrl = "<%=path %>/liuyanDetail.action?id="+id;
             var ret = window.showModalDialog(strUrl,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
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
                <div class="content" style="margin: 10px;">
	                <c:forEach items="${requestScope.liuyanList}" var="liuyan" varStatus="sta">
							<table border="0" width="100%" cellpadding="5" cellspacing="0">
							   <tr><td align="left" style="width: 80%">&nbsp;<img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> ${liuyan.neirong }</td>
							      <td align="left" style="width: 20%;">${liuyan.liuyanshi }</td>
							   </tr>
							   <tr><td align="left" style="width: 80%">回复内容：${liuyan.huifu }</td><td align="right" style="width: 20%"></td></tr>
							   <tr><td align="left" style="width: 80%">回复时间：${liuyan.huifushi }</td><td align="right" style="width: 20%"></td></tr>
							   <tr><td align="left" style="width: 100%" colspan="2"><div style="border-bottom:#999 1px dashed;border-top:1px;">&nbsp;</div></td></tr>
							</table>	                      
			         </c:forEach>
			         <center><a href="#" onclick="liuyanAdd()">我要留言</a></center> 
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
