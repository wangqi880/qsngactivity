<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--meta引入-->
    <%@include file="/WEB-INF/jsp/common/meta.jsp" %>


  <link href="<%= path%>/css/glb1311_utf.css" tppabs="http://www.eol.cn/css/cer.net/2011/glb1311_utf.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" ignoreapd="false">
  <link href="<%= path%>/css/css.css" tppabs="http://pic.eol.cn/app/static/css/css.css" rel="stylesheet" type="text/css" />
  <%--<link href="css.css" tppabs=<%= path%>/css/css.css" rel="stylesheet" type="text/css" />--%>
  <script type="text/javascript" src="<%= path%>/js/activity/jQuery_latest.min.js" tppabs="http://www.eol.cn/js/global/jQuery_latest.min.js" ignoreapd="false"></script>
  <script type="text/javascript" src="<%= path%>/js/activity/jQuery_tabs.js" tppabs="http://www.eol.cn/js/global/jQuery_tabs.js" ignoreapd="false"></script>
  <script type="text/javascript" src="<%= path%>/js/activity/jQuery_picFocus.js" tppabs="http://www.eol.cn/js/global/jQuery_picFocus.js" ignoreapd="false" charset="utf-8"></script>
  <script type="text/javascript" src="<%= path%>/js/activity/ctrl.js" tppabs="http://pic.eol.cn/app/static/script/ctrl.js" ignoreapd="false"></script>


    <!--
  <base  target="_blank"/>
  -->
</head>

<body>
<!--banner+导航-->
<%@include file="/WEB-INF/jsp/common/banner.jsp" %>
<div class="nav_i">
    <div class="main">
        <ul>
            <li><a href="<%= path%>/index/indexnew.html" tppabs="http://pic.eol.cn/picture/index">首 页</a></li>
            <li><a href="<%= path%>/index/act_info.html" tppabs="http://pic.eol.cn/picture/act_info">活动介绍</a></li>
            <li class="bg_ii">参赛规则</li>
            <li><a href="<%= path%>/index/prize_info.html" tppabs="http://pic.eol.cn/picture/prize_info">奖项设置</a></li>
            <li><a href="<%= path%>/user/showproduct.html" tppabs="http://pic.eol.cn/picture/take_in">作品展示</a></li>
            <li><a href="<%= path%>/user/upload.html" tppabs="http://pic.eol.cn/picture/upload">上传作品</a></li>
            <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>

        </ul>
    </div>
</div>

<div class="top_b">
<div class="main mar_t_20" >
	<div class="w_780 left">
   	  <div class="title"><h2>最美校园”摄影大赛活动介绍</h2></div>
  	  <div class="jp_l">
       <h2 class="mar_t_20" style="padding-left:30px;">参赛规则</h2>
      <div class="line_24 font_14 mar_f_20">

        <p>1、参赛作品内容积极向上，如若涉及到个人隐私。商业机密等法律责任由参赛者个人承担；</p>
        <p>2、参赛作品要求原创作品，不得抄袭，窃取他人的作品；</p>
        <p>3、数码摄影作品不人为去除原始拍摄信息，不得加LOGO、水印、修饰性边框；</p>
        <p>4、每一张照片，在上传时写明作品题目、作者姓名以及作者所在院系、班级、联系方式，每一张照片附有50字左右的简要作品说明等；</p>
        <p>5、作品尺寸小于或等于1024x768，图片大小不超过2M；</p>
        <p>6、大赛仅接受数码照片（含手机拍摄），格式要求为gif|jpg|png|jpeg；</p>
        <p>7、合成及拼接照片，以及其他增加或删减影像内容等影响作品真实性的照片不予参选</p>
        </div>
      <table width="580" border="0" align="center" cellpadding="10" cellspacing="0">

  <tr>
    <td width="319" height="160" align="center" valign="middle"></td>
    <td width="221" align="center" valign="bottom"><a href="<%= path%>/user/upload.html"><img src="<%= path%>/images/up.png"  width="130" height="150" style="margin-bottom:20px;" /><br />
<em>我要上传</em></a></td>
  </tr>
  
      </table>
      </div>
    
    </div>



<div class="no_way"></div>
</div>
</div>
<div class="no_way"></div>
<!--footer-->
<%@include file="/WEB-INF/jsp/common/footer.jsp" %>

</body>
</html>
