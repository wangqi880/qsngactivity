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
    <div class="main juzhong">
        <ul>
            <li><a href="<%= path%>/index/indexnew.html">首 页</a></li>
            <li><a href="<%= path%>/index/act_info.html" >活动介绍</a></li>
            <li><a href="<%= path%>/index/act_rule.html" >参赛规则</a></li>
            <li><a href="<%= path%>/index/prize_info.html" >奖项设置</a></li>
            <li><a href="<%= path%>/user/upload.html">上传作品</a></li>
            <%--
                            <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>
            --%>
        </ul>
    </div>
</div>
<div class="bg_gary ">
    <div class="main mar_t_20" >
        <div class="w_780 left">
            <div class="title"><h2>${updto.imageName}</h2></div>
            <div style="background-color: #cfe7f1;border-radius: 40px;width: 600px;margin-top: 50px;text-align: left">
                 <div style="margin-left: 20px;margin-right: 20px;">
                        <span style="margin: 20px 20px 20px 20px; color: #71c4f3;font-size: 20px">${updto.intro}sad阿达大大啊大大大大大多数啊发顺丰 沙发噶 规范房发顺丰 沙发噶 规范房发啊发啊啊发发顺丰 艾弗森发发个啊发阿达大大啊大大大大大多数啊顺丰 沙发噶 规范房发大啊大大大大大多数啊顺丰 沙发噶 规范房发啊发啊啊发发顺丰 艾弗森发发个啊发阿达大大啊大大大大大多数啊啊发啊啊发发顺丰 艾弗森发发个啊发阿达大大啊大大大大大多数啊发顺丰发发顺丰 艾弗森发发个啊发</span>
                </div>
            </div>

            <div style="margin-top: 30px">
                <img src="<%= path%>/resources/indexPic/${updto.newName}">
            </div>
           <%-- <div class="jp_l">
                <h2 class="mar_t_20" style="padding-left:30px;"><div  class="title_class"><span>1作品描述：</span></div></h2>


                <table width="360" border="0" align="center" cellpadding="10" cellspacing="0" class="font_18">
                    <div class="line_24 font_14 mar_f_20">
                        &lt;%&ndash;<textarea  disabled="true" cols="45" rows="5" class="textarea"></textarea>&ndash;%&gt;
                            &nbsp; &nbsp; &nbsp; &nbsp; ${updto.intro}
                    </div>
                </table>
                <div calss="title_class" >
                    <h2 class="mar_t_20" style="padding-left:30px;"><div  class="title_class"><span>2作品展示：</span></div></h2>

                </div>
                <div>
                    <img src="<%= path%>/resources/indexPic/${updto.newName}">
                </div>
            </div>--%>

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
