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
    <div class="nav_i">
        <div class="main">
            <ul>
                <li><a href="<%= path%>/index/indexnew.html">首 页</a></li>
                <li><a href="<%= path%>/index/act_info.html" >活动介绍</a></li>
                <li><a href="<%= path%>/index/act_rule.html" >参赛规则</a></li>
                <li><a href="<%= path%>/index/prize_info.html" >奖项设置</a></li>
                <li><a href="<%= path%>/user/showproduct.html" >作品展示</a></li>
                <li><a href="<%= path%>/user/upload.html">上传作品</a></li>
                <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>
            </ul>
        </div>
    </div>
  <link href="<%= path%>/css/glb1311_utf.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" ignoreapd="false">
  <link href="<%= path%>/css/css.css"  rel="stylesheet" type="text/css" />
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


<div class="bg_gary ">
    <div class="main mar_t_20" >
        <div class="w_780 left">
            <div class="title"><h2>${updto.imageName}</h2></div>
            <div class="jp_l">
                <h2>作品描述</h2>
                <table width="360" border="0" align="center" cellpadding="10" cellspacing="0" class="font_18">
                    <div class="line_24 font_14 mar_f_20">
                        <%--<textarea  disabled="true" cols="45" rows="5" class="textarea"></textarea>--%>
                            &nbsp; &nbsp; &nbsp; &nbsp; ${updto.intro}
                    </div>
                </table>
                <h2 class="mar_t_20">作品展：</h2>
                <div>
                    <img src="<%= path%>/resources/upload/${updto.attachment.newName}">
                </div>
            </div>

        </div>
        <div class="no_way"></div>
    </div>
</div>


<div class="no_way"></div>
<div class="no_way"></div>


<!--footer-->
<%@include file="/WEB-INF/jsp/common/footer.jsp" %>

</body>
</html>
<script type="text/javascript" src="<%= path%>/js/activity/vote.js"  ignoreapd="false"></script>
