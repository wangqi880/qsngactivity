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
	<style type="text/css">
		.div-inline{ display:inline}

	</style>
	<!--弹出层-->
	<script src="<%= path%>/resources/layer/layer.js"></script>
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
				<a href="<%=request.getContextPath() %>/index/indexnew.html" target="_self">网站首页</a>
				<div class="slide-bar slide-bar1"></div>				
			</div>
		</div>

		<div class="login form">
			<form action="<%= path%>/index/register" method="post" enctype="multipart/form-data" name="form_action" id="form_1">

			<div class="group">


				<div class="group-ipt user">
					<div><div class="div-inline" style="float:left;margin-top: 10px">用户名:</div><div class="div-inline" style="float:left"><input type="text" name="username" id="username" class="ipt" placeholder="用户名" required style="border-bottom: 1px solid #e8e8e8;"></div></div>
				</div>
				<div class="group-ipt password">
					<div><div class="div-inline" style="float:left;margin-top: 10px">密码:</div><div class="div-inline" style="float:left"><input type="password" name="password" id="password" class="ipt" placeholder="设置登录密码" required></div></div>
				</div>
				<div class="group-ipt email">
					<div><div class="div-inline" style="float:left;margin-top: 10px">重复密码：</div><div class="div-inline" style="float:left"><input type="password" name="password1" id="password1" class="ipt" placeholder="重复密码" required></div></div>
				</div>
				<div class="group-ipt user">
					<div><div class="div-inline" style="float:left;margin-top: 10px">身份证号码：</div><div class="div-inline" style="float:left"><input type="text" name="cardId" id="cardId" class="ipt" placeholder="身份证号码" required></div></div>
				</div>
				<div class="group-ipt user">
					<div><div class="div-inline" style="float:left;margin-top: 10px">姓名:</div><div class="div-inline" style="float:left"><input type="text" name="name" id="name" class="ipt" placeholder="姓名" required></div></div>
				</div>

				<div class="group-ipt password">
					<div><div class="div-inline" style="float:left;margin-top: 10px">电话：</div><div class="div-inline" style="float:left">
						<input type="text" name="msisdn" id="msisdn" class="ipt" placeholder="电话" required></div></div>
				</div>
				<div class="group-ipt password">
					<div><div class="div-inline" style="float:left;margin-top: 10px">性别：</div><div class="div-inline" style="float:left">
					<select name="sex" id="sex" class="ipt">

						<option value="1" >男 </option>
						<option value="2" >女</option>

					</select></td>
					</div></div>
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
            var sex=$("select[name='sex']").val();

            if(username==null||username==""){
                layer.msg("账户名不能为空");
                return ;
            }
            if(username.length<4){
                layer.msg("账户名不能小于4位");
                return ;
			}

            if(password==null||password==""){
                layer.msg("密码不能为空");
                return ;
            }
            if(password.length<6){
                layer.msg("密码不能小于6位数");
                return ;
            }
            if(password1==null||password1==""){
                layer.msg("密码不能为空");
                return ;
            }
            if(password1.length<6){
                layer.msg("密码不能小于6位数");
                return ;
            }
            if(password1!=password){
                layer.msg("密码输入不匹配");
                return ;
			}

            if(cardId==null||cardId==""){
                layer.msg("身份证号码为空");
                return ;
            }
            var cardId_pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
            if(!cardId_pattern.test(cardId)){
                layer.msg("身份证格式不对");
                return ;
            }

            if(name==null||name==""){
                layer.msg("姓名不能为空");
                return ;
            }

            if(msisdn==null||msisdn==""){
                layer.msg("手机号不能为空");
                return ;
            }
            var msisdn_pattern = /^1[34578]\d{9}$/;
            if(!msisdn_pattern.test(msisdn)){
                layer.msg("手机号格式不对");
                return ;
            }
            registerSubmit();
		})


        function registerSubmit(){
            var userdata = $("#form_1").serialize();
            $.ajax({
                type:"post",
                url:"<%= path%>/login/register",
                data:userdata,
                dataType:"json",
                success:function(result){
					if("000000"==result.code){
                        layer.confirm("注册成功，是否进入首页", function () {
                            window.location.href="<%= path%>/index/indexnew.html";
                        }, function () {
                        });


					}else{
                        layer.msg(result.info);
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
