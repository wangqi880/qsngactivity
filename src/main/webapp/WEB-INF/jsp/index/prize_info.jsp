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
  <div class="main juzhong">
    <ul>
      <li><a href="<%= path%>/index/indexnew.html" tppabs="http://pic.eol.cn/picture/index">首 页</a></li>
      <li><a href="<%= path%>/index/act_info.html" tppabs="http://pic.eol.cn/picture/act_info">活动介绍</a></li>
      <li><a href="<%= path%>/index/act_rule.html" tppabs="http://pic.eol.cn/picture/act_rule">参赛规则</a></li>
      <li class="bg_ii">奖项设置</li>
      <li><a href="<%= path%>/user/upload.html" tppabs="http://pic.eol.cn/picture/upload">上传作品</a></li>
<%--
      <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>
--%>
    </ul>
  </div>
</div>



<div class="bg_gary ">
<div class="main mar_t_20" >
	<div class="w_780 left">
   	  <div class="title"><h2>《我爱少年宫》主题摄影大赛活动介绍</h2></div>
  	  <div class="jp_l">
      	<h2><div  class="title_class"><span>一奖项设置</span></div></h2>
          <div class="line_24 font_14 mar_f_20">

            <p> 1、一等奖5名，奖金600元人民币、证书一份</p>
            <p>2、二等奖10名，奖金300元人民币、证书一份</p>
            <p>3、三等奖30名，奖金200元人民币、证书一份</p>
            <p>4、佳作奖50名，奖金100元人民币、证书一份</p>
            <p>5、最受欢迎奖5名</p>
          </div>
        <h2 class="mar_t_20" style="padding-left:30px;"><div  class="title_class"><span>二须知</span></div></h2>
        <div class="line_24 font_14 mar_f_20">

          <p>1、一等奖\二等奖\三等奖\佳作奖及最受欢迎奖确认方式:大赛办将与获奖者联络，届时获奖者需于指定日期内提供与入围佳作时信息一致的身份证复印件作为领奖证明。无法按时提供有效证明的，或提交的个人信息与原始信息不符的，不符合本规程规则要求的，或照片是合成的，视为无效作品，主办方有权取消该作品获奖资格。</p>
        <p>2、通过核查不符合本规程要求的作品将被删除，由于删除而空出的获奖名额，会依据评审会当天评选排名进行替补。</p>
        </div>
      <table width="580" border="0" align="center" cellpadding="10" cellspacing="0">
  <tr>
      <td width="319" height="160" align="center" valign="middle"></td>
      <td height="160" align="center" valign="middle"></td>
    <td align="center" valign="bottom"><a href="<%= path%>/user/upload.html" tppabs="http://pic.eol.cn/picture/upload"><img src="<%= path%>/images/up.png" tppabs="http://pic.eol.cn/app/static/images/up.png" width="200" height="200" style="margin-bottom:20px;" /><br />
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
