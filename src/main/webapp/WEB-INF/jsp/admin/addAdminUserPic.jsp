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
		<jsp:include page="adminUserPicInc.jsp"></jsp:include>
	</h3>
	<form method="post" action="<%= request.getContextPath()%>/admin/addAdminUserPic" id="addForm">
	<table width="800" cellspacing="0" cellPadding="0">
		<thead><tr><td colspan="2">添加首页图片</td></tr></thead>
		<tr>
			<td class="rightTd" width="200px">作品名称:</td>
			<td class="leftTd"><input type="text" name="imageName"></td>
		</tr>
		<tr>
			<td class="rightTd" width="200px">作品介绍:</td>
			<td class="leftTd">
				<textarea name="intro"  cols="45" rows="5" class="textarea"></textarea></td>

			</td>
		</tr>
		<tr>
			<td class="rightTd" width="200px">作品上传</td>
			<td align="leftTd">
				<form id="frm_identityA" action="" enctype="multipart/form-data">
                                                <span>
                                                    <input id="fileupload" name="attachs" accept="image/jpg"  type="file" value="" />
                                                </span>
					<input id="btnImportOK" type="button" value="上传" />
				</form>
			</td>
		</tr>
		<tr>
			<ul>
				<li>
					<a id="image1_a" target="_blank"> <img  name="imageName" id="image1" width="80%" height="80%"></a>
				</li>
				<input type="hidden"   name="attachmentId" id="attachmentId1">
			</ul>
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
<script type="text/javascript">
    $(document).ready(function(){

        <!--上传第一张照片-->
        $("#btnImportOK").click(function () {
            /*  var formData = new FormData($("#frm_identityA")[0]);*/
            var paths = document.getElementById("fileupload").files;

            if(paths.length==0)
            {
                alert("请选择文件");
                return;
            }
            var formData = new FormData();
            for (var i = 0; i < paths.length; i++) {
                var file = paths[i];
                /*  alert(file.type);*/
                //用正则表达式判断文件的类型是否是图片，这里大家可以自由发挥
                if (!new RegExp("image/jpeg").test(file.type)) {
                    alert("请注意，上传的文件一定要是图片文件(jpg)");
                    return;
                }
            }
            //我们可以预先定义一个FormData对象
            var formData=new FormData();
            for(var i=0;i<paths.length;i++)
            {
                //将每个文件设置一个string类型的名字，放入到formData中，这里类似于setAttribute("",Object)
                formData.append(paths[i].name,paths[i]);
            }
            $.ajax({
                type: "POST",
                data: formData,
                url: "<%= request.getContextPath()%>/admin/pic/upload",
                contentType: false,
                processData: false,
            }).success(function(data) {
                if (data.code=='000000') {
                    $("#image1").attr('src',"<%= request.getContextPath()%>"+data.data[0].filePath);
                    $("#image1_a").attr('href',"<%= request.getContextPath()%>"+data.data[0].filePath);
                    $("#attachmentId1").val(data.data[0].id);
                } else {
                    alert("上传失败"+data.info);
                    /*console.log(data.info);*/
                }

            }).error(function(data) {
                alert("上传失败"+data.info);
                /*console.log(data);*/
            });
        });

    });
</script>