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
	<style>
		.top_line{
			border-top: 1px solid #e8e8e8;
		}
		.forgetPassword{
			font-family: 'Microsoft Yahei';
			color: red;
			font-size:13px;
		}
	</style>
</head>
<body>
<div id="box"></div>
<div class="cent-box">
	<div class="cent-box-header">
		<h1 class="main-title hide">成都市青少年宫</h1>
		<h2 class="sub-title">迎春摄影图片展</h2>
	</div>

	<div class="cont-main clearfix">
		<div class="index-tab">
			<div class="index-slide-nav">
				<a href="login.html" class="active">登录</a>
				<a href="register.html">注册</a>
				<a href="<%=request.getContextPath() %>/index/indexnew.html" target="_self" >网站首页</a>
			</div>
		</div>

		<div class="login form">
			<form action="<%= path%>/login/login" method="post" name="form_action" id="form_1">

			<div class="group">
				<div class="group-ipt name">
					<input type="text" name="name" id="name" class="ipt" placeholder="姓名" required>
				</div>
				<div class="group-ipt msisdn">
					<input type="text" name="msisdn" id="msisdn" class="ipt" placeholder="手机号" required>
				</div>
				<div class="group-ipt cardId">
					<input type="text" name="cardId" id="cardId" class="ipt" placeholder="身份证" required>
				</div>
				<%--<div class="group-ipt verify">
					<input type="text" name="verify" id="verify" class="ipt" placeholder="输入验证码" required>
					<img src="http://zrong.me/home/index/imgcode?id=" class="imgcode">
				</div>--%>
				<div class="group-ipt password" style="display: none" id="id_password">

				</div>
				<div class="group-ipt " style="display: none" id="id_message">

				</div>
			</div>
			</form>
		</div>

		<div class="button">
			<button type="submit" class="login-btn register-btn" id="button">查询密码</button>
		</div>
	</div>
</div>


<script src='<%= path%>/loginResource/js/particles.js' type="text/javascript"></script>
<script src='<%= path%>/loginResource/js/background.js' type="text/javascript"></script>
<script src='<%= path%>/loginResource/js/jquery.min.js' type="text/javascript"></script>
<script src='<%= path%>/loginResource/js/layer/layer.js' type="text/javascript"></script>
<script src='<%= path%>/loginResource/js/index.js' type="text/javascript"></script>
<script>
    $(function () {

        $("#button").click(function () {
		var name=	$("#name").val();
		var msisdn=	$("#msisdn").val();
		var cardId=	$("#cardId").val();
            $.ajax({
                type: "get",
                url: "<%=path %>/login/getForgetPassword/"+cardId+"/"+msisdn+"/"+name,
                contentType: false,
                processData: false,
            }).success(function(data) {
                if (data.code=='000000') {
                  //查询成功
                    var password_node=  "<span style='color: red'>密码为:"+data.data+"</span>";
                    $("#id_password").empty();
                    $("#id_password").append(password_node);
					$("#id_password").show();
                    $("#id_message").hide();

                } else {
                    //查询失败
              var message_node=  "<span style='color: red'>"+data.info+"</span>"
                    $("#id_message").empty();
                    $("#id_message").append(message_node);
                    $("#id_message").show();
                }

            }).error(function(data) {
                $("#id_message").val(data.info)
                $("#id_message").show();
            });
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
