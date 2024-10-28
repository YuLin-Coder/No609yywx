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
			         <div style="margin: 7px;margin-right: 15px;line-height: 250%"><c:out value="${requestScope.jieshao.neirong}" escapeXml="false"></c:out></div>
			         <br/><br/>
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
