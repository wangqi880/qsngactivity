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
	
	<table width="90%" cellspacing="0" cellPadding="0" id="listTable">
		<thead>
		<tr>
			<td>评分id</td>
			<td>用户名</td>
			<td>姓名</td>
			<td>电话</td>
			<td>作品名</td>
			<td>作品描述</td>
			<td>图片</td>
			<td>得分</td>
			<td>修改</td>
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${everyUserScorelist }" var="userpicScore">
			<tr>
				<td width="8%"> ${userpicScore.userScoreId}</td>

				<td width="8%">
					${userpicScore.username}
				</td>
				<td width="8%">
						${userpicScore.name}
				</td>
				<td width="8%">
						${userpicScore.msisdn}
				</td>
				<td width="8%">
					${userpicScore.imageName}
				</td>
				<td width="20%">${userpicScore.intro}</td>
				<td width="48%">
					<a href="<%=request.getContextPath() %>/resources/upload/${userpicScore.newName}" target="_blank"><img src="<%=request.getContextPath() %>/resources/upload/${userpicScore.newName}" alt="${userpicScore.imageName}" style="width: 200px;height: 160px"></a>
				</td>

				<td><input type="text" value="${userpicScore.score}" name="name_${userpicScore.userScoreId}" id="id_${userpicScore.userScoreId}" size="1"></td>
				<td><input type="button" value="打分" id="${userpicScore.userScoreId}" onclick="doScore(this)" ></td>

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

    //打分
    function doScore(that) {
        var myId = "id_"+that.id;
        var score = $("#"+myId).val();
        $.ajax({
            type: "get",
            url: "<%=request.getContextPath() %>/chooseUser/updateUserScore/"+that.id+"/"+score,
            contentType: false,
            processData: false,
        }).success(function(data) {
            if (data.code=='000000') {

            } else {
                alert("打分失败:"+data.info);
            }

        }).error(function(data) {
            alert("打分失败:"+data.info);
        });


    }



    $(document).ready(function(){

    })
</script>
