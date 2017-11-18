<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--弹出层-->
<script src="<%=request.getContextPath() %>/resources/layer/layer.js"></script>
<input type="hidden" id="contextPath" value="<%=request.getContextPath()%>"/>
<div id="top">
	<div id="topIntro">
		<span id="logo"></span>
		<span id="user_operator">
			<a href="<%=request.getContextPath() %>/index/indexnew.html"  target="_blank">网站首页</a>
			|<a href="javascript:window.open('<%=request.getContextPath() %>/adminUser/updatePassword.html','newwindow','height=400; width=800; toolbar= no; menubar=no; scrollbars=no; resizable=no; location=no; status=no;top='+(window.screen.height-100)/2+';left='+(window.screen.width-400)/2)"  target="_blank">修改密码</a>
			| <a href="javascript:exitSystem()">退出系统</a>
		</span>
	</div>
	<div id="remind">
		<span id="showDate">欢迎[${adminUser.username }]光临后台管理程序。你的身份是
			<c:if test="${role eq 1}">管理员</c:if>
			<c:if test="${role eq 2}">评委</c:if>
		</span>
	</div>
</div>
