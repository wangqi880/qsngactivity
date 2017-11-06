<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta author="wq">
	<title>登录 - 少年宫</title>
	<link rel="stylesheet" type="text/css" href="<%= path%>/loginResource/style/register-login.css">
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
		<h1 class="main-title hide">少年宫</h1>
		<h2 class="sub-title">生活热爱分享 -少年宫</h2>
	</div>

	<div class="cont-main clearfix">
		<div class="index-tab">
			<div class="index-slide-nav">
				<a href="login.html" class="active">登录</a>
				<a href="register.html">注册</a>
				<a href="<%=request.getContextPath() %>/index/indexnew.html" target="_self" >网站首页</a>
				<div class="slide-bar"></div>				
			</div>
		</div>

		<div class="login form">
			<form action="<%= path%>/login/login" method="post" name="form_action" id="form_1">

			<div class="group">
				<div class="group-ipt email">
					<input type="text" name="username" id="email" class="ipt" placeholder="账户名，电话号码，身份证号" required>
				</div>
				<div class="group-ipt password">
					<input type="password" name="password" id="password" class="ipt" placeholder="输入您的登录密码" required>
				</div>
				<%--<div class="group-ipt verify">
					<input type="text" name="verify" id="verify" class="ipt" placeholder="输入验证码" required>
					<img src="http://zrong.me/home/index/imgcode?id=" class="imgcode">
				</div>--%>
				<div class="group-ipt password">
					<span style="color: red">${message}</span>
				</div>
			</div>
			</form>
		</div>

		<div class="button">
			<button type="submit" class="login-btn register-btn" id="button">登录</button>
		</div>

		<%--<div class="remember clearfix">
			<label class="remember-me"><span class="icon"><span class="zt"></span></span><input type="checkbox" name="remember-me" id="remember-me" class="remember-mecheck" checked>记住我</label>
			<label class="forgot-password">
				<a href="#">忘记密码？</a>
			</label>
		</div>--%>
	</div>
</div>

<%--<div class="footer">
	<p>千寻 - Thousands Find</p>
	<p>Designed By ZengRong & <a href="zrong.me">zrong.me</a> 2016</p>
</div>--%>

<script src='<%= path%>/loginResource/js/particles.js' type="text/javascript"></script>
<script src='<%= path%>/loginResource/js/background.js' type="text/javascript"></script>
<script src='<%= path%>/loginResource/js/jquery.min.js' type="text/javascript"></script>
<script src='<%= path%>/loginResource/js/layer/layer.js' type="text/javascript"></script>
<script src='<%= path%>/loginResource/js/index.js' type="text/javascript"></script>
<script>
    $(function () {

        $("#button").click(function () {
			$("#form_1").submit();
        })
    })
</script>
<script>
	$('.imgcode').hover(function(){
		layer.tips("看不清？点击更换", '.verify', {
        		time: 6000,
        		tips: [2, "#3c3c3c"]
    		})
	},function(){
		layer.closeAll('tips');
	}).click(function(){
		$(this).attr('src','http://zrong.me/home/index/imgcode?id=' + Math.random());
	});
	$("#remember-me").click(function(){
		var n = document.getElementById("remember-me").checked;
		if(n){
			$(".zt").show();
		}else{
			$(".zt").hide();
		}
	});
</script>
</body>
</html>
