<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>最美校园摄影大赛—网络图片征集活动—中国教育在线</title>
        <meta name="keywords" content="中国教育在线,摄影大赛,网络图片征集活动" />
        <meta name="description" content="最美校园摄影大赛—网络图片征集活动—中国教育在线" />
        <meta name="copyright" content="www.eol.cn" />
        <meta content="all" name="robots" />
        <link href="<%= path%>/css/glb1311_utf.css" tppabs="http://www.eol.cn/css/cer.net/2011/glb1311_utf.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" ignoreapd="false">
        <link href="<%= path%>/css/css.css" tppabs="http://pic.eol.cn/app/static/css/css.css" rel="stylesheet" type="text/css" />
            <%--<link href="css.css" tppabs=<%= path%>/css/css.css" rel="stylesheet" type="text/css" />--%>
            <script type="text/javascript" src="<%= path%>/js/jquery-1.9.1.min.js" tppabs="http://www.eol.cn/js/global/jQuery_latest.min.js" ignoreapd="false"></script>
            <script type="text/javascript" src="<%= path%>/js/activity/jQuery_tabs.js" tppabs="http://www.eol.cn/js/global/jQuery_tabs.js" ignoreapd="false"></script>
            <script type="text/javascript" src="<%= path%>/js/activity/jQuery_picFocus.js" tppabs="http://www.eol.cn/js/global/jQuery_picFocus.js" ignoreapd="false" charset="utf-8"></script>
            <script type="text/javascript" src="<%= path%>/js/activity/ctrl.js" tppabs="http://pic.eol.cn/app/static/script/ctrl.js" ignoreapd="false"></script>
<!--
            <base  target="_blank"/>
-->
    </head>
    <body>
<div class="top_i" style="background:url(<%= path%>/images/top_i.jpg) no-repeat center top;"><h1 class="hide">摄影大赛</h1></div>
<div class="nav_i">
	<div class="main">
    <ul>
        <li class="bg_ii">首 页</li>
        <li><a href="<%= path%>/index/act_info.html" tppabs="http://pic.eol.cn/picture/act_info">活动介绍</a></li>
        <li><a href="<%= path%>/index/act_rule.html" tppabs="http://pic.eol.cn/picture/act_rule">参赛规则</a></li>
        <li><a href="<%= path%>/index/prize_info.html" tppabs="http://pic.eol.cn/picture/prize_info">奖项设置</a></li>
        <li><a href="<%= path%>/user/showproduct.html" tppabs="http://pic.eol.cn/picture/take_in">作品展示</a></li>
        <li><a href="<%= path%>/user/upload.html" tppabs="http://pic.eol.cn/picture/upload">上传作品</a></li>
        <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>
    </ul>
    </div>

</div>
<div class="top_b">
        <div class="main">
            <div class="w_780 left">
                <div class="title"><h2>
                    <span>
                    |<a href="javascript:if(confirm('http://pic.eol.cn/picture/lists?order_by=new&shtype=2 '))window.location='http://pic.eol.cn/picture/lists?order_by=new&shtype=2'">青少年宫</a>
                    |<a href="javascript:if(confirm('http://pic.eol.cn/picture/lists?order_by=new&shtype=3 '))window.location='http://pic.eol.cn/picture/lists?order_by=new&shtype=3'" >用户</a>
                </span>
                    <a href="<%= path%>/user/upload.html">我要上传</a></h2></div>
                
                                <div class="w_240 mar_r_30 left pos_r">
                    <p align="center">
                        <a href=""><img src="1429459987-33051.jpg" width="215" height="170" /></a></p>
                    <ul>
                        <li>山色空蒙雨亦奇</li>
                        <li>作者：郭晓怡</li>
                        <li>学校：河北民族师范学院</li>
                        <li>票数：<em id="vote3763">73</em></li>
                    </ul>
                    <div class="like pos_a">
                        <p><a href="javascript:postVote(pid=3763);"><img id ='like3763' src="like.png" tppabs="http://pic.eol.cn/app/static/images/like.png" width="75" height="25" /></a></p>
                    </div>
                </div>
                                <div class="w_240 mar_r_30 left pos_r">
                    <p align="center">
                        <a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3762&shtype=1  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3762&shtype=1#top'" tppabs="http://pic.eol.cn/picture/show?pid=3762&shtype=1#top"><img src="1429459374-75451.jpg" tppabs="http://pic.eol.cn/app/upload/image/346971/1429459374-75451.jpg" width="215" height="170" /></a></p>
                    <ul>
                        <li>薪火相传</li>
                        <li>作者：郭晓怡</li>
                        <li>学校：河北民族师范学院</li>
                        <li>票数：<em id="vote3762">79</em></li>
                    </ul>
                    <div class="like pos_a">
                        <p><a href="javascript:postVote(pid=3762);"><img id ='like3762' src="like.png" tppabs="http://pic.eol.cn/app/static/images/like.png" width="75" height="25" /></a></p>
                    </div>
                </div>
                                <div class="w_240 mar_r_30 left pos_r">
                    <p align="center">
                        <a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3761&shtype=2  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3761&shtype=2#top'" tppabs="http://pic.eol.cn/picture/show?pid=3761&shtype=2#top"><img src="1429459235-945415.jpg" tppabs="http://pic.eol.cn/app/upload/image/349153/1429459235-945415.jpg" width="215" height="170" /></a></p>
                    <ul>
                        <li>静谧6</li>
                        <li>作者：黄颖</li>
                        <li>学校：厦门市集美中学</li>
                        <li>票数：<em id="vote3761">1543</em></li>
                    </ul>
                    <div class="like pos_a">
                        <p><a href="javascript:postVote(pid=3761);"><img id ='like3761' src="like.png" tppabs="http://pic.eol.cn/app/static/images/like.png" width="75" height="25" /></a></p>
                    </div>
                </div>
                                <div class="w_240 mar_r_30 left pos_r">
                    <p align="center">
                        <a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3760&shtype=2  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3760&shtype=2#top'" tppabs="http://pic.eol.cn/picture/show?pid=3760&shtype=2#top"><img src="1429459235-945414.jpg" tppabs="http://pic.eol.cn/app/upload/image/349153/1429459235-945414.jpg" width="215" height="170" /></a></p>
                    <ul>
                        <li>静谧5</li>
                        <li>作者：黄颖</li>
                        <li>学校：厦门市集美中学</li>
                        <li>票数：<em id="vote3760">1199</em></li>
                    </ul>
                    <div class="like pos_a">
                        <p><a href="javascript:postVote(pid=3760);"><img id ='like3760' src="like.png" tppabs="http://pic.eol.cn/app/static/images/like.png" width="75" height="25" /></a></p>
                    </div>
                </div>
                                <div class="w_240 mar_r_30 left pos_r">
                    <p align="center">
                        <a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3759&shtype=2  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3759&shtype=2#top'" tppabs="http://pic.eol.cn/picture/show?pid=3759&shtype=2#top"><img src="1429459235-945413.jpg" tppabs="http://pic.eol.cn/app/upload/image/349153/1429459235-945413.jpg" width="215" height="170" /></a></p>
                    <ul>
                        <li>静谧4</li>
                        <li>作者：黄颖</li>
                        <li>学校：厦门市集美中学</li>
                        <li>票数：<em id="vote3759">1213</em></li>
                    </ul>
                    <div class="like pos_a">
                        <p><a href="javascript:postVote(pid=3759);"><img id ='like3759' src="like.png" tppabs="http://pic.eol.cn/app/static/images/like.png" width="75" height="25" /></a></p>
                    </div>
                </div>
                                <div class="w_240 mar_r_30 left pos_r">
                    <p align="center">
                        <a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3758&shtype=2  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3758&shtype=2#top'" tppabs="http://pic.eol.cn/picture/show?pid=3758&shtype=2#top"><img src="1429459235-945412.jpg" tppabs="http://pic.eol.cn/app/upload/image/349153/1429459235-945412.jpg" width="215" height="170" /></a></p>
                    <ul>
                        <li>静谧3</li>
                        <li>作者：黄颖</li>
                        <li>学校：厦门市集美中学</li>
                        <li>票数：<em id="vote3758">1222</em></li>
                    </ul>
                    <div class="like pos_a">
                        <p><a href="javascript:postVote(pid=3758);"><img id ='like3758' src="like.png" tppabs="http://pic.eol.cn/app/static/images/like.png" width="75" height="25" /></a></p>
                    </div>
                </div>
                                <div class="w_240 mar_r_30 left pos_r">
                    <p align="center">
                        <a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3757&shtype=2  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3757&shtype=2#top'" tppabs="http://pic.eol.cn/picture/show?pid=3757&shtype=2#top"><img src="1429459235-945411.jpg" tppabs="http://pic.eol.cn/app/upload/image/349153/1429459235-945411.jpg" width="215" height="170" /></a></p>
                    <ul>
                        <li>静谧2</li>
                        <li>作者：黄颖</li>
                        <li>学校：厦门市集美中学</li>
                        <li>票数：<em id="vote3757">1175</em></li>
                    </ul>
                    <div class="like pos_a">
                        <p><a href="javascript:postVote(pid=3757);"><img id ='like3757' src="like.png" tppabs="http://pic.eol.cn/app/static/images/like.png" width="75" height="25" /></a></p>
                    </div>
                </div>
                                <div class="w_240 mar_r_30 left pos_r">
                    <p align="center">
                        <a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3756&shtype=2  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3756&shtype=2#top'" tppabs="http://pic.eol.cn/picture/show?pid=3756&shtype=2#top"><img src="1429459235-94541.jpg" tppabs="http://pic.eol.cn/app/upload/image/349153/1429459235-94541.jpg" width="215" height="170" /></a></p>
                    <ul>
                        <li>静谧</li>
                        <li>作者：黄颖</li>
                        <li>学校：厦门市集美中学</li>
                        <li>票数：<em id="vote3756">1184</em></li>
                    </ul>
                    <div class="like pos_a">
                        <p><a href="javascript:postVote(pid=3756);"><img id ='like3756' src="like.png" tppabs="http://pic.eol.cn/app/static/images/like.png" width="75" height="25" /></a></p>
                    </div>
                </div>
                                <div class="w_240 mar_r_30 left pos_r">
                    <p align="center">
                        <a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3755&shtype=1  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3755&shtype=1#top'" tppabs="http://pic.eol.cn/picture/show?pid=3755&shtype=1#top"><img src="1429459054-80706.jpg" tppabs="http://pic.eol.cn/app/upload/image/346971/1429459054-80706.jpg" width="215" height="170" /></a></p>
                    <ul>
                        <li>越夜越青春</li>
                        <li>作者：郭晓怡</li>
                        <li>学校：河北民族师范学院</li>
                        <li>票数：<em id="vote3755">52</em></li>
                    </ul>
                    <div class="like pos_a">
                        <p><a href="javascript:postVote(pid=3755);"><img id ='like3755' src="like.png" tppabs="http://pic.eol.cn/app/static/images/like.png" width="75" height="25" /></a></p>
                    </div>
                </div>
                                <div class="w_240 mar_r_30 left pos_r">
                    <p align="center">
                        <a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3754&shtype=1  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3754&shtype=1#top'" tppabs="http://pic.eol.cn/picture/show?pid=3754&shtype=1#top"><img src="1429458972-963595.jpg" tppabs="http://pic.eol.cn/app/upload/image/348893/1429458972-963595.jpg" width="215" height="170" /></a></p>
                    <ul>
                        <li>魅蓝</li>
                        <li>作者：吴琛</li>
                        <li>学校：长安大学</li>
                        <li>票数：<em id="vote3754">24</em></li>
                    </ul>
                    <div class="like pos_a">
                        <p><a href="javascript:postVote(pid=3754);"><img id ='like3754' src="like.png" tppabs="http://pic.eol.cn/app/static/images/like.png" width="75" height="25" /></a></p>
                    </div>
                </div>
                                <div class="w_240 mar_r_30 left pos_r">
                    <p align="center">
                        <a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3753&shtype=1  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3753&shtype=1#top'" tppabs="http://pic.eol.cn/picture/show?pid=3753&shtype=1#top"><img src="1429458972-963594.jpg" tppabs="http://pic.eol.cn/app/upload/image/348893/1429458972-963594.jpg" width="215" height="170" /></a></p>
                    <ul>
                        <li>关照</li>
                        <li>作者：吴琛</li>
                        <li>学校：长安大学</li>
                        <li>票数：<em id="vote3753">28</em></li>
                    </ul>
                    <div class="like pos_a">
                        <p><a href="javascript:postVote(pid=3753);"><img id ='like3753' src="like.png" tppabs="http://pic.eol.cn/app/static/images/like.png" width="75" height="25" /></a></p>
                    </div>
                </div>
                                <div class="w_240 mar_r_30 left pos_r">
                    <p align="center">
                        <a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3752&shtype=1  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3752&shtype=1#top'" tppabs="http://pic.eol.cn/picture/show?pid=3752&shtype=1#top"><img src="1429458972-963593.jpg" tppabs="http://pic.eol.cn/app/upload/image/348893/1429458972-963593.jpg" width="215" height="170" /></a></p>
                    <ul>
                        <li>发如丝</li>
                        <li>作者：吴琛</li>
                        <li>学校：长安大学</li>
                        <li>票数：<em id="vote3752">27</em></li>
                    </ul>
                    <div class="like pos_a">
                        <p><a href="javascript:postVote(pid=3752);"><img id ='like3752' src="like.png" tppabs="http://pic.eol.cn/app/static/images/like.png" width="75" height="25" /></a></p>
                    </div>
                </div>
                                
                
                <div class="no_way"></div>

            </div>
            <div class="right w_280">
    <div class="title"><a href="javascript:if(confirm('http://pic.eol.cn/picture/lists?order_by=hot&shtype=all  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/lists?order_by=hot&shtype=all'" tppabs="http://pic.eol.cn/picture/lists?order_by=hot&shtype=all"><h3>人气榜</h3></a></div>
    <table width="278" border="0" cellspacing="0" cellpadding="0" align="center" class="border mar_t_30 line_24 font_14">
  <tr>
    <td width="38" height="30" align="center" valign="middle" bgcolor="#FB923F" class="white">排名</td>
    <td width="122" align="" valign="middle" bgcolor="#FB923F" class="white">作品名称</td>
    <td width="75" align="" valign="middle" bgcolor="#FB923F" class="white">作者</td>
    <td width="41" align="" valign="middle" bgcolor="#FB923F" class="white">票数</td>
  </tr>
      <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>1</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1184&shtype=1&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1184&shtype=1&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1184&shtype=1&order_by=hot#top">奋斗的青春最美丽</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">罗江勇</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>139475</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>2</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1619&shtype=1&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1619&shtype=1&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1619&shtype=1&order_by=hot#top">鸟约校枝头1</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">江薇薇</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>119388</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>3</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1747&shtype=2&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1747&shtype=2&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1747&shtype=2&order_by=hot#top">飞阁流丹</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">丁宇明</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>113188</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>4</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3245&shtype=1&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3245&shtype=1&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=3245&shtype=1&order_by=hot#top">翠幕风帘</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">陈斌</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>105142</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>5</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=2807&shtype=1&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=2807&shtype=1&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=2807&shtype=1&order_by=hot#top">青春的力量</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">朱兆成</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>76302</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>6</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1748&shtype=2&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1748&shtype=2&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1748&shtype=2&order_by=hot#top">隐秘之美</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">丁宇明</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>74253</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>7</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1514&shtype=2&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1514&shtype=2&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1514&shtype=2&order_by=hot#top">探索</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">丁宇明</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>73880</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>8</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1512&shtype=2&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1512&shtype=2&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1512&shtype=2&order_by=hot#top">奋读</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">丁宇明</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>69755</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>9</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1854&shtype=1&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1854&shtype=1&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1854&shtype=1&order_by=hot#top">春来花开人笑</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">吴迪</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>67370</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>10</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1516&shtype=2&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1516&shtype=2&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1516&shtype=2&order_by=hot#top">生</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">丁宇明</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>60025</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>11</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1621&shtype=1&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1621&shtype=1&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1621&shtype=1&order_by=hot#top">鸟约校枝头3</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">江薇薇</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>29508</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>12</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1620&shtype=1&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1620&shtype=1&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1620&shtype=1&order_by=hot#top">鸟约校枝头2</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">江薇薇</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>29436</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>13</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1515&shtype=2&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1515&shtype=2&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1515&shtype=2&order_by=hot#top">壁</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">丁宇明</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>26885</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>14</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=352&shtype=1&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=352&shtype=1&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=352&shtype=1&order_by=hot#top">书中自有黄金屋</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">陈锋</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>25766</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>15</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1749&shtype=2&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1749&shtype=2&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1749&shtype=2&order_by=hot#top">交流</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">丁宇明</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>22825</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>16</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=1513&shtype=2&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=1513&shtype=2&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=1513&shtype=2&order_by=hot#top">光影视角</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">丁宇明</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>21868</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>17</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=2804&shtype=1&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=2804&shtype=1&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=2804&shtype=1&order_by=hot#top">朗润花景</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">朱兆成</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>21821</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>18</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3522&shtype=1&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3522&shtype=1&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=3522&shtype=1&order_by=hot#top">1976年PK...</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">吴悠</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>20996</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>19</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=3523&shtype=1&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=3523&shtype=1&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=3523&shtype=1&order_by=hot#top">1976年7月...</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">吴悠</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>18980</i></td>
  </tr>
    <tr>
    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>20</em></td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=281&shtype=2&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=281&shtype=2&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=281&shtype=2&order_by=hot#top">巴渝名校</a></td>
    <td align="" valign="middle" bgcolor="#F4F4F4">王世冲</td>
    <td align="" valign="middle" bgcolor="#F4F4F4"><i>18909</i></td>
  </tr>
    </table>
</div>



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
                <a href="javascript:if(confirm('http://pic.eol.cn/html/cer.net/jj.htm  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/html/cer.net/jj.htm'" tppabs="http://pic.eol.cn/html/cer.net/jj.htm">eol.cn简介</a>  | <a href="javascript:if(confirm('http://pic.eol.cn/html/cer.net/lx.htm  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/html/cer.net/lx.htm'" tppabs="http://pic.eol.cn/html/cer.net/lx.htm">联系方式</a> | <a href="javascript:if(confirm('http://pic.eol.cn/html/cer.net/sm.htm  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/html/cer.net/sm.htm'" tppabs="http://pic.eol.cn/html/cer.net/sm.htm">网站声明</a> | <a href="javascript:if(confirm('http://pic.eol.cn/html/cer.net/zhaopinxinxi.htm  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/html/cer.net/zhaopinxinxi.htm'" tppabs="http://pic.eol.cn/html/cer.net/zhaopinxinxi.htm">招聘信息</a> | <a href="javascript:if(confirm('http://www.miibeian.gov.cn/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.miibeian.gov.cn/'" tppabs="http://www.miibeian.gov.cn/">京ICP备12045350号-1</a> | <a href="javascript:if(confirm('http://img.eol.cn/images/indexnew/www1024.jpg  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://img.eol.cn/images/indexnew/www1024.jpg'" tppabs="http://img.eol.cn/images/indexnew/www1024.jpg">文网文[2008]228号</a> |  <a href="javascript:void(0)">京公网安备110108902063号</a><br />
                版权所有 <a href="javascript:if(confirm('http://www.cernet.com/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.cernet.com/'" tppabs="http://www.cernet.com/">赛尔网络有限公司
                    CERNET Corporation</a><br />
                Mail to: <a href="mailto:webmaster@cernet.com">webmaster@cernet.com</a>
            </div>
        </div>
    </body>
</html>
