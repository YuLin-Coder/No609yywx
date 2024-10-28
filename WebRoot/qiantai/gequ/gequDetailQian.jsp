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
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;} 
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>


    <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
    
    <script language="javascript">
		var fujianPath="";
        var fujianYuashiMing="";
        var feiyong="";
		
		function down(fujianPath1,fujianYuashiMing1)
        {
               fujianPath=fujianPath1;
		       fujianYuashiMing=fujianYuashiMing1;
               
               <c:if test="${sessionScope.userType !=1}">
                    alert("请先登录");
                    return false;
               </c:if>
               <c:if test="${sessionScope.userType ==1}">
                    down1();
               </c:if>
        }  
        
		function down1()
        {
            var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
            url=encodeURI(url); 
            url=encodeURI(url); 
            window.open(url,"_self");
        }
        
        
        function pinglunAdd(gequId)
        {
                <c:if test="${sessionScope.userType !=1}">
	                alert("请先登录");
	                return false;
	            </c:if>
		            
		            var strUrl = "<%=path %>/qiantai/pinglun/pinglunAdd.jsp?gequId="+gequId;
		            var pop=new Popup({ contentType:1,isReloadOnClose:true,width:600,height:200});
	             pop.setContent("contentUrl",strUrl);
	             pop.setContent("title","");
	             pop.build();
	             pop.show();
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
	                     <div style="margin-left: 6px;margin-top: 6px;">类别：${requestScope.gequ.leibie.mingcheng }</div>
	                     <div style="margin-left: 6px;margin-top: 6px;">歌曲名称：${requestScope.gequ.mingcheng }</div>
	                     <div style="margin-left: 6px;margin-top: 6px;line-height: 200%;">介绍：${requestScope.gequ.jieshao }</div>
				         <div style="margin-left: 6px;margin-top: 6px;">歌手：${requestScope.gequ.geshou.xingming }</div>
				         <div style="margin-left: 6px;margin-top: 6px;">
			                 <embed src="<%=path %>/${requestScope.gequ.fujian }" width="500" height="340"/>
		                 </div> 
		                 <div style="margin-left: 6px;margin-top: 6px;">发布时间：${requestScope.gequ.shijian }</div>
		                 <div style="margin-left: 6px;margin-top: 6px;">点击率：${requestScope.gequ.dianji }</div>
		                 <div style="margin-left: 6px;margin-top: 6px;">
		                     <input type="button" value="下载" style="width: 123px;" onclick="down('${gequ.fujian}','${gequ.fujian}')"/>
		                 </div>
		                 
		                 <div style="margin-left: 6px;margin-top: 6px;">
		                     <fieldset style="width:600px; border:1px solid  #CCCCCC"><legend class="fieldtitle">评论信息</legend>
									<table width="100%">
										<tr>
											<td>
												<c:forEach items="${requestScope.pinglunList}" var="pinglun" varStatus="s">
													    <div class="c1-bline" style="margin-top: 15px;">
													        <div class="f-left" style="margin-left: 1px;">
														        <img src="<%=path %>/images/head-mark4.gif" align="middle" class="img-vm" border="0"/>${pinglun.neirong}
													        </div>
													        <div class="f-right" style="margin-right: 10px;">${pinglun.shijian}</div><div class="clear"></div>
														</div>
												</c:forEach>
											</td>
										</tr>
									</table>
									</fieldset>
									<p><a href="#" onclick="pinglunAdd(${requestScope.gequ.id })">我要评论</a></p>
		                 </div>
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
