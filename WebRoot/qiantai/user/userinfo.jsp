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
	   td{font-size: 15px;}
    </style>

    <script type="text/javascript">
        function check()
        {
              if( document.form1.userName.value=="")
              {
	               alert("请输入账号");
	               return false;
              }
              if( document.form1.userPw.value=="")
              {
	               alert("请输入密码");
	               return false;
              }
              if( document.form1.userRealname.value=="")
              {
	               alert("请输入姓名");
	               return false;
              }
              
                /* if(document.form1.userTel.value !="")
				{
				    var sMobile = document.form1.userTel.value; 
					    if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(sMobile)))
					    { 
					        alert(""); 
					        return false; 
					    }
				} */
				
				/* if(document.form1.userEmail.value !="")
				{
				      if (!isEmail(document.form1.userEmail.value))
				      {
					  alert("");
					  return false;
				      }
				    
				} */
				
              document.form1.submit();
        }
        
        function isEmail(str)
		{
		    var reg = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
		    return reg.test(str);
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
	                <form action="<%=path %>/userEditMe.action" name="form1" method="post">
	                             <table  border="0" cellpadding="8" cellspacing="1" align="left">
								    <tr align='center' bgcolor="#FFFFFF" style="height: 36px;">
									    <td width="58" bgcolor="#FFFFFF" align="right">
									                  账号：
									    </td>
									    <td bgcolor="#FFFFFF" align="left">
									         <input type="text" name="userName" style="width: 228px;margin-left: 5px;" value="${sessionScope.user.userName }" readonly="readonly"/>（只读）
									    </td>
									</tr>
									<tr align='center' bgcolor="#FFFFFF" style="height: 36px;">
									    <td width="58" bgcolor="#FFFFFF" align="right">
									        密码：
									    </td>
									    <td bgcolor="#FFFFFF" align="left">
									         <input type="text" name="userPw" style="width: 228px;margin-left: 5px;" 
									          value="${sessionScope.user.userPw }"/>
									    </td>
									</tr>
									<tr align='center' bgcolor="#FFFFFF" style="height: 36px;">
									    <td width="58" bgcolor="#FFFFFF" align="right">
									                       姓名：
									    </td>
									    <td bgcolor="#FFFFFF" align="left">
									         <input type="text" name="userRealname" style="width: 228px;margin-left: 5px;" 
									         value="${sessionScope.user.userRealname }"/>
									    </td>
									</tr>
									<tr align='center' bgcolor="#FFFFFF" style="height: 36px;">
									    <td width="58" bgcolor="#FFFFFF" align="right">
									        性别：
									    </td>
									    <td bgcolor="#FFFFFF" align="left">
									         <input type="text" name="xxxxxxxx" style="width:128px;margin-left: 5px;" 
									         value="${sessionScope.user.userSex }"/>
									         <input type="radio" name="userSex" value="男" checked="checked" style="border: 0px;"/>男
									         &nbsp;&nbsp;
									         <input type="radio" name="userSex" value="女" style="border: 0px;"/>女
									         
									    </td>
									</tr>
									<tr align='center' bgcolor="#FFFFFF" style="height: 36px;">
									    <td width="58" bgcolor="#FFFFFF" align="right">
									        住址：
									    </td>
									    <td bgcolor="#FFFFFF" align="left">
									         <input type="text" name="userAddress" style="width: 418px;margin-left: 5px;" 
									         value="${sessionScope.user.userAddress }"/>
									    </td>
									</tr>
									<tr align='center' bgcolor="#FFFFFF" style="height: 36px;">
									    <td width="58" bgcolor="#FFFFFF" align="right">
									        电话：
									    </td>
									    <td bgcolor="#FFFFFF" align="left">
									         <input type="text" name="userTel" style="width: 228px;margin-left: 5px;" 
									         value="${sessionScope.user.userTel }"/>
									    </td>
									</tr>
									<tr align='center' bgcolor="#FFFFFF" style="height: 36px;">
									    <td width="58" bgcolor="#FFFFFF" align="right">
									        邮箱：
									    </td>
									    <td bgcolor="#FFFFFF" align="left">
									         <input type="text" name="userEmail" style="width: 228px;margin-left: 5px;"
									         value="${sessionScope.user.userEmail }"/>
									    </td>
									</tr>
									<tr align='center' bgcolor="#FFFFFF" style="height: 35px;">

									    <td width="58" bgcolor="#FFFFFF" align="right">
									        &nbsp;
									    </td>
									    <td bgcolor="#FFFFFF" align="left">
									       <input type="hidden" name="userId" value="${sessionScope.user.userId }"/>
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
