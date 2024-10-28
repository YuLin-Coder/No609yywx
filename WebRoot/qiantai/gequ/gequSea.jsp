<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        function check()
        {
              if( document.form1.mingcheng.value=="")
              {
	               alert("请输入歌曲名称");
	               return false;
              }
              document.form1.submit();
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
	                <form action="<%=path %>/gequRes.action" name="form1" method="post">
	                             <table  border="0" cellpadding="8" cellspacing="1">
								    <tr align='center' bgcolor="#FFFFFF" height="44">
									    <td width="70" bgcolor="#FFFFFF" align="right">
									                 歌曲名称：
									    </td>
									    <td bgcolor="#FFFFFF" align="left">
									         <input type="text" name="mingcheng" style="width: 288px;margin-left: 5px;"/>
									    </td>
									</tr>
									<tr align='center' bgcolor="#FFFFFF" style="height: 35px;">

									    <td width="75" bgcolor="#FFFFFF" align="right">
									        &nbsp;
									    </td>
									    <td bgcolor="#FFFFFF" align="left">
									       <input type="button" value="提交" onclick="check()" style="width: 88px;"/>&nbsp; 
									       <input type="reset" value="重置" style="width: 88px;"/>&nbsp;
									    </td>
									</tr>
								 </table>   
                                  </form>
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
