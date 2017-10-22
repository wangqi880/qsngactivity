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
        <link href="<%= path%>/css/glb1311_utf.css"  rel="stylesheet" rev="stylesheet" type="text/css" media="all" ignoreapd="false">
        <link href="<%= path%>/css/css.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="<%= path%>/css/pager/pager.css"/>
        <script type="text/javascript" src="<%= path%>/js/jquery-1.9.1.min.js" tppabs="http://www.eol.cn/js/global/jQuery_latest.min.js" ignoreapd="false"></script>
            <script type="text/javascript" src="<%= path%>/js/activity/jQuery_tabs.js" tppabs="http://www.eol.cn/js/global/jQuery_tabs.js" ignoreapd="false"></script>
            <script type="text/javascript" src="<%= path%>/js/activity/jQuery_picFocus.js" tppabs="http://www.eol.cn/js/global/jQuery_picFocus.js" ignoreapd="false" charset="utf-8"></script>
            <script type="text/javascript" src="<%= path%>/js/activity/ctrl.js" tppabs="http://pic.eol.cn/app/static/script/ctrl.js" ignoreapd="false"></script>
        <script src="<%= path%>/js/pager/pager.js"></script>

    </head>
    <body>
<div class="top_i" style="background:url(<%= path%>/images/top_i.jpg) no-repeat center top;"><h1 class="hide">摄影大赛</h1></div>
<div class="nav_i">
	<div class="main">
    <ul>
        <li class="bg_ii">首 页</li>
        <li><a href="<%= path%>/index/act_info.html" >活动介绍</a></li>
        <li><a href="<%= path%>/index/act_rule.html" >参赛规则</a></li>
        <li><a href="<%= path%>/index/prize_info.html">奖项设置</a></li>
        <li><a href="<%= path%>/user/showproduct.html" >作品展示</a></li>
        <li><a href="<%= path%>/user/upload.html" >上传作品</a></li>
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

                <c:forEach items="${page.datas}" var="item">
                    <div class="w_240 mar_r_30 left pos_r">
                        <p align="center">
                            <a href=""><img src="<%= path%>/resources/upload/thumbnail/${item.newName}" width="215" height="170" /></a>
                        </p>
                        <ul>
                            <li>${item.imageName}</li>
                           <li>${item.name}</li>
                            <li>票数：
                                <span id="praise-txt-${item.id}" style="color: red">${item.score}</span>
                            </li>
                            <span id="add-num-${item.id}" class="add-num" ><em>+1</em></span>
                        </ul>
                        <div class="like pos_a">
                            <p>
                                <img id="${item.id}" src="<%= path%>/images/like.png" width="70" height="25" onclick="addPrize(this)"/>
                            </p>

                        </div>
                    </div>

                </c:forEach>
                <div class="no_way"></div>
                <!--分页-->
                <div>
                    <ul class="pagination" id="page2">
                    </ul>
                    <div class="pageJump">
                        <span>跳转到</span>
                        <input type="text"/>
                        <span>页</span>
                        <button type="button" class="button">确定</button>
                    </div>
                </div>
                <!--分页结束-->
                <script>
                    var total = ${page.total};
                    var pageSize=${page.size};
                    var totalPage = Math.ceil(total/pageSize);
                    Page({
                        num:totalPage,					//页码数
                        startnum:${page.offset},				//指定页码
                        elem:$('#page2'),		//指定的元素
                        callback:function(n){	//回调函数
                            //这里修改分页之后重新调用首页(带分页参数)
                            location.replace("<%= path%>/index/indexnew.html?pager.offset="+n);

                        }
                    });
                </script>
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
    <script>

        function addPrize(which){
            var id = $(which).attr("id");
            $.get("<%= path%>/index/add_prize",{"id":id},function (result) {
                <!--可以操作,操作成功-->
                if(result.code=="000000"){
                    /*alert(result.info);*/
                    var text_box = $("#add-num-"+id);
                    var praise_txt = $("#praise-txt-"+id);
                    var num=parseInt(praise_txt.text());

                    praise_txt.addClass("hover");
                    text_box.show().html("<em class='add-animation'>+1</em>");
                    $(".add-animation").addClass("hover");
                    num +=1;
                    praise_txt.text(num)
                    return;
                }
                <!--未登录-->
                if(result.code=="000001"){
                    alert(result.info);
                    window.location.href="/qsngactivity/login/login.html";
                    return;
                }
                <!--今天已经操作-->
                if(result.code=="000002"){
                    alert(result.info);
                    return;
                }

            })
        }

        $(function(){


                <!--点赞-->
          /*  $("#praise").click(function(){
                var praise_img = $("#praise-img");
                var text_box = $("#add-num");
                var praise_txt = $("#praise-txt");
                var num=parseInt(praise_txt.text());

                if(praise_img.attr("src") == ("Images/yizan.png")){
                    $(this).html("<img src='Images/zan.png' id='praise-img' class='animation' />");
                    praise_txt.removeClass("hover");
                    text_box.show().html("<em class='add-animation'>-1</em>");
                    $(".add-animation").removeClass("hover");
                    num -=1;
                    praise_txt.text(num)
                }else{
                    $(this).html("<img src='Images/yizan.png' id='praise-img' class='animation' />");
                    praise_txt.addClass("hover");
                    text_box.show().html("<em class='add-animation'>+1</em>");
                    $(".add-animation").addClass("hover");
                    num +=1;
                    praise_txt.text(num)
                }
            });*/
        })
    </script>
</html>
