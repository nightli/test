<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		
	    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" charset="utf-8">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">				
		<title>动漫论坛</title>
		<link rel="stylesheet" type="text/css" href="css/common.css"/>
		<link rel="stylesheet" type="text/css" href="css/index.css"/>
		<script src="js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/index.js" type="text/javascript" charset="utf-8"></script>
	</head>
		<body>
		 <s:action name="message_listPage"></s:action>
		<div class="top">
			<ul>
				<li><a href="message_listPage.action?currentPage=1">首页</a></li>
				<li class="logon_1"><a href="logincopy.jsp">登录</a></li>
				<li><a href="login.jsp">注册</a></li>
				 <li><a href="postthread.jsp">发贴</a></li>
				<li>当前用户：${user.username}</li>
			</ul>
		</div>
		<div id="body">
			<div id="detail">
			<div class="loop">
				<ul>
					<li><img src="img/lun1.jpeg"/>
					<p>新番</p></li>
					<li><img src="img/lun2.jpeg"/>
					<p>第二季</p></li>
					<li><img src="img/lun3.jpeg"/>
					<p>大结局</p></li>
					<li><img src="img/lun4.jpeg"/>
					<p>剧场版</p></li>
					<li><img src="img/lun5.jpeg"/>
					<p>第二季</p></li>
				</ul>
				<ul>
				    <li></li>
				    <li></li>
				    <li></li>
				    <li></li>
				    <li></li>            
				</ul>
			</div>
			</div>
			 <div class="introduce_">
	   
		<c:forEach items="${pageBean.list}" var="message">
     	<div class="introduce">
     	<h3>${message.title}</h3>
     	
				
					<img src="${message.url }"/>
					<span>${message.content}</span>
				
				</div>
			 
     </c:forEach>
  </div>
     <a href="${pageContext.request.contextPath}/message_listPage?currentPage=1">首页</a>
     <c:if test="${pageBean.currentPage != 1}">
     <a href="${pageContext.request.contextPath}/message_listPage?currentPage=${pageBean.currentPage - 1}">上一页</a>
     </c:if>
     <c:if test="${pageBean.currentPage != pageBean.pageTotal}">
     <a href="${pageContext.request.contextPath}/message_listPage?currentPage=${pageBean.currentPage + 1}">下一页</a>
     </c:if>
     <a href="${pageContext.request.contextPath}/message_listPage?currentPage=${pageBean.pageTotal}">尾页</a>		
 </div>
		
		</div>
		
	</body>
</html>
</html>
