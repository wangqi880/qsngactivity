<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<%@include file="/WEB-INF/jsp/huiyi/header.jsp" %>
<style type="text/css">
  <!--
  .STYLE1 {color: #FF0000}
  -->
</style>
<body>
<header data-am-widget="header" class="am-header am-header-default">
  <div class="am-header-left am-header-nav">
    <a href="/huiyi" class="">
      <i class="am-header-icon am-icon-home"></i>
    </a>
  </div>
  <h1 class="am-header-title">
    会议议程
  </h1>
</header>
<article data-am-widget="paragraph" class="am-paragraph am-paragraph-default"
data-am-paragraph="{ tableScrollable: true, pureview: true }">


<p>
  专题讨论《共青团中央、全国少工委关于进一步加强和规范团属青少年宫管理的意见》、《关于推进中小学生研学旅行的意见》暨宫协系统青年工作研讨会<br />
<strong>（一）时间:</strong> <br />
  2018年6月5日8:30-11:30<br />

 <strong>（二）地点:</strong> <br />
  成都市青少年宫锦城公园校区<br />

<strong>（三）参会人员:</strong> <br />
  中国青少年宫协会xxx，共青团成都市委xxx、全国各城市青少年宫主任。<br />

  <strong>（四）会议议程:</strong> <br />
  1. xxx领导讲话；<br />
  2. xxx致欢迎辞；<br />
  3.；<br />
  4.。<br />
</p>
</article>

<hr data-am-widget="divider" style="" class="am-divider am-divider-default"/>
<%@include file="/WEB-INF/jsp/huiyi/footer.jsp" %>
</body>
</html>