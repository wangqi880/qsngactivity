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
	<title>注册 - 青少年宫摄影活动</title>
	<meta author="wq">
	<link rel="stylesheet" type="text/css" href="<%= path%>/loginResource/style/register-login.css">
</head>
<body>
<div id="box"></div>
<div class="cent-box register-box">
	<div class="cent-box-header">
		<h1 class="main-title hide">摄影</h1>
		<h2 class="sub-title">生活热爱分享 - 少年宫</h2>
	</div>

	<div class="cont-main clearfix">
		<div class="index-tab">
			<div class="index-slide-nav">
				<a href="login.html">登录</a>
				<a href="register.html" class="active">注册</a>
				<div class="slide-bar slide-bar1"></div>				
			</div>
		</div>

		<div class="login form">
			<form action="<%= path%>/index/register" method="post" enctype="multipart/form-data" name="form_action" id="form_1">

			<div class="group">

				<div class="group-ipt user">
					<input type="email" name="username" id="username" class="ipt" placeholder="用户名" required>
				</div>
				<div class="group-ipt password">
					<input type="password" name="password" id="password" class="ipt" placeholder="设置登录密码" required>
				</div>
				<div class="group-ipt email">
					<input type="password" name="password1" id="password1" class="ipt" placeholder="重复密码" required>
				</div>
				<div class="group-ipt user">
					<input type="email" name="cardId" id="cardId" class="ipt" placeholder="身份证号码" required>
				</div>
				<div class="group-ipt user">
					<input type="email" name="name" id="name" class="ipt" placeholder="姓名" required>
				</div>

				<div class="group-ipt password">
					<input type="email" name="msisdn" id="msisdn" class="ipt" placeholder="电话" required>
				</div>
				<div class="group-ipt user">
					<input type="email" name="age" id="age" class="ipt" placeholder="年龄" required>
				</div>
				<div class="group-ipt password">
					<select name="sex" id="sex" class="ipt">

						<option value="1" >男 </option>
						<option value="2" >女</option>

					</select></td>
				</div>
			</div>
			</form>
		</div>

		<div class="button">
			<button type="submit" class="login-btn register-btn"id="button">注册</button>
		</div>
	</div>
</div>

<%--<div class="footer">
	<p>成都青少年宫</p>
</div>--%>

<script src='<%= path%>/loginResource/js/particles.js' type="text/javascript"></script>
<script src='<%= path%>/loginResource/js/background.js' type="text/javascript"></script>
<script src='<%= path%>/loginResource/js/jquery.min.js' type="text/javascript"></script>
<script src='<%= path%>/loginResource/js/layer/layer.js' type="text/javascript"></script>
<script src='<%= path%>/loginResource/js/index.js' type="text/javascript"></script>
<script>
    $(function () {

        $("#button").click(function () {
            var username =$("input[name='username']").val();
            var password =$("input[name='password']").val();
            var password1 = $("input[name='password1']").val();
            var cardId = $("input[name='cardId']").val();
            var name = $("input[name='name']").val();
            var msisdn = $("input[name='msisdn']").val();
            var age =$("input[name='age']").val();
            var sex=$("select[name='sex']").val();

            if(username==null||username==""){
                alert("账户名不能为空");
                return ;
            }

            if(password==null||password==""){
                alert("密码不能为空");
                return ;
            }

            if(password1==null||password1==""){
                alert("密码不能为空");
                return ;
            }
            if(password1!=password){
                alert("密码输入不匹配");
                return ;
			}

            if(cardId==null||cardId==""){
                alert("身份证号码为空");
                return ;
            }
            var cardId_pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
            if(!cardId_pattern.test(cardId)){
                alert("身份证格式不对");
                return ;
            }

            if(name==null||name==""){
                alert("姓名不能为空");
                return ;
            }

            if(msisdn==null||msisdn==""){
                alert("手机号不能为空");
                return ;
            }
            var msisdn_pattern = /^1[34578]\d{9}$/;
            if(!msisdn_pattern.test(msisdn)){
                alert("手机号格式不对");
                return ;
            }
            if(age==null||age==""){
                alert("年龄不能为空");
                return ;
            }

            if(age<0||age>100){
                alert("年龄格式不对");
                return ;
            }
            registerSubmit();
		})


        function registerSubmit(){
            alert("我提交了");
            var userdata = $("#form_1").serialize();
            $.ajax({
                type:"post",
                url:"<%= path%>/login/register",
                data:userdata,
                dataType:"json",
                success:function(result){
					if("000000"==result.code){
						location.href="<%= path%>/login/login.html";
					}else{
					    alert(result.info);
					}
                    /*console.log(result);*/
                    //注册成功跳转登陆界面

                },
                error:function(result){

                }
            })

        }
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
	})

	$(".login-btn").click(function(){
		var email = $("#email").val();
		var password = $("#password").val();
		var verify = $("#verify").val();
		// $.ajax({
		// url: 'http://www.zrong.me/home/index/userLogin',
		// type: 'post',
		// jsonp: 'jsonpcallback',
  //       jsonpCallback: "flightHandler",
		// async: false,
		// data: {
		// 	'email':email,
		// 	'password':password,
		// 	'verify':verify
		// },
		// success: function(data){
		// 	info = data.status;
		// 	layer.msg(info);
		// }
		// })

	})
	$("#remember-me").click(function(){
		var n = document.getElementById("remember-me").checked;
		if(n){
			$(".zt").show();
		}else{
			$(".zt").hide();
		}
	})
</script>
</body>
</html>
