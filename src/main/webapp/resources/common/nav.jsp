<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用青少年宫活动管理后台</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/admin/main.css"/>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/core/jquery.cms.core.js"></script>
<script type="text/javascript">
$(function(){
	$("#left").myaccordion();
});
</script>
</head>
<body>
<div id="left">
<c:if test="${isAdmin }">
<ul class="navMenu navSelected">
	<h3 class="navTitle">
		<span class="navTilteTxt">管理员管理</span>
	</h3>
	<li class="navChild">
		<a href="<%=request.getContextPath() %>/admin/startActivity" target="content">活动开始配置</a>
	</li>
	<li class="navChild">
		<a href="<%=request.getContextPath() %>/admin/sysConifList" target="content">配置活动参数</a>
	</li>
	<li class="navChild">
		<a href="<%=request.getContextPath() %>/admin/activityStatus" target="content">活动状态</a>
	</li>
	<li class="navChild">
		<a href="<%=request.getContextPath() %>/admin/chooseAndScoreInfo" target="content">选择和打分详情</a>
	</li>
</ul>
</c:if>
<ul class="navMenu navSelected">
	<h3 class="navTitle">
		<span class="navTilteTxt">作品管理</span>
	</h3>
	<li class="navChild">
		<a href="<%=request.getContextPath() %>/chooseUser/listUserPicture/1" target="content">第一次选择</a>
	</li>
	<li class="navChild">
		<a href="<%=request.getContextPath() %>/chooseUser/listUserPicture/2" target="content">第二次选择</a>
	</li>
	<li class="navChild">
		<a href="<%=request.getContextPath() %>/chooseUser/listUserPicture/3" target="content">第三次打分</a>
	</li>
	<li class="navChild">
		<a href="<%=request.getContextPath() %>/chooseUser/seeUserPicScore" target="content">查看得分</a>
	</li>

</ul>
	<ul class="navMenu navSelected">
		<h3 class="navTitle">
			<span class="navTilteTxt">用户账户管理</span>
		</h3>
		<li class="navChild">
			<a href="<%=request.getContextPath() %>/adminUser/adminUserList" target="content">查看后台用户</a>
		</li>
		<li class="navChild">
			<a href="<%=request.getContextPath() %>/adminUser/userList" target="content">查看普通用户</a>
		</li>
	</ul>

	<ul class="navMenu navSelected">
		<h3 class="navTitle">
			<span class="navTilteTxt">点赞查看</span>
		</h3>
		<li class="navChild">
			<a href="<%=request.getContextPath() %>/chooseUser/showPrizeNum" target="content">查看点赞数</a>
		</li>
	</ul>

	<ul class="navMenu navSelected">
		<h3 class="navTitle">
			<span class="navTilteTxt">首页作品控住</span>
		</h3>
		<li class="navChild">
			<a href="<%=request.getContextPath() %>/admin/adminUserPicList" target="content">查看首页图片</a>
		</li>
	</ul>

<%--
<c:if test="${isAdmin }">
<ul class="navMenu navSelected">
	<h3 class="navTitle">
		<span class="navTilteTxt">作品标签管理</span>
	</h3>
	
	

	<li class="navChild">
		<a href="<%=request.getContextPath() %>/admin/comicScense/chooseIndex" target="content">作品画像管理</a>
	</li>
	<li class="navChild">
		<a href="<%=request.getContextPath() %>/admin/comicScense/lists" target="content">场景管理</a>
	</li>
</ul>
</c:if>--%>
		</div>
</body>
</html>
