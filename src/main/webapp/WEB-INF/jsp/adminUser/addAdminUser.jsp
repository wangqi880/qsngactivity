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
	<form method="post" action="<%= request.getContextPath()%>/adminUser/addAdminUser" id="addForm">
	<table width="800" cellspacing="0" cellPadding="0">
		<thead><tr><td colspan="2">添加用户</td></tr></thead>
		<tr>
			<td class="rightTd" width="200px">用户名:</td>
			<td class="leftTd"><input type="text" name="username"></td>
		</tr>
		<tr>
			<td class="rightTd" width="200px">密码:</td>
			<td class="leftTd"><input type="password" name="password"></td>
		</tr>

		<tr>
			<td class="rightTd" width="200px">名字:</td>
			<td class="leftTd"><input type="text" name="name"></td>
		</tr>
		<tr>
			<td class="rightTd" width="200px">电话:</td>
			<td class="leftTd"><input type="text" name="msisdn"></td>
		</tr>
		<tr>
			<td class="rightTd" width="200px">角色:</td>
			<td class="leftTd">
				<select name="role">
				<option value="1" >管理员 </option>
				<option value="2" >评委</option>
			</select>
			</td>
		</tr>

		<tr>
			<td colspan="2" class="centerTd"><input type="submit" value="提交"/><input type="reset"/></td>
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
