<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用青少年宫活动管理后台</title>
</head>
<frameset cols="*"  border="0" frameborder="0" frameSpacing="0" scrolling="false">
	<frameset rows="110px,*" frameborder="0" noresize frameSpacing="0">
		<frame name="top" src="<%=request.getContextPath() %>/resources/common/top.jsp" frameborder="0" frameSpacing="0"/>
		<frameset cols="14%,*" frameborder="0" frameSpacing="0">
			<frame name="nav" src="<%=request.getContextPath() %>/resources/common/nav.jsp" frameborder="0"/>
			<frame name="content" src="<%=request.getContextPath() %>/resources/common/01.html" frameborder="0"/>
		</frameset>
	</frameset>
</frameset>
</html>
