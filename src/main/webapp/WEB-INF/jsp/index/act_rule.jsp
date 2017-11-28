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
            <li class="bg_ii">参赛规则</li>
            <li><a href="<%= path%>/index/prize_info.html" tppabs="http://pic.eol.cn/picture/prize_info">奖项设置</a></li>
            <li><a href="<%= path%>/user/upload.html" tppabs="http://pic.eol.cn/picture/upload">上传作品</a></li>
<%--
            <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>
--%>

        </ul>
    </div>
</div>

<div class="top_b">
<div class="main mar_t_20" >
	<div class="w_780 left">
   	  <div class="title"><h2>《我爱少年宫》主题摄影大赛活动介绍</h2></div>
  	  <div class="jp_l">
       <h2 class="mar_t_20" style="padding-left:30px;"><div  class="title_class"><span>参赛规则</span></div></h2>
      <div class="line_24 font_14 mar_f_20">

          <%--<p> 1、大赛面向所有摄影爱好者开放，年龄、国家不限，使用手机、相机拍摄均可。</p>

          <p>  2、参展作品内容不限，须保证原创，使用手机和相机拍摄不限。可展现成都市青少年宫的发展历程、建设新貌，也可体现丰富多彩的培训课程和校外活动等。
          </p>
          <p>  3. 摄影作品黑白、彩色不限，单幅、谢绝组照，参展作品创作时间不限（鼓励提交近年原创作品）。</p>

          <p>  4、单幅作品应配有标题或简单的文字说明；文字在200字以内（包括时间、地点、人物、事件等要点）。</p>
          <p>  5、上传的作品电子文件要求为JPEG格式，图片作品不小于1MB照片最长边限制在4724万像素以下, 比如：4724*3149像素以内或照片最长边限制不可小于1500像素，比如：1500*1125像素以上，否者视为无效作品。照片仅可作亮度、对比度、色彩饱和度的适度调整及构图剪裁，不能用电脑进行合成、添加、大幅度改变色彩等技术处理。主办单位会向参展者调取原始文件以供鉴定。逾期者或不提供者视为自动放弃参评资格。如参赛作品出现雷同，大赛主办方有权就雷同作品向作者索取创作证明，进行核查，主办方有权取消雷同作品的参赛资格。
          </p>
          <p>  6、参展者所提交的照片不得嵌入任何标记、边框、文字等。含有暴力、色情、宗教禁忌等法律所不允许的内容的作品，不予参评。
          </p>
          <p>  7、参展者应对其作品拥有独立、完整的著作权；还应保证其投送的作品不侵犯第三人的包括著作权、肖像权、名誉权、隐私权等在内的任何权利。参展者均视为认同本条款内容。凡上述保证落空而导致的相关纠纷，一切法律责任均由参评者本人承担，与主办方无关。
          </p>
          <p>  8、成都市青少年宫有权对所有参展作品在成都市青少年宫网站和微信公众平台及线下大型摄影展览中长期展示，进行宣传推广（不收取作品所有人的任何费用）。
          </p>
          <p> 9、成都市青少年宫将邀请专业人士组成评委组对作品进行评分，根据评分结果选出优秀作品并颁奖。
          </p>--%>
          <p>
              <c:forEach items="${data}" var="item">
                  <c:if test="${item.position eq '1'}">
                      ${item.info}
                  </c:if>
              </c:forEach>
          </p>
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
