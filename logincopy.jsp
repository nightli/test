<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!-- <link rel="stylesheet" type="text/css" href="css/common.css"/> -->
	<link rel="stylesheet" type="text/css" href="css/heli.css"/>
	<script src="js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/login.js" type="text/javascript" charset="utf-8"></script>

  </head>
  
  <body>
    <div id="body">
    	<p id="body_id">欢迎登录</p>
		<hr />
    	<form action="user_login.action" method="post" onsubmit="return checka()">
			<span>用&nbsp;户&nbsp;名&nbsp;:<input type="text" id="username" class="user" name="username" /></span>
			<div id="dec"></div>
			<p style="font-size: 13px ;">{用户名不低于四位，由字母，数字，下划线，减号组成}</p>
			<div id="usernamecheck"></div>
			     <script type="text/javascript">
								$("#username").blur(function(){
								   if($("#username").val() != ''){
										$.post("user_usernameCheck.action",{"username":$("#username").val()},function(data){
											if(data == "该用户已存在"){
												$("#dec").html("*");
												$("#dec").css("color","green");
											}
											else{
											  	$("#dec").html("该用户未注册");
												$("#dec").css("color", "red");
											}
										})
									}	
								});
					</script>
		
			<p class="user_" style="font-size:12px;">用户名格式错误</p>

		    <span>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:
		    	<input id="pwd" type="password" class="passw" name="password"/>
		    </span>
		    <div id="checkPass" stytle="color:red">${checkPwd}</div></br>
		    <span>验证码：<input type="text" name="veridacode" id="veridacode"></span>
		    <br> 
		    <div id="checkVericode"></div>
		    <div><img alt=""  src="veri" onclick="this.src='veri?' + new Date().getTime()"></div>
		    <script type="text/javascript">
		                    $("#veridacode").blur(function(){
							  if($("#veridacode").val() != ''){
									$.post("user_checkVericode.action",{"veridacode":$("#veridacode").val()},function(data){
	                                    $("#checkVericode").html(data);
										$("#checkVericode").css("color", "red");
									})
								}
							});		
			</script>
		    <span><input type="submit" value="登录" class="login" id="sub"/></span>
		    <script type="text/javascript">
		      function checka(){
                  if($("#username").val() == ''){
                     $("#dec").html("请输入用户名");
                     return false;
                  }
                  if($("#pwd").val() == ''){
                     $("#checkPass").html("请输入密码");
                     return false;
                  }
                  if( $("#veridacode").val() == ''){
                     $("#checkVericode").html("请输入验证码");
                     return false;
                  }
                  if($("#dec").html() != "*" || $("#checkVericode").html() != '验证码正确'){
                  		return false;
                  }
                  $("#checkPass").html("");
                  return true;
		      }
		    </script>
		    <p class="exit"><a href="index.jsp">返回首页</a></p>
		</form>
    </div>
		
  </body>
</html>
