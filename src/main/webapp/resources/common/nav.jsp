<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用智能工程后台管理程序</title>
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
</ul>
<ul class="navMenu navSelected">
	<h3 class="navTitle">
		<span class="navTilteTxt">编辑管理</span>
	</h3>
	<li class="navChild">
		<a href="<%=request.getContextPath() %>/admin/user/makeScorelist" target="content">自己的打分情况</a>
	</li>
	<c:if test="${isAdmin }">
	<li class="navChild">
		<a href="<%=request.getContextPath() %>/admin/log/makeScoreLog" target="content">责编打分情况</a>
	</li>
	</c:if>
</ul>

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
</c:if>
	
	<c:if test="${isAdmin }">
	<ul class="navMenu navSelected">
		<h3 class="navTitle">
			<span class="navTilteTxt">画像元数据管理</span>
		</h3>
		<li class="navChild">
			<a href="<%=request.getContextPath() %>/admin/comicCategory/lists" target="content">标签元数据管理</a>
		</li>
		
		<li class="navChild">
			<a href="<%=request.getContextPath() %>/admin/comicCategory/comicDimensionList" target="content">维度元数据管理</a>
		</li>
		
		<li class="navChild">
			<a href="<%=request.getContextPath() %>/admin/comicIndex/lists" target="content">指数元数据管理</a>
		</li>
		<%-- <li class="navChild">
			<a href="<%=request.getContextPath() %>/admin/weightMetaData/weightManage" target="content">权重元数据管理</a>
		</li> --%>
	</ul>
</c:if>
		</div>
</body>
</html>
