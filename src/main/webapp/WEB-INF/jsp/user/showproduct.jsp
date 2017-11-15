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

    <!--图片-->
    <style type="text/css">
        *{margin:0;padding:0;list-style-type:none;}
        body{overflow-y:scroll;padding:0;margin:0;}
        a,a:hover{border:none;text-decoration:none;}
        img,a img{border:none;}
        .clear{clear:both;}

        /* gallery */
        .zoomed > .gallery{-webkit-filter:blur(3px);filter:blur(3px);}
        .gallery{width:400px;margin:20px auto;}
        .gallery li{float:left;margin:5px; width:250px; height:200px;}
        .gallery li:nth-child(6n){padding-right:0;}
        .gallery li a,.gallery li img{float:left;}

        .showTextarea{ width:260px; height:145px; background:#F7F7F7; color:#999; border:1px solid #CCC; line-height:26px; padding-left:5px; padding-top:5px;}

    </style>
    <link rel="stylesheet"  href="<%= path%>/css/zoom.css" media="all" />
    <script type="text/javascript" src="<%= path%>/js/jquery-1.9.1.min.js" ></script>
</head>

<body>
<!--banner+导航-->
<%@include file="/WEB-INF/jsp/common/banner.jsp" %>
<div class="nav_i">
    <div class="main juzhong">
        <ul>
            <li><a href="<%= path%>/index/indexnew.html" >首 页</a></li>
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
<div >
    <div class="bg_gary ">
        <div class="main mar_t_20" >
            <div class="w_780 left">
            <div class="title"><h2>${user.name}参赛作品<c:if test="${ not empty message}">(${message})</c:if></h2></div>
                            <c:forEach items="${userPicShowDtoList}" var="imginfo">
                                    <div class="jp_l" style="float: left">
                                        <h2 class="mar_t_20" style="padding-left:30px;"><div  class="title_class"><span>${imginfo.imageName}</span></div></h2>
                                        <div class="line_24 font_14 mar_f_20">
                                            <div class="gallery"  style="margin: 0 0">
                                                <!--显示图片-->
                                                <ul>
                                                    <li>
                                                        <a id="image1_a" href="<%= path%>/resources/upload/${imginfo.attachment.newName}"> <img src="<%=path %>/resources/upload/${imginfo.attachment.newName}" style="width: auto;  height: auto; max-width: 100%;  max-height: 200px; " name="imageName" id="image1"></a>
                                                        <a ></a>

                                                    </li>
                                                </ul>
                                                <div class="clear"></div>
                                            </div>

                                        </div>
                                        <div>
                                            <textarea  disabled="disabled" cols="20" rows="6" class="showTextarea"> ${imginfo.intro}</textarea>
                                        </div>
                                    </div>
                             </c:forEach>
            <script type="text/javascript" src="<%= path%>/js/zoom.min.js"></script>

        </div>
        <div class="no_way"></div>
        </div>
</div>
<div class="no_way"></div>


<!--footer-->
<%@include file="/WEB-INF/jsp/common/footer.jsp" %>

</body>
</html>