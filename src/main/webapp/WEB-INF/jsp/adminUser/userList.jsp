<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/admin/main.css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pager/pager.css"/>

	<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/core/jquery.cms.core.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/admin/main.js"></script>
	<script src="<%=request.getContextPath() %>/js/pager/pager.js"></script>

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
	<div><h3>总用户数:${page.total}</h3></div>
	<table width="90%" cellspacing="0" cellPadding="0" id="listTable">
		<thead>
		<tr>
			<td>用户名</td>
			<td>姓名</td>
			<td>身份证</td>
			<td>电话</td>

			<td>性别</td>
			<td>年龄</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.datas }" var="item">
			<tr>
				<td> ${item.username}</td>

				<td>
						${item.name}
				</td>
				<td>
						${item.cardId}
				</td>
				<td>${item.msisdn}</td>
				<td>
					<c:if test="${item.sex eq 1}">
						男
					</c:if>
					<c:if test="${item.sex eq 2}">
						女
					</c:if>

				</td>
				<td>${item.age}</td>
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
	<!--分页-->
	<div>
		<ul class="pagination" id="page2">
		</ul>
		<div class="pageJump">
			<span>跳转到</span>
			<input type="text"/>
			<span>页</span>
			<button type="button" class="button">确定</button>
		</div>
	</div>
	<!--分页结束-->
	<script>
        var total = ${page.total};
        var pageSize=${page.size};
        var totalPage = Math.ceil(total/pageSize);
        Page({
            num:totalPage,					//页码数
            startnum:${page.offset},				//指定页码
            elem:$('#page2'),		//指定的元素
            callback:function(n){	//回调函数
                //这里修改分页之后重新调用首页(带分页参数)
                location.replace("<%= request.getContextPath()%>/adminUser/userList?pager.offset="+n);

            }
        });
	</script>
	<div class="right w_280">
</div>
</body>
</html>
<script type="text/javascript">
    $(document).ready(function(){

    })
</script>
