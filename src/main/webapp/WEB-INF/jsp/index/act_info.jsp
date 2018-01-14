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
            <li class="bg_ii">活动介绍</li>
            <li><a href="<%= path%>/index/act_rule.html" tppabs="http://pic.eol.cn/picture/act_rule">参赛规则</a></li>
            <li><a href="<%= path%>/index/prize_info.html" tppabs="http://pic.eol.cn/picture/prize_info">奖项设置</a></li>
            <li><a href="<%= path%>/user/upload.html" tppabs="http://pic.eol.cn/picture/upload">上传作品</a></li>
            <li><a href="<%= path%>/index/rewardList" >获奖情况</a></li>
<%--
            <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>
--%>

        </ul>
    </div>
</div>



<div class="top_b">
<div class="main mar_t_20" >
	<div class="w_780 ">
   	  <div class="title"><h2>“童梦飞扬新时代”2018迎新主题摄影暨图片展公益活动</h2></div>
  	  <div class="jp_l">
  	  <div class="line_24 font_14 mar_f_20">
          <p>
              <br>
            <%--<br>　　　成都市青少年宫是具有六十年历史的青少年校外教育、活动阵地。以服务社会发展和青少年成长为中心，帮助青少年塑造品行、提升素质、启迪智趣，将健康积极的道德素养、科学精神、文化态度和审美情趣内化为青少年的情感自觉，成都市青少年宫全力呵护和发掘孩子的创造力和无限可能，使孩子真正视青少年宫为成长的快乐殿堂。
　　　	    <br>　　　银杏叶质朴无华，他象征着活力，阳光和生机。代表着坚韧不拔、生生不息的自强精神，脚踏实地的务实精神，和谐相处的合作精神和凝心聚力的奉献精神。成都市青少年宫总结提炼出“爱己爱人、专注专业、创新创行”的银杏精神，“厚德、明理、尚美、乐行”的办宫宫训，形成了一套具有全局和长远指导意义的理念文化指导系统，为成都市青少年宫的积极健康、长远发展进一步夯实了思想基础。
            <br>　　 为全面贯彻落实党的十九大精神，弘扬主旋律，培育和践行社会主义核心价值观，扩大宣传成都市青少年宫的办宫理念，弘扬办宫文化，突出办学特点，加强成都市青少年宫对校外教育行业的引领作用，并为摄影人士提供一个广阔的展示平台，成都市青少年宫特举办以“我爱少年宫”为主题的摄影大赛。青少年宫是孩子们自由快乐的成长天地，这里充满欢笑和温情满满的感人故事，多少年后若还能从照片中寻回到当年的温暖记忆那将是何等幸福？本次活动用摄影这一喜闻乐见的形式，鼓励引导广大摄影爱好者去寻找、发现和感悟更多和成都市青少年宫相关的童年故事、风景或两三片段，并通过手中的镜头进行捕捉记录来展现大家对美好生活的感悟与热爱，从而体现成都市青少年宫积极向上的风貌和发展历程、建设成果并宣传成都校外教育的特有文化，丰富大家的精神文化生活。
          --%>
              <c:forEach items="${data}" var="item">
                  <c:if test="${item.position eq '1'}">
                      ${item.info}
                  </c:if>
              </c:forEach>
          </p>

        </div>
      <h2 class="mar_t_20" style="padding-left:30px;"><div  class="title_class"><span>一、时间安排</span></div></h2>
      <div class="line_24 font_14 mar_f_20">
        	<%--<p>　征稿日期：2017年11月1日 — 2017年12月10日</p>--%>
          <p>
              <c:forEach items="${data}" var="item">
                  <c:if test="${item.position eq '2'}">
                      ${item.info}
                  </c:if>
              </c:forEach>
          </p>
        
        </div>
         <h2 class="mar_t_20" style="padding-left:30px;"><div  class="title_class"><span>二、参赛须知</span></div></h2>
      <div class="line_24 font_14 mar_f_20">

         <%-- <p>1投稿期：2017年   月   日起至2017年   月   日截止</p>
            <p>2评选时间：2017年   月   日 ，评委团将从每个组别的赛段入围作品中评选获奖作品，大赛事务办以大赛事务热线电话或邮件方式通知获奖者（本大赛办的联系电话和邮箱</p>
            <p>3将于2017年   月  日 公布本届摄影大赛名次</p>
            <p>4由专家评委进行评选和主办方组成的评委团，从每赛段、每个组别的投稿中分别选出各自的入围作品</p>
          <p>5大赛事务局将于2017年11月31日（含）之前以大赛事务热线电话或邮件方式通知获奖者</p>--%>
             <c:forEach items="${data}" var="item">
                 <c:if test="${item.position eq '3'}">
                     ${item.info}
                 </c:if>
             </c:forEach>
        </div>
      <table width="580" border="0" align="center" cellpadding="10" cellspacing="0">

  <tr>
    <td width="319" height="160" align="center" valign="middle"></td>
    <td width="221" align="center" valign="bottom"><a href="<%= path%>/user/upload.html"><img src="<%= path%>/images/up.png"  width="200" height="200" style="margin-bottom:20px;" /><br />
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
