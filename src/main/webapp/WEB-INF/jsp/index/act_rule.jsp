<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>最美校园摄影大赛—网络图片征集活动—中国教育在线</title>
        <meta name="keywords" content="中国教育在线,摄影大赛,网络图片征集活动" />
        <meta name="description" content="最美校园摄影大赛—网络图片征集活动—中国教育在线" />
        <meta name="copyright" content="www.eol.cn" />
<meta name="copyright" content="www.eol.cn" />
<meta content="all" name="robots" />
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
<div class="top_i" ><h1 class="hide">摄影大赛</h1></div>
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
<script type="text/javascript" src="vote.js" tppabs="http://pic.eol.cn/app/static/script/vote.js" ignoreapd="false"></script>
<div style="width:1px;height:1px;overflow:hidden;">
	<script type="text/javascript">
	document.write('<img src="http://pv.img.eol.cn/images/cer.net/log/gao-kao.png?'+Math.round(Math.random()*1e17)+'" width="0" height="0"/>');
	</script>
	<noscript>
	<img src="gao-kao.png" tppabs="http://pv.img.eol.cn/images/cer.net/log/gao-kao.png" width="0" height="0" />
	</noscript>
<!-- ecounter -->
<script>
var pkBaseURL = (("https:" == document.location.protocol) ? "https://stat.eol.cn/" : "http://stat.eol.cn/");
document.write(unescape("%3Cscript src='" + pkBaseURL + "piwik.js' type='text/javascript'%3E%3C/script%3E"));
</script><script type="text/javascript">
try {
var piwikTracker = Piwik.getTracker(pkBaseURL + "mysql.php", 76);
piwikTracker.trackPageView();
piwikTracker.enableLinkTracking();
} catch( err ) {}
</script><noscript><p><img src="mysql.php-idsite=76" tppabs="http://stat.eol.cn/mysql.php?idsite=76" style="border:0" alt="" /></p></noscript>
<!-- End ecounter Tag -->
<script src="stat.php-id=4696180&web_id=4696180" tppabs="http://s6.cnzz.com/stat.php?id=4696180&web_id=4696180" language="JavaScript"></script>
</div>
