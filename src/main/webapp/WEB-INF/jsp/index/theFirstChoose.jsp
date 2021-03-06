<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <!--meta引入-->
        <%@include file="/WEB-INF/jsp/common/meta.jsp" %>

        <link href="<%= path%>/css/glb1311_utf.css"  rel="stylesheet" rev="stylesheet" type="text/css" media="all" ignoreapd="false">
        <link href="<%= path%>/css/css.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="<%= path%>/css/pager/pager.css"/>
        <script type="text/javascript" src="<%= path%>/js/jquery-1.9.1.min.js" tppabs="http://www.eol.cn/js/global/jQuery_latest.min.js" ignoreapd="false"></script>
            <script type="text/javascript" src="<%= path%>/js/activity/jQuery_tabs.js" tppabs="http://www.eol.cn/js/global/jQuery_tabs.js" ignoreapd="false"></script>
            <script type="text/javascript" src="<%= path%>/js/activity/jQuery_picFocus.js" tppabs="http://www.eol.cn/js/global/jQuery_picFocus.js" ignoreapd="false" charset="utf-8"></script>
            <script type="text/javascript" src="<%= path%>/js/activity/ctrl.js" tppabs="http://pic.eol.cn/app/static/script/ctrl.js" ignoreapd="false"></script>
        <script src="<%= path%>/js/pager/pager.js"></script>
        <style type="text/css">
            *{margin: 0;padding: 0;}
        </style>
        <!--弹出层-->
        <script src="<%= path%>/resources/layer/layer.js"></script>

    </head>
    <body>
    <!--banner+导航-->
    <%@include file="/WEB-INF/jsp/common/banner.jsp" %>
    <div class="nav_i">
        <div class="main juzhong">
            <ul>
                <li><a href="<%= path%>/index/indexnew.html">首 页</a></li>
                <li><a href="<%= path%>/index/act_info.html" >活动介绍</a></li>
                <li><a href="<%= path%>/index/act_rule.html" >参赛规则</a></li>
                <li><a href="<%= path%>/index/prize_info.html" >奖项设置</a></li>
                <li><a href="<%= path%>/user/upload.html">上传作品</a></li>
                <li><a href="<%= path%>/index/rewardList" >获奖情况</a></li>
<%--
                <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>
--%>
            </ul>
        </div>

    </div>

<div class="top_b">
        <div class="main mar_t_20">
            <div class="w_780 left" style="width: 800px">
                <div class="title"><h2>
                    <span>
                    <c:if test="${isAllow !='1'}">
                        <a href="<%= path%>/index/indexnew.html?type=1"> 示范作品</a>
                        |<a href="<%= path%>/index/indexnew.html?type=2" >获奖作品</a>
                        |<a href="<%= path%>/index/theFirstChoose.html" >参赛作品</a>

                    </c:if>
                          <c:if test="${isAllow ==1}">
                              <a href="<%= path%>/index/indexnew.html?type=2" >获奖作品</a>
                              |<a href="<%= path%>/index/indexnew.html?type=1"> 示范作品</a>
                              |<a href="<%= path%>/index/theFirstChoose.html" >参赛作品</a>

                          </c:if>
                </span>
                    <a href="<%= path%>/user/upload.html">我要上传</a></h2>

                </div>
                <div>${message}</div>
                <c:forEach items="${page.datas}" var="item">
                    <div class="w_240 mar_r_30  pos_r" style="display: inline-block">
                        <p align="center">
                          <a href="<%= path%>/index/show2?id=${item.prodId}"><img src="<%= path%>/resources/upload/thumbnail/${item.newName}" width="215"/></a>
                        </p>
                        <ul>

                            <c:if test="${item.userId == loginUser.id}">
                                <li  style="color: red">${fn:substring(item.imageName, 0, 10)}
                                    <c:if test="${item.imageName.length()>10}">...
                                    </c:if>
                                    <span style="margin-left: 10px">编号:${item.prodId}</span>
                                </li>
                            </c:if>
                            <c:if test="${item.userId != loginUser.id}">
                                <li>
                                        ${fn:substring(item.imageName, 0, 10)}
                                            <c:if test="${item.imageName.length()>10}">...</c:if>
                                    <span style="margin-left: 10px">编号:${item.prodId}</span>
                                </li>
                            </c:if>
                           <%-- <c:if test="${item.userId == loginUser.id}">
                                <li  style="color: red">${item.name}</li>
                            </c:if>
                            <c:if test="${item.userId != loginUser.id}">
                                <li>${item.name}</li>
                            </c:if>--%>

                            <li>票数：
                                <span id="praise-txt-${item.prodId}" style="color: red">${item.prizeNum}</span>
                            </li>
                            <span id="add-num-${item.prodId}" class="add-num" ><em>+1</em></span>
                        </ul>
                        <div class="like pos_a">
                            <p>
                                <img id="${item.prodId}" src="<%= path%>/images/like.png" style="width: auto;  height: auto; max-width: 100%;  max-height: 100%; " onclick="addPrize(this)"/>
                            </p>

                        </div>
                        <%--<div class="like pos_a">
                            <p>
                                <img id="${item.id}" src="<%= path%>/images/like.png" style="width: auto;  height: auto; max-width: 100%;  max-height: 100%; " onclick="addPrize(this)"/>
                            </p>

                        </div>--%>
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
                            location.replace("<%= path%>/index/theFirstChoose.html?pager.offset="+n);

                        }
                    });
                </script>
            </div>

    <div class="right w_280">
    <div class="title"><h3>人气榜</h3></div>
            <table width="300" border="0" cellspacing="0" cellpadding="0" align="center" class="border mar_t_30 line_24 font_14">
                <tr>
                    <td width="10%" height="30" align="center" valign="middle" bgcolor="#64b3ee" class="white">排名</td>
                    <td width="35%" align="left" valign="middle" bgcolor="#64b3ee" class="white">作品名称</td>
                    <td width="25%" align="left" valign="middle" bgcolor="#64b3ee" class="white">作者</td>
                    <td width="20%" align="center" valign="middle" bgcolor="#64b3ee" class="white">票数</td>
                    <td width="10%" align="center" valign="middle" bgcolor="#64b3ee" class="white">编号</td>
                </tr>
                <c:forEach items="${renqi.datas}" var="item" varStatus="status">
                    <tr>
                        <td width="10%" height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>${status.index+1}</em></td>
                        <td width="30%" align="left" valign="middle" bgcolor="#F4F4F4">
                           <c:if test="${item.imageName.length()>6}"><a title="${item.imageName}"> ${fn:substring(item.imageName, 0, 6)}...</a></c:if>
                            <c:if test="${item.imageName.length()<=6}"><a title="${item.imageName}"> ${item.imageName}</a></c:if>

                        </td>
                        <td width="30%" align="left" valign="middle" bgcolor="#F4F4F4">
                            <c:if test="${item.name.length()>6}"> ${fn:substring(item.name, 0, 6)}...</c:if>
                            <c:if test="${item.name.length()<=6}">  ${item.name}</c:if>

                        </td>
                        <td width="20%" align="center" valign="middle" bgcolor="#F4F4F4"><i>${item.prizeNum}</i></td>
                        <td width="10%" align="center" valign="middle" bgcolor="#F4F4F4">${item.prodId}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>

        </div>
        </div>
        <div class="no_way"></div>
        <!--footer-->
    <%@include file="/WEB-INF/jsp/common/footer.jsp" %>

    </body>
    <script>

        function addPrize(which){
            var id = $(which).attr("id");
            $.get("<%= path%>/index/user_add_prize",{"id":id},function (result) {
                <!--可以操作,操作成功-->
                if(result.code=="000000"){
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
                    layer.confirm(result.info+",进入登录页面", function () {
                        window.location.href="<%=path %>/login/login.html";
                    }, function () {
                    });
                    return;
                }
                <!--今天已经操作-->
                if(result.code=="000002"){
                    layer.msg(result.info);
                    return;
                }
                <!--不能点赞-->
                if(result.code=="000003"){
                    layer.msg(result.info);
                    return;
                }
            })
        }

        $(function(){
        })
    </script>
</html>
