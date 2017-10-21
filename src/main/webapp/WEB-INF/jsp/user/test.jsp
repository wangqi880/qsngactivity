<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>最美校园摄影大赛—网络图片征集活动—中国教育在线</title>
    <meta name="keywords" content="中国教育在线,摄影大赛,网络图片征集活动" />
    <meta name="description" content="最美校园摄影大赛—网络图片征集活动—中国教育在线" />
    <meta name="copyright" content="www.eol.cn" />
    <meta name="copyright" content="www.eol.cn" />
    <meta content="all" name="robots" />
   <%-- <link href="<%= path%>/css/glb1311_utf.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" ignoreapd="false">
    <link href="<%= path%>/css/css.css"  rel="stylesheet" type="text/css" />--%>
    <%--<link href="<%= path%>/js/uploadify/css/jquery.fileupload-ui.css"  rel="stylesheet" type="text/css" />
    <link href="<%= path%>/js/uploadify/css/jquery.fileupload.css"  rel="stylesheet" type="text/css" />
    <link href="<%= path%>/js/uploadify/css/jquery.fileupload-noscript.css"  rel="stylesheet" type="text/css" />
    <link href="<%= path%>/js/uploadify/css/ jquery.fileupload-ui-noscript.css"  rel="stylesheet" type="text/css" />--%>

    <style type="text/css">
        *{margin:0;padding:0;list-style-type:none;}
        body{overflow-y:scroll;font-family:"HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, sans-serif;background:#f4f4f4;padding:0;margin:0;}
        a,a:hover{border:none;text-decoration:none;}
        img,a img{border:none;}
        .clear{clear:both;}

        /* gallery */
        .zoomed > .gallery{-webkit-filter:blur(3px);filter:blur(3px);}
        .gallery{width:800px;margin:20px auto;}
        .gallery li{float:left;margin:10px; width:80px; height:80px;}
        .gallery li:nth-child(6n){padding-right:0;}
        .gallery li a,.gallery li img{float:left;}
    </style>
    <link rel="stylesheet"  href="<%= path%>/css/zoom.css" media="all" />
    <%--<script type="text/javascript" src="<%= path%>/js/activity/jQuery_latest.min.js" ></script>--%>

    <%-- <script type="text/javascript" src="<%= path%>/js/activity/jQuery_tabs.js" tppabs="http://www.eol.cn/js/global/jQuery_tabs.js" ignoreapd="false"></script>
     <script type="text/javascript" src="<%= path%>/js/activity/jQuery_picFocus.js" tppabs="http://www.eol.cn/js/global/jQuery_picFocus.js" ignoreapd="false" charset="utf-8"></script>
     <script type="text/javascript" src="<%= path%>/js/activity/ctrl.js" tppabs="http://pic.eol.cn/app/static/script/ctrl.js" ignoreapd="false"></script>--%>
    <!--上传js-->
    <%--  <script type="text/javascript"  src="<%= path%>/js/uploadify/js/vendor/jquery.ui.widget.js"></script>
      <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload.js"></script>
      <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload-jquery-ui.js"></script>
      <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload-process.js"></script>
      <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload-ui.js"></script>
      <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload-validate.js"></script>
      <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.iframe-transport.js"></script>--%>

    <!--图片变大js-->
    <script type="text/javascript" src="<%= path%>/js/jquery-1.9.1.min.js" ></script>




    <!--
    <base  target="_blank"/>
    -->
</head>

<body>
    <div class="gallery">
        <ul>
            <li><a href="/qsngactivity/resources/upload/1508390511498.jpg" ><img src="/qsngactivity/resources/upload/thumbnail/1508390511498.jpg"/></a></li>

            <li><a href="/qsngactivity/resources/upload/1508390511498.jpg" ><img src="/qsngactivity/resources/upload/thumbnail/1508390511498.jpg"/></a></li>
        </ul>
        <div class="clear"></div>
    </div>
    <script type="text/javascript" src="<%= path%>/js/zoom.min.js"></script>
</body>
</html>
<%--
<script type="text/javascript" src="<%= path%>/js/activity/vote.js" tppabs="http://pic.eol.cn/app/static/script/vote.js" ignoreapd="false"></script>
--%>

