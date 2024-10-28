<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 

<%String path = request.getContextPath();%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style rel="stylesheet" type="text/css">
	
    </style>

    <script type="text/javascript">
    
    </script>
</head>
  
<body>
            <div class="b01">
            	<div class="info">
                	<div class="title">用户登陆</div>
                    <div class="more"><a href="#"></a></div>
                </div>
                <div class="content" >
                	<jsp:include flush="true" page="/qiantai/user/userLogin.jsp"></jsp:include>
   			    </div>
            </div>
            <div class="news3">
                <div class="info">
                	<div class="title">音乐类别</div>
                    <div class="more"><a href="#"></a></div>
                </div>
                <div class="content">
                     <div style="margin: 2px;">
	                     <c:forEach items="${sessionScope.leibieList}" var="leibie" varStatus="ss">
				              <a style="font-size: 13px;" href="<%=path %>/gequByLeibie.action?leibieId=${leibie.id }"> ${leibie.mingcheng }</a>&nbsp;&nbsp;&nbsp;
			             </c:forEach>
		             </div>
                </div>
            </div> 
</body>
</html>
