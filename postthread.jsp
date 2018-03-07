<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'postthread.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/heli.css">
	
    <script src="js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
  </head>
  
  <body>
        <div>当然用户：${user.username}</div>
        <c:if test="${user.username == null}">
             <a href="logincopy.jsp">请先登录</a>
        </c:if>
       <c:if test="${user.username != null}">
    	<div id="body">
    		<p id="body_id">当前用户：</p>
    		<hr />
    		<form action="message_postThread" method="post"  enctype="multipart/form-data" onsubmit="return checka()">
    		<span>标&nbsp;&nbsp;&nbsp;题:<input name="title" type="text"></span><br>
    		<span>内&nbsp;&nbsp;&nbsp;容:<textarea name="content" cols="40" rows="4"></textarea></span><br>
    		<span>图&nbsp;&nbsp;&nbsp;片：<input name="upload" type="file"></span><br>
    		<div>验证码：<input type="text" name="veridacode" id="veridacode"></div> 
		    <div id="checkVericode"></div>
		    <div><img alt=""  src="veri" onclick="this.src='veri?' + new Date().getTime()"></div>
		    <script type="text/javascript">
		    				var c="验证码错误";
		                    $("#veridacode").blur(function(){
							  if($("#veridacode").val() != ''){
									$.post("user_checkVericode.action",{"veridacode":$("#veridacode").val()},function(data){
										if(data == "验证码正确"){
											$("#checkVericode").html("");
											c = "验证码正确";
									    }
									    else {
									    	$("#checkVericode").html("验证码错误");
									    }
										$("#checkVericode").css("color", "red");
									})
								}
							});		
			</script>
    		<input name="user.id" type="hidden" value="${user.id}">
    		<input type="submit" value="发表">
    		<script type="text/javascript">
		      function checka(){
		         if(c == "验证码正确")
		      	      return true;
		      	 else
		      	   return false;
		      }
		    </script>
    	</form>
    	</div>
    </c:if>
  </body>
</html>
