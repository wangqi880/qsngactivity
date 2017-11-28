<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/admin/main.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/validate/main.css"/>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/core/jquery.cms.validate.js"></script>
	<!--弹出层-->
	<script src="<%= request.getContextPath()%>/resources/layer/layer.js"></script>

	<!--layui-->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/layui/css/layui.css?t=1510786361436"  media="all">
	<script src="<%=request.getContextPath() %>/resources/layui/layui.js?t=1510786361436" charset="utf-8"></script>
</head>
<body>
<div id="content">
	<h3 class="admin_link_bar">
		<jsp:include page="inc.jsp"></jsp:include>
	</h3>
	<form id="myaction" class="layui-form layui-form-pane" action="<%= request.getContextPath()%>/adminIndex/updateContent" method="post">
		<input type="hidden" name="type" value="${type}">
		<c:forEach items="${data}" var="item">
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">${item.subtitle}</label>
				<input type="hidden" name="id" value="${item.id}">
				<input type="hidden" name="position" value="${item.position}">
				<div class="layui-input-block">
					<textarea placeholder="请输入内容" class="layui-textarea" name="info">${item.info}</textarea>
				</div>
			</div>
		</c:forEach>

		<div class="layui-form-item">
			<button class="layui-btn" lay-submit="" lay-filter="demo2" id="submit" >提交</button>
		</div>
	</form>
</div>
</body>
</html>
