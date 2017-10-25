<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <!--meta引入-->
    <%@include file="/WEB-INF/jsp/common/meta.jsp" %>

  <link href="<%= path%>/css/glb1311_utf.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" ignoreapd="false">
  <link href="<%= path%>/css/css.css"  rel="stylesheet" type="text/css" />
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
<!--banner+导航-->
<%@include file="/WEB-INF/jsp/common/banner.jsp" %>
<div class="nav_i">
    <div class="main">
        <ul>
            <li><a href="<%= path%>/index/indexnew.html" >首 页</a></li>
            <li><a href="<%= path%>/index/act_info.html" >活动介绍</a></li>
            <li><a href="<%= path%>/index/act_rule.html" >参赛规则</a></li>
            <li><a href="<%= path%>/index/prize_info.html" >奖项设置</a></li>
            <li class="bg_ii">作品显示</li>
            <li><a href="<%= path%>/user/upload.html">上传作品</a></li>
            <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>
        </ul>
    </div>
</div>

<div class="container main">

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


<!--footer-->
<%@include file="/WEB-INF/jsp/common/footer.jsp" %>

</body>
</html>
<script type="text/javascript" src="<%= path%>/js/activity/vote.js"  ignoreapd="false"></script>
