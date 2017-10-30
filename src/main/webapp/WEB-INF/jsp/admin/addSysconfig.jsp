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
<script type="text/javascript">
$(function(){
	$("#addForm").cmsvalidate();
});
</script>
</head>
<body>
<div id="content">
	<h3 class="admin_link_bar">
		<jsp:include page="inc.jsp"></jsp:include>
	</h3>
	<form method="post" action="<%= request.getContextPath()%>/admin/addSysconfig" id="addForm">
	<table width="800" cellspacing="0" cellPadding="0">
		<thead><tr><td colspan="2">添加配置项</td></tr></thead>
		<tr>
			<td class="rightTd" width="200px">配置key:</td>
			<td class="leftTd"><input type="text" name="configKey"></td>
		</tr>
		<tr>
			<td class="rightTd" width="200px">配置value:</td>
			<td class="leftTd"><input type="text" name="configValue"></td>
		</tr>

		<tr>
			<td class="rightTd" width="200px">配置描述:</td>
			<td class="leftTd"><input type="text" name="desc"></td>
		</tr>

		<tr>
			<td colspan="2" class="centerTd"><input type="submit" value="添加key"/><input type="reset"/></td>
		</tr>
		<c:if test="${not empty message}">
			<tr>
				<td colspan="2" class="centerTd" style="color:red;">${message}</td>
			</tr>
		</c:if>

	</table>
	</form>
</div>
</body>
</html>
