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
	
	<table width="96%" cellspacing="0" cellPadding="0" id="listTable">
		<thead>
		<tr>
			<td>账号</td>
			<td>姓名</td>
			
			<td>联系方式</td>
			<td>打分情况</td>
			<td>数量</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="scoreInfo">
			<tr>
				<td>
					${scoreInfo.chooseUserName}
				</td>
				<td>${scoreInfo.name }&nbsp;</td>
				<td>
						${scoreInfo.msisdn }&nbsp;
				</td>
				<td>
					<c:if test="${scoreInfo.status =='score'}">
						已打分作品
					</c:if>
					<c:if test="${scoreInfo.status =='unscore'}">
						未打分作品
					</c:if>
				</td>
				<td>
						${scoreInfo.num }&nbsp;
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
