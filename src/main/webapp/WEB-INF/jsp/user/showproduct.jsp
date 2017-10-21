<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>最美校园摄影大赛—网络图片征集活动—中国教育在线</title>
        <meta name="keywords" content="中国教育在线,摄影大赛,网络图片征集活动" />
        <meta name="description" content="最美校园摄影大赛—网络图片征集活动—中国教育在线" />
        <meta name="copyright" content="www.eol.cn" />
<meta name="copyright" content="www.eol.cn" />
<meta content="all" name="robots" />
  <link href="<%= path%>/css/glb1311_utf.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" ignoreapd="false">
  <link href="<%= path%>/css/css.css"  rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="<%= path%>/cardExpansion/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="<%= path%>/cardExpansion/fonts/font-awesome-4.3.0/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="<%= path%>/cardExpansion/css/demo.css" />

    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="<%= path%>/cardExpansion/css/card.css" />
    <link rel="stylesheet" type="text/css" href="<%= path%>/cardExpansion/css/pattern.css" />
    <!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script>
        if (navigator.userAgent.toLowerCase().indexOf('firefox') > -1) {
            var root = document.getElementsByTagName('html')[0];
            root.setAttribute('class', 'ff');
        };
    </script>
</head>

<body>
<div class="top_i" ><h1 class="hide">摄影大赛</h1></div>
<div class="nav_i">
	<div class="main">
    <ul>
      <li><a href="<%= path%>/index/indexnew.html" tppabs="http://pic.eol.cn/picture/index">首 页</a></li>
      <li><a href="<%= path%>/index/act_info.html" tppabs="http://pic.eol.cn/picture/act_info">活动介绍</a></li>
      <li><a href="<%= path%>/index/act_rule.html" tppabs="http://pic.eol.cn/picture/act_rule">参赛规则</a></li>
      <li><a href="<%= path%>/index/prize_info.html" tppabs="http://pic.eol.cn/picture/prize_info">奖项设置</a></li>
      <li class="bg_ii">作品显示</li>
      <li><a href="<%= path%>/user/upload.html">上传作品</a></li>
        <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>
    </ul>
    </div>
</div>


<div class="container" style="color: white">

    <header class="codrops-header">
        <nav class="codrops-demos">
            <a class="current-demo" href="test2.jsp">${user.name}作品展示</a>
        </nav>
    </header>

    <div class="content">
        <!-- trianglify pattern container -->
        <div class="pattern pattern--hidden"></div>
        <!-- cards -->
        <div class="wrapper">
            <c:forEach items="${userPicShowDtoList}" var="imginfo">
                <div class="card">
                    <div class="card__container card__container--closed">
                        <svg class="card__image" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1920 500" preserveAspectRatio="xMidYMid slice">
                            <defs>
                                <clipPath id="clipPath1">
                                    <!-- r = 992 = hyp = Math.sqrt(960*960+250*250) -->
                                    <circle class="clip" cx="960" cy="250" r="992"></circle>
                                </clipPath>
                            </defs>
                            <image clip-path="url(#clipPath1)" width="1920" height="500" xlink:href="<%= path%>/resources/upload/${imginfo.attachment.newName}"></image>
                        </svg>
                        <div class="card__content">
                            <i class="card__btn-close fa fa-times"></i>
                            <div class="card__caption">
                                <h2 class="card__title">${imginfo.imageName}</h2>
                                <p class="card__subtitle">${user.name}y</p>
                            </div>
                            <div class="card__copy">
                                <div class="meta">
                                        <%--<img class="meta__avatar" src="<%= path%>/cardExpansion/img/authors/1.png" alt="author01" />--%>
                                    <span class="meta__author">${user.name}</span>
                                    <span class="meta__date">${imginfo.attachment.insertTime}</span>
                                </div>
                                <p>${imginfo.intro}</p>

                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!-- /cards -->
    </div><!-- /content -->
</div>
<script type="text/javascript" src="<%= path%>/cardExpansion/js/vendors/trianglify.min.js"></script>
<script type="text/javascript" src="<%= path%>/cardExpansion/js/vendors/TweenMax.min.js"></script>
<script type="text/javascript" src="<%= path%>/cardExpansion/js/vendors/ScrollToPlugin.min.js"></script>
<script type="text/javascript" src="<%= path%>/cardExpansion/js/vendors/cash.min.js"></script>
<script type="text/javascript" src="<%= path%>/cardExpansion/js/Card-circle.js"></script>
<script type="text/javascript" src="<%= path%>/cardExpansion/js/demo.js"></script>

<div class="no_way"></div>
</div>
</div>
<div class="no_way"></div>


<div class="bot_i">
  <div class="w_650">
    <div class="w_260 left">
      <p align="center"><img src="<%= path%>/images/wb.png" tppabs="http://pic.eol.cn/app/static/images/wb.jpg" width="260" height="260" /></p>
      <h2>官方微博</h2>
    </div>
    <div class="w_260 right">
      <p align="center"><img src="<%= path%>/images/wx.jpg" tppabs="http://pic.eol.cn/app/static/images/wx.jpg" width="260" height="260" /></p>
      <h2>官方微信</h2>
    </div>
    <div class="no_way"></div>
  </div>
  
  	<div id="glbbot">
		<a href="javascript:if(confirm('http://pic.eol.cn/html/cer.net/jj.htm  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/html/cer.net/jj.htm'" tppabs="http://pic.eol.cn/html/cer.net/jj.htm">eol.cn简介</a>
		  | <a href="javascript:if(confirm('http://pic.eol.cn/html/cer.net/lx.htm  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/html/cer.net/lx.htm'" tppabs="http://pic.eol.cn/html/cer.net/lx.htm">联系方式</a>
		  | <a href="javascript:if(confirm('http://pic.eol.cn/html/cer.net/sm.htm  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/html/cer.net/sm.htm'" tppabs="http://pic.eol.cn/html/cer.net/sm.htm">网站声明</a> 
		  | <a href="javascript:if(confirm('http://pic.eol.cn/html/cer.net/zhaopinxinxi.htm  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/html/cer.net/zhaopinxinxi.htm'" tppabs="http://pic.eol.cn/html/cer.net/zhaopinxinxi.htm">招聘信息</a> 
		  | <a href="javascript:if(confirm('http://www.miibeian.gov.cn/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.miibeian.gov.cn/'" tppabs="http://www.miibeian.gov.cn/">京ICP备12045350号-1</a> 
		  | <a href="javascript:if(confirm('http://img.eol.cn/images/indexnew/www1024.jpg  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://img.eol.cn/images/indexnew/www1024.jpg'" tppabs="http://img.eol.cn/images/indexnew/www1024.jpg">文网文[2008]228号</a> 
		  | <a href="javascript:void(0)">京公网安备110108902063号</a><br />
		版权所有 <a href="javascript:if(confirm('http://www.cernet.com/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.cernet.com/'" tppabs="http://www.cernet.com/">赛尔网络有限公司
	CERNET Corporation</a><br />
		Mail to: <a href="mailto:webmaster@cernet.com">webmaster@cernet.com</a>
	</div>
</div>
</body>
</html>
<script type="text/javascript" src="<%= path%>/js/activity/vote.js"  ignoreapd="false"></script>
