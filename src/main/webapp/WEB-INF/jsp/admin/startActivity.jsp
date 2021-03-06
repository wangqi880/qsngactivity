<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	.chooseUserClass{
		margin-top: 5px;
	}
</style>

</head>
<body>
<div id="content">
	<h3 class="admin_link_bar">
		活动配置

	<%--<jsp:include page="inc.jsp"></jsp:include>--%>
	</h3>
	
	<table width="96%" cellspacing="0" cellPadding="0" id="listTable">
		<thead>
		<tr>
			<td>描述</td>
			<td>更多操作</td>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td>
				<div>开始第一次选图片(已选作品数：${firstChoosedNum})</div>
				<div class="chooseUserClass">
					<c:forEach items="${allChooseUserList }" var="chooseUser">
						<input type="checkbox" id="${chooseUser.id }_1"  value="${chooseUser.id }_1" <c:if test="${fn:contains(firtstChooseUserIds,chooseUser.id)}">checked="checked"</c:if>>${chooseUser.username }

					</c:forEach>

				</div>
			</td>
			<td><input id="firstActivityButton" type="button" value="开始" class="list_op delete"></td>
		</tr>
		<tr>
			<td>
				<div>开始第二次选图片(已选作品数：${secondChoosedNum})</div>
				<div>
					<c:forEach items="${allChooseUserList }" var="chooseUser">
						<input type="checkbox" id="${chooseUser.id }_2" value="${chooseUser.id }_2" <c:if test="${fn:contains(secondChooseUserIds,chooseUser.id)}">checked="checked"</c:if>>${chooseUser.username }
					</c:forEach>
				</div>
			</td>
			<td><input id="secondStartButton" type="button" value="开始" class="list_op delete"></td>
		</tr>

		<tr>
			<td>
				<div>开始第三次已选图片打分</div>
				<div>
					<c:forEach items="${allChooseUserList }" var="chooseUser">
						<input type="checkbox" id="${chooseUser.id }_3"  value="${chooseUser.id }_3" <c:if test="${fn:contains(thirdChooseUserIds,chooseUser.id)}">checked="checked"</c:if>>${chooseUser.username }
					</c:forEach>
				</div>
			</td>
			<td><input id="thirdStartButton" type="button" value="开始" class="list_op delete"></td>
		</tr>

		<tr>
			<td>统计图片打分</td>
			<td><input id="fourStartButton" type="button" value="开始" class="list_op delete"></td>
		</tr>
		<tr>
			<td>简单统计:总上传作品数:${allNum}</td>
			<td><a href="startActivity" class="list_op update">更新</a></td>
		</tr>
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

        //勾选选择用户
        $('input:checkbox').click(function () {
            this.blur();
            this.focus();
            var value =this.value;
            var strs= new Array();
            strs=value.split("_");
            var userId = strs[0];
            var period = strs[1];
            var isCheck=$("#"+value).attr('checked');
            if(isCheck){
                //选中
                $.ajax({
                    type: "get",
                    url: "<%=request.getContextPath() %>/admin/chooseChooseUser/"+period+"/"+userId+"/1",
                    contentType: false,
                    processData: false,
                }).success(function(data) {
                    if (data.code=='000000') {

                    } else {
                        alert("选择失败:"+data.info);
                        $("#"+value).attr('checked',false);
                    }

                }).error(function(data) {
                    alert("选择失败:"+data.info);
                    $("#"+value).attr('checked',false);
                });
			}else{
				//取消选中
                $.ajax({
                    type: "get",
                    url: "<%=request.getContextPath() %>/admin/chooseChooseUser/"+period+"/"+userId+"/0",
                    contentType: false,
                    processData: false,
                }).success(function(data) {
                    if (data.code=='000000') {

                    } else {
                        alert("选择失败:"+data.info);
                        $("#"+value).attr('checked',false);
                    }

                }).error(function(data) {
                    alert("选择失败:"+data.info);
                    $("#"+value).attr('checked',false);
                });
			}

        });


        <!--开始第一次活动-->
        $("#firstActivityButton").click(function(){
            if(window.confirm('确定开始第一次照片选择？')){
                $.ajax({
                    type: "get",
                    url: "<%=request.getContextPath() %>/admin/firstStart",
                    contentType: false,
                    processData: false,
                }).success(function(data) {
                    if (data.code=='000000') {
                        alert("开启成功:"+data.info);
                    } else {
                        alert("开启失败:"+data.info);
                    }

                }).error(function(data) {
                    alert("开启失败:"+data.info);
                });
                return true;
            }else{
                return false;
            }
        })

		//第二个选择开始
        $("#secondStartButton").click(function(){
            if(window.confirm('确定开始第二次照片选择？')){
                $.ajax({
                    type: "get",
                    url: "<%=request.getContextPath() %>/admin/secondStart",
                    contentType: false,
                    processData: false,
                }).success(function(data) {
                    if (data.code=='000000') {
                        alert("开启成功:"+data.info);
                    } else {
                        alert("开启失败:"+data.info);
                    }

                }).error(function(data) {
                    alert("开启失败:"+data.info);
                });
                return true;
            }else{
                return false;
            }
        })

		//第三次打分开始
        $("#thirdStartButton").click(function(){
            if(window.confirm('确定开始第三次照片打分？')){
                $.ajax({
                    type: "get",
                    url: "<%=request.getContextPath() %>/admin/thirdStart",
                    contentType: false,
                    processData: false,
                }).success(function(data) {
                    if (data.code=='000000') {
                        alert("开启成功:"+data.info);
                    } else {
                        alert("开启失败:"+data.info);
                    }

                }).error(function(data) {
                    alert("开启失败:"+data.info);
                });
                return true;
            }else{
                return false;
            }
        })

		//统计得分
        $("#fourStartButton").click(function(){
            if(window.confirm('确定统计得分？')){
                $.ajax({
                    type: "get",
                    url: "<%=request.getContextPath() %>/admin/statisticalScore",
                    contentType: false,
                    processData: false,
                }).success(function(data) {
                    if (data.code=='000000') {
                        alert("统计完成:"+data.info);
                    } else {
                        alert("统计失败:"+data.info);
                    }

                }).error(function(data) {
                    alert("统计失败:"+data.info);
                });
                return true;
            }else{
                return false;
            }
        })
	})
</script>
