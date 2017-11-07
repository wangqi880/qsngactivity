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

<!--图文-->
	<!-- CSS -->
<%--<link href='<%=request.getContextPath() %>/picTextShow/css/styles.css' rel='stylesheet'>
	<!-- JS -->
<script src='<%=request.getContextPath() %>/picTextShow/js/intense.js'></script>--%>

</head>
<body>
<div id="content">
	<h3 class="admin_link_bar">
		<jsp:include page="inc.jsp"></jsp:include>
	</h3>
	
	<table width="90%" cellspacing="0" cellPadding="0" id="listTable">
		<thead>
		<tr>
			<td>用户名</td>
			<td>姓名</td>
			<td>电话</td>
			<td>作品名</td>
			<td>图片描述</td>
			<td>图片</td>
			<td>是否选中</td>
		</tr>
		</thead>
		<tbody>

			<c:forEach items="${chooseUserPicDtoList }" var="userpic">
				<tr>

					<td width="8%">
						<span>${userpic.username}</span>
					</td>
					<td width="8%">
							${userpic.name}
					</td>
					<td width="8%">
							${userpic.msisdn}
					</td>
					<td width="8%">
							${userpic.imageName}
					</td>
					<td width="20%">
							${userpic.intro}
					</td>
					<td  width="46%">
						<%--<section class="demos">
							<div style="width: 250px;height: 200px; background-image:url(<%=request.getContextPath() %>/resources/upload/${userpic.newName})" class="demo-image first" data-image="<%=request.getContextPath() %>/resources/upload/${userpic.newName}" data-title="${userpic.imageName}" data-caption="${userpic.intro}"></div>
						</section>--%>
						<div><a href="<%=request.getContextPath() %>/resources/upload/${userpic.newName}" target="_blank"> <img src="<%=request.getContextPath() %>/resources/upload/${userpic.newName}"  style="display:block;width:40%;"  alt=""></a></div>
					</td>
					<td  width="20%">
						<!--没有选中-->
						<c:if test="${userpic.chooseIs eq 0 }">
							<input id="${userpic.id}" name="id" type="checkbox" value="${userpic.id}" />
						</c:if>
						<!--选中-->
						<c:if test="${userpic.chooseIs eq 1 }">
							<input id="${userpic.id}" name="id" type="checkbox" value="${userpic.id}"  checked="checked"  />
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
        //选择
        $('input:checkbox').click(function () {
            this.blur();
            this.focus();
            var id = this.value;
            var isCheck=$('#'+id).attr('checked');
         	if(isCheck){
                $.ajax({
                    type: "get",
                    url: "<%=request.getContextPath() %>/chooseUser/checkOrUncheck/"+id+"/1",
                    contentType: false,
                    processData: false,
                }).success(function(data) {
                    if (data.code=='000000') {

                    } else {
                        alert("选择失败:"+data.info);
                        $('#'+id).attr('checked',false);
                    }

                }).error(function(data) {
                    alert("选择失败:"+data.info);
                    $('#'+id).attr('checked',false);
                });

			}else{
                $.ajax({
                    type: "get",
                    url: "<%=request.getContextPath() %>/chooseUser/checkOrUncheck/"+id+"/0",
                    contentType: false,
                    processData: false,
                }).success(function(data) {
                    if (data.code=='000000') {

                    } else {
                        alert("取消失败:"+data.info);
                        $('#'+id).attr('checked',true);
                    }

                }).error(function(data) {
                    alert("取消失败:"+data.info);
                    $('#'+id).attr('checked',true);
                });
			}
        });
    })
</script>
