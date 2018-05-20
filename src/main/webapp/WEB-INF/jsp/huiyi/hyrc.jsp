<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<%@include file="/WEB-INF/jsp/huiyi/header.jsp" %>

<body>
<header data-am-widget="header" class="am-header am-header-default">
  <div class="am-header-left am-header-nav">
    <a href="/huiyi" class="">
      <i class="am-header-icon am-icon-home"></i>
    </a>
  </div>
  <h1 class="am-header-title">
   日常安排

  </h1>
</header>
<article data-am-widget="paragraph" class="am-paragraph am-paragraph-default"
data-am-paragraph="{ tableScrollable: true, pureview: true }">


<img src="/resources/huiyi/hyrc.png" />




</article>

<hr data-am-widget="divider" style="" class="am-divider am-divider-default"/>
<%@include file="/WEB-INF/jsp/huiyi/footer.jsp" %>

</body>
</html>