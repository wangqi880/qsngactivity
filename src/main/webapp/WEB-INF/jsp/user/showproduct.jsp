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

    <!--图文-->
    <!-- CSS -->
    <link href='<%=request.getContextPath() %>/picTextShow/css/styles.css' rel='stylesheet'>
    <!-- JS -->
    <script src='<%=request.getContextPath() %>/picTextShow/js/intense.js'></script>
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
            <a class="current-demo" href="<%= path%>/user/showproduct.html">${user.name}作品展示</a>
        </nav>
    </header>

    <div class="content">

            <c:forEach items="${userPicShowDtoList}" var="imginfo">
                <section class="demos">
                <div style="width: 250px;height: 200px; background-image:url(<%=request.getContextPath() %>/resources/upload/${imginfo.attachment.newName})" class="demo-image first" data-image="<%=request.getContextPath() %>/resources/upload/${imginfo.attachment.newName}" data-title="${imginfo.imageName}(${user.name})" data-caption="${imginfo.intro}"></div>
                </div>
            </c:forEach>
        </div>
        <!-- /cards -->
    </div><!-- /content -->
</div>
<div class="no_way"></div>
</div>
</div>
<div class="no_way"></div>


<!--footer-->
<%@include file="/WEB-INF/jsp/common/footer.jsp" %>

</body>
</html>
<script type="text/javascript">

    window.onload = function() {
            var elements = document.querySelectorAll( '.demo-image' );
            Intense( elements );
    }
</script>
<script type="text/javascript" src="<%= path%>/js/activity/vote.js"  ignoreapd="false"></script>
