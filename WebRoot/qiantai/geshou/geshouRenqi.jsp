<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
            	<div class="info">
                	<div class="title">歌手信息</div>
                    <div class="more"></div>
                </div>
	            <div class="content1" style="margin-left: 10px;">
	            	<TABLE border=0 >
									              <TR>
									                  <c:forEach items="${requestScope.geshouList}" var="geshou" varStatus="sta">
									                    <c:if test="${sta.index%4==0}">
									                       </tr><tr>
									                    </c:if>
										                <TD>
										                  <TABLE>
										                    <TR>
										                      <TD style="border:1px solid  #CCCCCC;">
										                           <center>
										                              <A href="<%=path %>/geshouDetailQian.action?id=${geshou.id}">
										                              <IMG border=0 src="<%=path %>/${geshou.fujian}" width=147 height=165 style="margin: 10px;"></A>
										                           </center>
										                           <center style="margin-top: -13px;">
										                              <A href="<%=path %>/geshouDetailQian.action?id=${geshou.id}"><c:out value="${fn:substring(geshou.xingming, 0, 13)}" escapeXml="false"></c:out> &nbsp;&nbsp;票数：${geshou.piaoshu}</A>
										                           <center>
										                      </TD>
										                    </TR>
										                  </TABLE>
										                </TD>
									                </c:forEach>
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
