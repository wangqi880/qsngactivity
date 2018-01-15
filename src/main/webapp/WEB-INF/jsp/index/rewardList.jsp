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

        <link rel="stylesheet" href="<%= path%>/resources/layui/css/layui.css?t=1510786361436"  media="all">
        <script src="<%= path%>/resources/layui/layui.js?t=1510786361436" charset="utf-8"></script>
        <link href="<%= path%>/css/css.css" rel="stylesheet" type="text/css" />

    </head>
    <body>
    <!--banner+导航-->
    <%@include file="/WEB-INF/jsp/common/banner.jsp" %>
    <div class="nav_i">
        <div class="main juzhong">
            <ul>
                <li><a href="<%= path%>/index/indexnew.html" >首 页</a></li>
                <li><a href="<%= path%>/index/act_info.html" >活动介绍</a></li>
                <li><a href="<%= path%>/index/act_rule.html" >参赛规则</a></li>
                <li><a href="<%= path%>/index/prize_info.html">奖项设置</a></li>
                <li><a href="<%= path%>/user/upload.html" >上传作品</a></li>
                <li><a href="<%= path%>/index/rewardList" >获奖情况</a></li>
            </ul>
        </div>

    </div>

<div class="top_b">
        <div class="main mar_t_20">
            <div class="w_780 left">
                <div class="title" style="text-align: center">
                    <div>
                        <button value="6" class="layui-btn layui-btn-normal" onclick="getRewardList(this)">特等奖</button>
                        <button value="1" class="layui-btn layui-btn-normal" onclick="getRewardList(this)">一等奖</button>
                        <button value="2" class="layui-btn layui-btn-normal" onclick="getRewardList(this)">二等奖</button>
                        <button value="3" class="layui-btn layui-btn-normal" onclick="getRewardList(this)">三等奖</button>
                        <button value="4" class="layui-btn layui-btn-normal" onclick="getRewardList(this)">佳作奖</button>
                        <button value="5" class="layui-btn layui-btn-normal" onclick="getRewardList(this)">最受欢迎奖</button>
                    </div>
                </div>
                <div>${message}</div>
                <div style="margin-left: 5%">
                    <div class="layui-form">
                        <table class="layui-table">
                            <col width="100">
                            <col width="100">
                            <col width="100">
                            <col width="100">
                            <col width="50">
                            <col>
                            <thead>
                            <tr>
                                <th>账户</th>
                                <th>电话号码</th>
                                <th>作品名</th>
                                <c:if test="${type == '5'}">
                                    <th>点赞</th>
                                </c:if>
                                <%--<c:if test="${type != '5'}">
                                    <th>得分</th>
                                </c:if>--%>
                                <th>作品</th>
                            </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${data}" var="item">
                                <tr>
                                    <td>${item.username}</td>
                                    <td>*****${fn:substring(item.msisdn, 7, 11)}</td>
                                    <td>${item.imageName}</td>
                                    <c:if test="${type == '5'}">
                                        <td>${item.prizeNum}</td>
                                    </c:if>
                                   <%-- <c:if test="${type != '5'}">
                                        <td>${item.score}</td>
                                    </c:if>--%>
                                    <td><a href="<%= path%>/index/show2?id=${item.prodId}"><img src="<%= path%>/resources/upload/thumbnail/${item.newName}" /></a></td></tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <%--<c:forEach items="${page.datas}" var="item">
                        <div class="w_240 mar_r_30 left pos_r">
                            <p align="center">
                                <c:if test="${type eq 1}">
                                    <a href="<%= path%>/index/show2?id=${item.id}"><img src="<%= path%>/resources/indexPic/${item.newName}" width="215" height="170" /></a>
                                </c:if>
                                <c:if test="${type eq 2}">
                                    <a href="<%= path%>/index/show2?id=${item.id}"><img src="<%= path%>/resources/upload/thumbnail/${item.newName}" width="215" height="170" /></a>
                                </c:if>
                            </p>
                            <ul>
                                <li>${fn:substring(item.imageName, 0, 10)}</li>
                                <c:if test="${item.imageName.length()>10}">...</c:if>
                                </li>
                               <li>${item.name}</li>
                                &lt;%&ndash;<li>票数：
                                    <span id="praise-txt-${item.id}" style="color: red">${item.prizeNum}</span>
                                </li>
                                <span id="add-num-${item.id}" class="add-num" ><em>+1</em></span>&ndash;%&gt;
                            </ul>
                          &lt;%&ndash;  <div class="like pos_a">
                                <p>
                                    <img id="${item.id}" src="<%= path%>/images/like.png" style="width: auto;  height: auto; max-width: 100%;  max-height: 100%; " onclick="addPrize(this)"/>
                                </p>

                            </div>&ndash;%&gt;
                        </div>

                    </c:forEach>--%>
                    <!--分页-->
                   <%-- <div>
                        <ul class="pagination" id="page2">
                        </ul>
                        <div class="pageJump">
                            <span>跳转到</span>
                            <input type="text"/>
                            <span>页</span>
                            <button type="button" class="button">确定</button>
                        </div>
                    </div>--%>
                </div>
                <div class="no_way"></div>

                <!--分页结束-->
               <%-- <script>
                    var total = ${page.total};
                    var pageSize=${page.size};
                    var totalPage = Math.ceil(total/pageSize);
                    Page({
                        num:totalPage,					//页码数
                        startnum:${page.offset},				//指定页码
                        elem:$('#page2'),		//指定的元素
                        callback:function(n){	//回调函数
                            //这里修改分页之后重新调用首页(带分页参数)
                            location.replace("<%= path%>/index/indexnew.html?type=2&&pager.offset="+n);

                        }
                    });
                </script>--%>
            </div>

        </div>
        </div>
        <div class="no_way"></div>
        <!--footer-->
    <%@include file="/WEB-INF/jsp/common/footer.jsp" %>
    </body>
    <script>
        function getRewardList(that) {
            window.location.href="<%= path%>/index/rewardList?type="+that.value;
        }
        $(function(){
        })
    </script>
</html>
