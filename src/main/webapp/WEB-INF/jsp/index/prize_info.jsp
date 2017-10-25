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
      <li><a href="<%= path%>/index/act_rule.html" tppabs="http://pic.eol.cn/picture/act_rule">参赛规则</a></li>
      <li class="bg_ii">奖项设置</li>
      <li><a href="<%= path%>/user/showproduct.html" tppabs="http://pic.eol.cn/picture/take_in">作品展示</a></li>
      <li><a href="<%= path%>/user/upload.html" tppabs="http://pic.eol.cn/picture/upload">上传作品</a></li>
      <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>
    </ul>
  </div>
</div>



<div class="bg_gary ">
<div class="main mar_t_20" >
	<div class="w_780 left">
   	  <div class="title"><h2>“最美校园”摄影大赛奖项设置</h2></div>
  	  <div class="jp_l">
      	<h2>奖项设置：</h2>
        <table width="360" border="0" align="center" cellpadding="10" cellspacing="0" class="font_18">
  <tr>
    <td align="center" valign="middle">EOL特等奖</td>
    <td align="center" valign="middle">1名</td>
    <td align="center" valign="middle">ipad mini</td>
  </tr>
  <tr>
    <td align="center" valign="middle">一等奖 </td>
    <td align="center" valign="middle">2名</td>
    <td align="center" valign="middle">数码相机</td>
  </tr>
  <tr>
    <td align="center" valign="middle">二等奖 </td>
    <td align="center" valign="middle">3名</td>
    <td align="center" valign="middle">卡口镜头</td>
  </tr>
  <tr>
    <td align="center" valign="middle">三等奖</td>
    <td align="center" valign="middle">5名 </td>
    <td align="center" valign="middle">EOL电脑包</td>
  </tr>
</table>
      <h2 class="mar_t_20">奖项展示：</h2>
      <table width="580" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
    <td height="180" align="center" valign="middle"><img src="mini.jpg" tppabs="http://pic.eol.cn/app/static/images/mini.jpg" width="180" height="170" /></td>
    <td align="center" valign="middle"><img src="camera.jpg" tppabs="http://pic.eol.cn/app/static/images/camera.jpg" width="189" height="160" /></td>
  </tr>
  <tr>
    <td height="60" align="center" valign="top"><i>EOL特等奖</i></td>
    <td align="center" valign="top"><em>一等奖</em></td>
  </tr>
  <tr>
    <td height="180" align="center" valign="middle"><img src="lens.jpg" tppabs="http://pic.eol.cn/app/static/images/lens.jpg" width="200" height="140" /></td>
    <td align="center" valign="middle"><img src="diannb.jpg" tppabs="http://pic.eol.cn/app/static/images/diannb.jpg" width="200" height="140" /></td>
  </tr>
  <tr>
    <td height="80" align="right" valign="top"><em>二等奖</em></td>
    <td align="center" valign="top"><em>三等奖</em></td>
  </tr>
  <tr>
    <td height="160" align="center" valign="middle"></td>
    <td align="center" valign="bottom"><a href="<%= path%>/user/upload.html" tppabs="http://pic.eol.cn/picture/upload"><img src="<%= path%>/images/up.png" tppabs="http://pic.eol.cn/app/static/images/up.png" width="130" height="150" style="margin-bottom:20px;" /><br />
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
