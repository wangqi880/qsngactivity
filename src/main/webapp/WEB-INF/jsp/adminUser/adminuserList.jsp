<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/admin/main.css"/>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/core/jquery.cms.core.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/admin/main.js"></script>

<style type="text/css">
.div1{ float:left; height:30px; width:100px; border-right:8px}
.div2{ border-left:0 none; float:left; height:30px; width:60px;}
</style>

</head>
<body>
<div id="content">
	<h3 class="admin_link_bar">
		<jsp:include page="inc.jsp"></jsp:include>
	</h3>
	
	<table width="96%" cellspacing="0" cellPadding="0" id="listTable">
		<thead>
		<tr>
			<td>用户名</td>
			<td>姓名</td>
			<td>电话</td>
			<td>角色</td>
			<td>操作</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${adminUserList }" var="adminUser">
			<tr>

				<td>
					${adminUser.username}
				</td>
				<td>
					${adminUser.name}
				</td>
				<td>
					${adminUser.msisdn}
				</td>
				<td>
					<c:if test="${adminUser.role eq 1}">
						<span>管理员</span>
					</c:if>
					<c:if test="${adminUser.role eq 2}">
						<span>评委</span>
					</c:if>
				</td>
				<td>
					<a href="delete/${adminUser.id }" title="${adminUser.username }" class="list_op delete">删除</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
		<tfoot>
		<tr>
			<td colspan="8" style="text-align:right;margin-right:10px;">
			<%--<jsp:include page="/jsp/pager.jsp">
				<jsp:param value="${datas.total }" name="totalRecord"/>
				<jsp:param value="lists" name="url"/>
			</jsp:include>--%>
			</td>
		</tr>
		</tfoot>
	</table>
</div>
</body>
</html>
