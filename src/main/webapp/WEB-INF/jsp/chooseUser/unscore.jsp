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
	<script src="<%=request.getContextPath() %>/js/pager/pager.js"></script>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pager/pager.css"/>
<style type="text/css">
.div1{ float:left; height:30px; width:100px; border-right:8px}
.div2{ border-left:0 none; float:left; height:30px; width:60px;}
</style>

</head>
<body>
<div id="content">
	<h3 class="admin_link_bar">
		<jsp:include page="scroeInc.jsp"></jsp:include>
	</h3>
	
	<table width="90%" cellspacing="0" cellPadding="0" id="listTable">
		<thead>
		<tr>

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
		<c:forEach items="${page.datas }" var="userpicScore">
			<tr>
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
				<td width="40%">
					<a href="<%=request.getContextPath() %>/resources/upload/${userpicScore.newName}" target="_blank"><img src="<%=request.getContextPath() %>/resources/upload/thumbnail/${userpicScore.newName}" alt="${userpicScore.imageName}" style="width: 200px;height: 160px"></a>
				</td>
				<input type="hidden" value="${userpicScore.score}" id="id_oldvalue_${userpicScore.userScoreId}">
				<td align="center"><input type="text" <c:if test="${userpicScore.score ne 0}">value="${userpicScore.score}"</c:if>  name="name_${userpicScore.userScoreId}" id="id_${userpicScore.userScoreId}" size="1"></td>
				<td align="center"><input type="button" value="打分" id="${userpicScore.userScoreId}" onclick="doScore(this)" ></td>

			</tr>
		</c:forEach>
		</tbody>
		<tfoot>

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
                location.replace("<%= request.getContextPath()%>/chooseUser/unscore?pager.offset="+n);
            }
        });
	</script>
</div>
</body>
</html>
<script type="text/javascript">

    //打分
    function doScore(that) {
        var myId = "id_"+that.id;
        var oldScore = $("#id_oldvalue_"+that.id).val();
        var score = $("#"+myId).val();
        if(oldScore==score || score==0){
            alert("分数无变化|分数不能为0");
            return;
		}
        $.ajax({
            type: "get",
            url: "<%=request.getContextPath() %>/chooseUser/updateUserScore/"+that.id+"/"+score,
            contentType: false,
            processData: false,
        }).success(function(data) {
            if (data.code=='000000') {
				alert("打分成功");
            } else {
                $("#"+myId).val(oldScore);
                alert("打分失败:"+data.info);

            }

        }).error(function(data) {
            $("#"+myId).val(oldScore);
            alert("打分失败:"+data.info);

        });


    }



    $(document).ready(function(){

    })
</script>
