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
	<!--弹出层-->
	<script src="<%= request.getContextPath()%>/resources/layer/layer.js"></script>
<script type="text/javascript">
    function form_submit(){
        var oldPassword =$("input[name='oldPassword']").val();
        var newPassword1 =$("input[name='newPassword1']").val();
        var newPassword2 =$("input[name='newPassword2']").val();
        $.ajax({
            type: "get",
            url: "<%=request.getContextPath() %>/adminUser/updatePassword?oldPassword="+oldPassword+"&newPassword1="+newPassword1+"&newPassword2="+newPassword2,
            contentType: false,
            processData: false,
        }).success(function(data) {
            if (data.code=='000000') {
                layer.msg(data.info);

            } else {
                layer.msg("修改失败："+data.info);
            }

        }).error(function(data) {
            layer.msg("修改失败："+data.info);
        });
	}
</script>
</head>
<body>
<div id="content">
	<table width="800" cellspacing="0" cellPadding="0">
		<thead><tr><td colspan="2">更新密码</td></tr></thead>

		<tr>
			<td class="rightTd" width="200px">老密码</td>
			<td class="leftTd"><input type="password" name="oldPassword"></td>
		</tr>

		<tr>
			<td class="rightTd" width="200px">新密码</td>
			<td class="leftTd"><input type="password" name="newPassword1"></td>
		</tr>
		<tr>
			<td class="rightTd" width="200px">重复新密码</td>
			<td class="leftTd"><input type="password" name="newPassword2"></td>
		</tr>
		<tr>
			<td colspan="2" class="centerTd"><input type="submit" value="提交" onclick="form_submit()"/></td>
		</tr>
		<c:if test="${not empty message}">
			<tr>
				<td colspan="2" class="centerTd" style="color:red;">${message}</td>
			</tr>
		</c:if>
	</table>
</div>
</body>
</html>
