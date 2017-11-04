<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<input type="hidden" id="contextPath" value="<%=request.getContextPath()%>"/>
<div id="top">
	<div id="topIntro">
		<span id="logo"></span>
		<span id="user_operator">
			<a href="<%=request.getContextPath() %>/index/indexnew.html"  target="_blank">网站首页</a>
			| <a href="javascript:exitSystem()">退出系统</a>
		</span>
	</div>
	<div id="remind">
		<span id="showDate">欢迎[${adminUser.username }]光临${baseInfo.name}后台管理程序
		</span>
	</div>
</div>
