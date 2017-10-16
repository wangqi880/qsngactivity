<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
    <head>
        <meta charset="utf-8"/>
        <title>
            Powered By redpig--<%= request.getContextPath()%>
        </title>
        <meta content="IE=edge" http-equiv="X-UA-Compatible"/>
        <meta content="width=device-width, initial-scale=1" name="viewport"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
            <link crossorigin="anonymous" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" rel="stylesheet"/>
            <link href="<%= path%>/css/style.css" rel="stylesheet" type="text/css"/>
        </meta>
    </head>
    <body>
        <img src="<%= path%>/img/headbg.jpg " style="width:100%"/>
        <header>
            <nav class="navbar navbar-default">
                <div class="container">
                    <div class="row">
                        <div class="navbar-header">
                            <button aria-expanded="false" class="navbar-toggle collapsed" data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" type="button">
                                <span class="sr-only">
                                    Toggle navigation
                                </span>
                                <span class="icon-bar">
                                </span>
                                <span class="icon-bar">
                                </span>
                                <span class="icon-bar">
                                </span>
                            </button>
                        </div>
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li class="active">
                                    <a href="#">
                                        活动首页
                                        <span class="sr-only">
                                            (current)
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        分享有奖
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        留言板
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        获奖作品
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        参赛作品
                                    </a>
                                </li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li>

                                        <c:if test="${session.getAttribute('user') !=null}">
                                            <a class="enroll" href="#">查询参赛信息 </a>
                                        </c:if>
                                    <c:if test="${session.getAttribute('user') ==null}">
                                        <a class="enroll" href="#">我要报名 </a>
                                    </c:if>

                                </li>
                                <li>
                                    <a class="enroll2" style="color: #0096ff!important" href="#">
                                        模板下载
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <!--前言开始-->
        <div class="container">

        </div>
        <!--联系我们结束-->
        <footer>
            <div class="container-fluid">
                <div class="row">
                    <div class="footer">
                        <div class="container" style="padding:10px">
                        	<img src="<%= path%>/img/foot_logo.png" />
                        	<div style="float:right;line-height:44px;color: #868c91;"><b>活动举办方：成都青少年宫</b></div>

                        </div>
                    </div>
                </div>
            </div>
            <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js">
            </script>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script crossorigin="anonymous" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js">
            </script>
        </footer>
    </body>
</html>
