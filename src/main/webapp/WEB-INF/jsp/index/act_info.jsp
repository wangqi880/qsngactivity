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
      <li class="bg_ii">活动介绍</li>
      <li><a href="<%= path%>/index/act_rule.html" tppabs="http://pic.eol.cn/picture/act_rule">参赛规则</a></li>
      <li><a href="<%= path%>/index/prize_info.html" tppabs="http://pic.eol.cn/picture/prize_info">奖项设置</a></li>
      <li><a href="<%= path%>/user/showproduct.html" tppabs="http://pic.eol.cn/picture/take_in">作品展示</a></li>
      <li><a href="<%= path%>/user/upload.html" tppabs="http://pic.eol.cn/picture/upload">上传作品</a></li>
      <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>

    </ul>
    </div>
</div>



<div class="top_b">
<div class="main mar_t_20" >
	<div class="w_780 ">
   	  <div class="title"><h2>最美校园”摄影大赛活动介绍</h2></div>
  	  <div class="jp_l">
  	  <div class="line_24 font_14 mar_f_20">
  	  		<br>
        	<p>　　　中国教育在线作为中国最大的综合教育门户网站，一直关注着中国的教育问题，为考生和高校搭建沟通、交流的服务平台。为了能够推动校园文化的发展，为更多的摄影爱好者提供一个展示自己、交流学习的平台，中国教育在线决定举办最美校园摄影大赛。
　　　			<br>　　　最美校园摄影大赛主要针对中小学、大学、海外院校三组图片的收集。为推动本次大赛的顺利进行，中国教育在线成立赛务组并邀请专业摄影工作者及高校摄影教师，作为本次大赛的评委老师，共同助力本次大赛的开展。</p>
        <br>
        </div>
      <h2 class="mar_t_20" style="padding-left:30px;">一、时间安排</h2>
      <div class="line_24 font_14 mar_f_20">
        	<p>　　　活动时间2014年10月20日至2015年4月19日。</p>
        
        </div>
         <h2 class="mar_t_20" style="padding-left:30px;">二、参赛须知</h2>
      <div class="line_24 font_14 mar_f_20">
        	<p>　　　稿件必须紧扣本次征文的主题进行写作，严禁虚构和抄袭；</p>
        	<p>　　　严禁一稿多投，投稿者须保证作品从未在任何其他媒体包括网站上发布过；</p>
        	<p>　　　网友如发现获奖照片有违反内容真实性、一稿多投等情况，可通过电子邮件将意见发送到活动邮箱qiaoy@cernet.com，如情况经查属实，我们将取消违规作品评奖资格。欢迎广大网民监督。如有任何疑问，请致电：(010) 62603858。</p>
        	<p>　　　本次摄影大赛全部作品，主办方有权在自有媒体或合作媒体上使用，作者一经投稿，即视同接受本条款。</p>
        	<p>　　　主办方不承担包括（不限于）肖像权、名誉权、隐私权、著作权、商标权等纠纷而产生的法律责任，如出现上述纠纷，主办方保留取消其参赛资格及追回奖项的权利。</p>
        
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
        <p align="center"><img src="<%= path%>/images/wb.png"  width="260" height="260" /></p>
        <h2>官方微博</h2>
      </div>
      <div class="w_260 right">
        <p align="center"><img src="<%= path%>/images/wx.jpg"  width="260" height="260" /></p>
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
