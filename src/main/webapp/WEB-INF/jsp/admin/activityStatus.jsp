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
			<td>id</td>
			<td>期数</td>
			<td>描述</td>
			<td>状态</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${activityStatus }" var="activity">
			<tr>

				<td>
						${activity.id}
				</td>
				<td> ${activity.activityPeriod}</td>
				<td> ${activity.activityDesc}</td>
					<td>
                        <c:if test="${activity.status eq 0 }">
                            <span class="emp"><a href="javascript:if(confirm('修改会清除第${activity.activityPeriod}期选择图片或者评分数据，请慎重?'))location='updateActivityStatus/${activity.id }'" class="list_op">停止</a></span>
                        </c:if>
                        <c:if test="${activity.status eq 1 }">
                            <span><a href="updateActivityStatus/${activity.id }" class="list_op">开启</a></span>
                        </c:if>
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
<script type="text/javascript">
    $(document).ready(function(){


	})
</script>
