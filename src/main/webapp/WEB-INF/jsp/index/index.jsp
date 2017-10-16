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
            <div class="first">
                <h2>
                    【前言】
                </h2>
            </div>
            <div class="col-sm-3">
                <img src="<%= path%>/img/1.png"/>
            </div>
            <div class="col-sm-9">
                <span class="qy-content">
                    <ul>
                        <li>
                            一把折扇，细密丝绢；山水绵延，风雅内敛；摇曳不断，清风无限。在古代，折扇不仅仅是在炎炎酷暑中送来阵阵清风的消暑利器，更是众多文人骚客彰显风雅气度的随身物件。
                        </li>
                        <li>
                            如今，吹空调多过摇扇子，忘记了身体才是生活的本钱。平日里，看惯了领导脸色，受尽了甲方刁难，疲惫的灵魂在艰难中残喘，“雅致”离我们渐行渐远。
                        </li>
                        <li>
                            设计师的生活本就如此？心里一万个不甘，工作或许无法改变，但生活可以加料。
                        </li>
                        <li>
                            昵图网第六届设计师节即将到来，不如暂且抛开烦恼，学学古人的风雅，在自己的节日里，绘制一把属于自己独一无二的折扇，沉醉于摇曳之间。
                        </li>
                        <li>
                            本届设计比赛的设计对象是折扇的扇面，分男款和女款，等你来参赛！Come on,baby！
                        </li>
                    </ul>
                </span>
            </div>
        </div>
        <!--前言结束-->
        <!--活动对象开始-->
        <div class="container">
            <div class="first">
                <h2>
                    【活动对象】
                </h2>
            </div>
            <p class="f16">
                凡拥有昵图网账号的用户，均可参与。
            </p>
        </div>
        <!--活动对象结束-->
        <!--活动时间开始-->
        <div class="container">
            <div class="first">
                <h2>
                    【活动时间】
                </h2>
            </div>
            <div class="text-center timeline"><img src="<%= path%>/img/timeline.png" /></div>
            <p style="padding:10px 0">
                *注：具体时间可能根据比赛情况进行微调，若有变动，将提前发布公告。
            </p>
        </div>
        <!--活动时间结束-->
        <!--奖励设置开始-->
        <div class="container">
            <div class="first">
                <h2>
                    【奖励设置】
                </h2>
            </div>
            <div class="row">
                <div class="text-center">
                    <img src="<%= path%>/img/design1.png"/>
                </div>
            </div>
            <div class=" setting-first">
                <div>
                    <p class="text-center title-content">
                        <b>
                            1000元现金+黄金VIP会员
                        </b>
                        +20万共享分+成品男扇4把+成品女扇4把+昵图网荣誉证书一本
                    </p>
                    <p class="mt20 tip text-center">
                        * 注：男扇和女扇将各选出1幅优秀设计作品，若均为同一人设计，则上述奖励归一人所有；
                    </p>
                    <p class="mt20 tip text-center">
                        若男扇、女扇获奖者并非同一人，则各自获得500元现金+黄金vip会员+成品男、女扇子各2把+昵图网荣誉证书一本
                    </p>
                </div>
            </div>
            <div class="second-main">
                <div class="col-sm-5 col-xs-12">
                    <div class="text-center">
                        <img src="<%= path%>/img/design2.png">
                        </img>
                    </div>
                    <div class="setting-second">
                        <div class="second-content">
                            <p class="f16">
                                <b>
                                    奖励50元话费充值
                                </b>
                            </p>
                            <p class="f16">
                                <b>
                                    VIP会员
                                </b>
                            </p>
                            <p class="f16">
                                1万共享分
                            </p>
                            <p class="f16">
                                成品折扇一把（男、女款任选其一）
                            </p>
                            <p class="f16">
                                昵图网荣誉证书一本
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5 col-sm-offset-2 col-xs-12">
                    <div class="text-center">
                        <img src="<%= path%>/img/design2.png">
                        </img>
                    </div>
                    <div class="setting-second">
                        <div class="second-content">
                            <p class="f16">
                                <b>
                                    奖励50元话费充值
                                </b>
                            </p>
                            <p class="f16">
                                <b>
                                    VIP会员
                                </b>
                            </p>
                            <p class="f16">
                                1万共享分
                            </p>
                            <p class="f16">
                                成品折扇一把（男、女款任选其一）
                            </p>
                            <p class="f16">
                                昵图网荣誉证书一本
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--奖励设置结束-->
        <!--参赛说明开始-->
        <div class="container">
            <div class="first">
                <h2>
                    【参赛说明】
                </h2>
            </div>
            <div class="col-sm-12">
                <span class="qy-content2">
                    <ul>
                        <li>
                            1、设计内容：男折扇和女折扇的扇面图案，内容不限，但作品须具备一定感染力和独创性，不落俗套，能让观者产生共鸣更佳。在适当位置放昵图网logo+设计师节logo，扇面或扇骨上均可。
                        </li>
                        <li>
                            2、
                            <b>
                                特别提醒
                            </b>
                            ：请勿使用/临摹/修改他人创作的美术作品（工笔画、国画等）参赛，不但参赛无效，还将按提交非原创作品进行处罚。如果是自己的原创绘画作品，注意绘图过程中拍照留底，在提交参赛作品时附上绘画过程，否则参赛无效。
                        </li>
                        <li>
                            3、参赛要求：男扇和女扇的扇面可任选其一设计，也可两款都设计，但男扇、女扇须分开提交，每款扇面每位会员最多可提交三幅作品参赛，超出无效。
                        </li>
                        <li>
                            4、作品要求：1）尺寸请下载扇形尺寸的源文件；2）设计文件限PSD、AI、CDR格式；3）所包含图片分辨率应≥300dpi；
                        </li>
                        <li>
                            5、版权要求：参赛作品必须为上传者本人原创设计作品，禁止使用非原创素材。作品内容必须符合国家法律法规的要求，且不得侵犯他人合法权利
                        </li>
                        <li>
                            6、参赛模版：参赛作品必须使用本次活动专用模板进行设计（
                            <a href="#">
                                <b>
                                    点击下载比赛模版
                                </b>
                            </a>
                            ）；
                        </li>
                    </ul>
                </span>
            </div>
        </div>
        <!--参赛说明结束-->
        <!--评选要求开始-->
        <div class="container">
            <div class="first">
                <h2>
                    【评选要求】
                </h2>
            </div>
            <div class="col-sm-12">
                <span class="qy-content2">
                    <ul>
                        <li>
                            关于作品质量的评审将基于但不限于以下标准：
                        </li>
                        <li>
                            1、具有独特的创意和风格；
                        </li>
                        <li>
                            2、具有一定的感染力，视觉效果突出，能引发观者产生共鸣；
                        </li>
                        <li>
                            3、信息传递准确，优雅有意境。
                        </li>
                    </ul>
                </span>
            </div>
        </div>
        <!--评选要求结束-->
        <!--注意事项开始-->
        <div class="container">
            <div class="first">
                <h2>
                    【注意事项】
                </h2>
            </div>
            <div class="col-sm-12">
                <span class="qy-content2">
                    <ul>
                        <li>
                            1、获得优秀设计奖的男款折扇和女款折扇的设计作品，通常会被用于实物订制并于后期在站内提供兑换服务，参赛作者须按昵图网要求，在规定时间内完成修改折扇图案的工作，并与昵图网签订书面合同；
                        </li>
                        <li>
                            2、所有参赛者须保留好作品源文件及手稿，若公示期中作品存在争议，昵图网有权利要求参赛会员提供源文件及手稿进行核实。
                        </li>
                        <li>
                            3、参赛获奖者需于公示后3日内提供作品源文件，发送到邮箱service@nipic.com。
                        </li>
                        <li>
                            4、参赛作品必须为参赛者独立设计的原创作品，且版权未移交他人；没有用之参与其他类似的比赛或活动；未被他人商业用途使用过。（若在比赛或商业应用过程中发生版权纠纷，作者须承担全责）
                        </li>
                        <li>
                            5、作品内容不得违反国家法律法规。
                        </li>
                        <li>
                            6、若活动期内参赛者如有任何违规行为，将取消其参赛资格和获奖资格。
                        </li>
                        <li>
                            7、本次活动最终解释权，在法律允许范围内归昵图网所有。
                        </li>
                    </ul>
                </span>
            </div>
        </div>
        <!--注意事项结束-->
        <!--联系我们开始-->
        <div class="container" style="margin-bottom:20px">
            <div class="first">
                <h2>
                    【联系我们】
                </h2>
            </div>
            <div class="col-sm-12">
                <span class="qy-content2">
                    <ul>
                        <li>
                            若对本次活动的规则存在疑问，请通过以下方式联系我们咨询
                        </li>
                        <li>
                            方式一：活动页留言
                        </li>
                        <li>
                            方式二：发站内短信给：
                            <a href="#">
                                <b>
                                    赛事活动
                                </b>
                            </a>
                            ；
                        </li>
                        <li>
                            方式三：联系本次活动负责人：
                            <a href="#">
                                <b>
                                    QQ 2885336058
                                </b>
                            </a>
                            ；
                        </li>
                        <li>
                            若发现参赛作品有抄袭、侵权、违规等现象，请通过以下方式举报：
                        </li>
                        <li>
                            发送邮件至service@nipic.com举报，标题请注明“举报参赛作品”。若举报成功视参赛会员的违规轻重，对举报者奖励100~500共享分，
                        </li>
                        <li>
                            发举报邮件时请提供自己昵图网用户名，以便发放奖励。
                        </li>
                    </ul>
                </span>
            </div>
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
