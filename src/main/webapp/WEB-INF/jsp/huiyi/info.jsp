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
    成都市青少年宫简介
  </h1>
</header>
<article data-am-widget="paragraph" class="am-paragraph am-paragraph-default"
data-am-paragraph="{ tableScrollable: true, pureview: true }">

<p>
  <strong>砥砺奋进六十载，童梦飞扬新时代--成都市青少年宫简介
</strong>
</p>

  <p>
    &nbsp;&nbsp;&nbsp;&nbsp;成都市青少年宫始建于一九五八年，当时名称为“成都市少年之家”，一九八三年二月正式定名为青少年宫，是具有六十年悠久历史的青少年校外教育、活动阵地。
  </p>
  <p>
    &nbsp;&nbsp;&nbsp;&nbsp;在成都市历届市委、市政府的关怀下，成都市青少年宫已建设形成“一宫多区”、“三校六部”的工作格局。全宫占地面积约230亩，建筑使用面积约5.3万平方米。拥有近300名职工，开展美术、书法、舞蹈、音乐、语言表演、体育、科技、外语、文化、社会实践、营地教育、生命安全教育等十二大类80多个项目的素质培训、兴趣活动和公益服务；2017年培训人数8.8万人次，全年共开展各类公益活动406场，总参与人数达到36万人次，充分发挥了成都市青少年素质教育基地、全国青少年校外活动示范基地作用。
  </p>
  <p>
    &nbsp;&nbsp;&nbsp;&nbsp;2017年12月，伴随成都市青少年宫锦城公园校区启动，成都市青少年宫校区均衡分布于城市核心区域各个方向，更便利地为青少年提供更为公平、优质的校外教育。各校区在全方位提供综合性校外教育服务的基础上，致力于打造具有不同特色项目和文化环境的校外教育阵地。
  </p>
  <p>
    &nbsp;&nbsp;&nbsp;&nbsp;进入新时期，成都市青少年宫以习近平新时代中国特色社会主义思想为指导，全面学习贯彻党的十九大精神，加强青少年社会主义核心价值观教育，深入开展青少年社会教育研究与实践，坚持公益导向，坚持立德树人，面向社会广泛开展青少年素质教育和实践活动，努力培养和发展青少年核心素养。在实践中，青少年宫全体教职工齐力奋进，进一步强化场地建设、制度建设、队伍建设、品牌建设、文化建设，下大力气规范办学行为，倡导校外教育理念不断创新和转变，为青少年宫转型升级，实现新跨越发展奠定了更加坚实的基础。
  </p>
  <img src="/resources/huiyi/info.jpg">
</article>

<hr data-am-widget="divider" style="" class="am-divider am-divider-default"/>
<%@include file="/WEB-INF/jsp/huiyi/footer.jsp" %>
</body>
</html>