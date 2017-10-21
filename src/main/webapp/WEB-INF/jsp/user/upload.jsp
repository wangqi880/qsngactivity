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
    <meta name="copyright" content="www.eol.cn" />
    <meta content="all" name="robots" />
    <link href="<%= path%>/css/glb1311_utf.css" rel="stylesheet" rev="stylesheet" type="text/css" media="all" ignoreapd="false">
    <link href="<%= path%>/css/css.css"  rel="stylesheet" type="text/css" />
    <%--<link href="<%= path%>/js/uploadify/css/jquery.fileupload-ui.css"  rel="stylesheet" type="text/css" />
    <link href="<%= path%>/js/uploadify/css/jquery.fileupload.css"  rel="stylesheet" type="text/css" />
    <link href="<%= path%>/js/uploadify/css/jquery.fileupload-noscript.css"  rel="stylesheet" type="text/css" />
    <link href="<%= path%>/js/uploadify/css/ jquery.fileupload-ui-noscript.css"  rel="stylesheet" type="text/css" />--%>

    <style type="text/css">
        *{margin:0;padding:0;list-style-type:none;}
        body{overflow-y:scroll;font-family:"HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, sans-serif;background:#f4f4f4;padding:0;margin:0;}
        a,a:hover{border:none;text-decoration:none;}
        img,a img{border:none;}
        .clear{clear:both;}

        /* gallery */
        .zoomed > .gallery{-webkit-filter:blur(3px);filter:blur(3px);}
        .gallery{width:800px;margin:20px auto;}
        .gallery li{float:left;margin:10px; width:80px; height:80px;}
        .gallery li:nth-child(6n){padding-right:0;}
        .gallery li a,.gallery li img{float:left;}
    </style>
    <link rel="stylesheet"  href="<%= path%>/css/zoom.css" media="all" />
    <%--<script type="text/javascript" src="<%= path%>/js/activity/jQuery_latest.min.js" ></script>--%>

   <%-- <script type="text/javascript" src="<%= path%>/js/activity/jQuery_tabs.js" tppabs="http://www.eol.cn/js/global/jQuery_tabs.js" ignoreapd="false"></script>
    <script type="text/javascript" src="<%= path%>/js/activity/jQuery_picFocus.js" tppabs="http://www.eol.cn/js/global/jQuery_picFocus.js" ignoreapd="false" charset="utf-8"></script>
    <script type="text/javascript" src="<%= path%>/js/activity/ctrl.js" tppabs="http://pic.eol.cn/app/static/script/ctrl.js" ignoreapd="false"></script>--%>
    <!--上传js-->
  <%--  <script type="text/javascript"  src="<%= path%>/js/uploadify/js/vendor/jquery.ui.widget.js"></script>
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload.js"></script>
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload-jquery-ui.js"></script>
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload-process.js"></script>
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload-ui.js"></script>
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload-validate.js"></script>
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.iframe-transport.js"></script>--%>

    <!--图片变大js-->


    <script type="text/javascript" src="<%= path%>/js/jquery-1.9.1.min.js" ></script>
    <script type="text/javascript" src="<%= path%>/js/zoom.min.js"></script>

    <!--
    <base  target="_blank"/>
    -->
</head>

<body>

<div class="top_i" style="background:url(<%= path%>/images/top_i.jpg) no-repeat center top;" ><h1 class="hide">摄影大赛</h1></div>
<div class="nav_i">
    <div class="main">
        <ul>
            <li><a href="<%= path%>/index/indexnew.html" tppabs="http://pic.eol.cn/picture/index">首 页</a></li>
            <li><a href="<%= path%>/index/act_info.html" tppabs="http://pic.eol.cn/picture/act_info">活动介绍</a></li>
            <li><a href="<%= path%>/index/act_rule.html" tppabs="http://pic.eol.cn/picture/act_rule">参赛规则</a></li>
            <li><a href="<%= path%>/index/prize_info.html" tppabs="http://pic.eol.cn/picture/prize_info">奖项设置</a></li>
            <li><a href="<%= path%>/user/showproduct.html" tppabs="http://pic.eol.cn/picture/take_in">作品展示</a></li>
            <li class="bg_ii">上传作品</li>
            <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>
        </ul>
    </div>
</div>


<%--
<script type="text/javascript" src="<%= path%>/js/activity/jquery.selectseach.min.js" tppabs="http://pic.eol.cn/app/static/script/jquery.selectseach.min.js"></script>
--%>
<div class="bg_gary ">
    <div class="main mar_t_20" >
        <div class="w_780 left">
            <div class="title"><h2>作品上传入口</h2></div>
            <div id="Tabs_01"><div class="tag_01_title left">晒出精彩</div>
                <div class="no_way"></div>
                <div class='box font_14'>
                    <div class='content' >
                        <input type="hidden" value="1"  name="shtype" id="shtype">
                        <form action="<%= path%>/user/addUserPics" method="post" enctype="multipart/form-data" name="form_action" id="form_1">
                            <input type="hidden" value="1"  name="shtype" />
                            <table width="760" border="0" align="center" cellpadding="5" cellspacing="0">
                                <tr>
                                    <td width="100" height="40" align="right"><span class="red">*</span>&nbsp;手机号：</td>

                                    <td align="left">
                                        <input name="msisdn", class="select_240" value="${user.msisdn}" >
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100" height="40" align="right"><span class="red">*</span>&nbsp;姓名：</td>
                                    <td align="left">
                                        <input name="name", class="select_240" value="${user.name}" >
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" align="right"><span class="red">*</span>&nbsp;身份证号：</td>
                                    <td align="left">
                                       <input name="cardId", class="select_240" value="${user.cardId}">
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" align="right"><span class="red">*</span>&nbsp;年龄：</td>
                                    <td align="left">
                                        <input name="age", class="select_240" value="${user.age}">
                                    </td>
                                </tr>
                                <tr>
                                    <td width="80" height="40" align="right"><span class="red">*</span>&nbsp;性别：　</td>
                                    <td width="660" align="left">
                                        <select name="sex" class="select_240" id="provinceid_1">

                                            <option value="1" >男 </option>
                                            <option value="2" >女</option>

                                        </select></td>
                                </tr>
                                <tr>
                                    <td width="80" align="left"><button type="button" id="addImage" value="add">添加照片</button></td>
                                </tr>
                            </table>
                            <div class="dashed"></div>
                            <table width="780" border="0" align="center" cellpadding="5" cellspacing="0">
                                <tr>
                                    <td width="29" align="left"><em>1.</em></td>
                                    <td width="74" height="40" align="right">作品名称：</td>
                                    <td width="647" align="left">
                                        <input type="text" name="imageName1"   class="iput_240" value="我是作品名称" />必填</td>
                                </tr>
                                <tr>
                                    <td align="left"></td>
                                    <td height="40" align="right">作品图：</td>

                                    <td align="left">
                                          <form id="frm_identityA" action="" enctype="multipart/form-data">
                                                <span>
                                                    <input id="fileupload" name="attachs" accept="image/jpg"  type="file" value="" />
                                                </span>
                                              <input id="btnImportOK" type="button" value="上传" />
                                          </form>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left"></td>
                                    <td align="right" valign="top">作品介绍：</td>
                                    <td align="left">
                                        <textarea name="intro1"  cols="45" rows="5" class="textarea"></textarea></td>
                                </tr>
                            </table>
                                <div class="dashed"></div>
                            <!--第二张图片-->
                            <table width="780" id="second_image" border="0" align="center" cellpadding="5" cellspacing="0" style="display: none">
                                <tr>
                                    <td width="29" align="left"><em>2.</em></td>
                                    <td width="74" height="40" align="right">作品名称：</td>
                                    <td width="647" align="left">
                                        <input type="text" name="imageName2"   class="iput_240" value="我是作品名称" />必填</td>
                                </tr>
                                <tr>
                                    <td align="left"></td>
                                    <td height="40" align="right">作品图：</td>

                                    <td align="left">
                                        <form id="frm_identityB" action="" enctype="multipart/form-data">
                                                <span>
                                                    <input id="fileuploadB" name="attachs" accept="image/jpg" type="file" value="" />
                                                </span>
                                            <input id="btnImportOKB" type="button" value="上传" />
                                        </form>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left"></td>
                                    <td align="right" valign="top">作品介绍：</td>
                                    <td align="left">
                                        <textarea name="intro2"  cols="45" rows="5" class="textarea"></textarea></td>
                                </tr>
                            </table>

                            <div class="gallery" >
                                <!--显示图片-->
                                <ul>
                                    <li>
                                        <a id="image1_a"> <img  name="imageName" id="image1" width="100%" height="100%"></a>
                                    </li>
                                    <li>
                                        <a id="image2_b"> <img  name="imageName" id="image2" width="100%" height="100%"></a>
                                    </li>
                                </ul>
                                <div class="clear"></div>
                            </div>
                            <script type="text/javascript" src="<%= path%>/js/zoom.min.js"></script>
                            <input type="hidden"   name="attachmentId1" id="attachmentId1">
                            <input type="hidden"   name="attachmentId2" id="attachmentId2">
                            <div class="dashed"></div>


                            </table>
                            <table width="780" border="0" align="center" cellpadding="10" cellspacing="0">
                                <tr>
                                    <td width="414" height="120" align="left"></td>
                                    <td width="326" align="left" valign="bottom"><a href="javascript:void(0)"><img src="<%= path%>/images/tj.jpg" tppabs="http://pic.eol.cn/app/static/images/tj.jpg" width="252" height="63"  onclick="formSubmit()" /></a></td>
                                </tr>

                            </table>
                        </form>
                    </div>



                </div>
            </div>

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
                    <td height="34" align="center" valign="middle" bgcolor="#F4F4F4"><em>20</em></td>
                    <td align="" valign="middle" bgcolor="#F4F4F4"><a href="javascript:if(confirm('http://pic.eol.cn/picture/show?pid=281&shtype=2&order_by=hot  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ���޷�ȡ�ã�������ȡ�غ������������Ŀֹͣ��̫�졣  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/picture/show?pid=281&shtype=2&order_by=hot#top'" tppabs="http://pic.eol.cn/picture/show?pid=281&shtype=2&order_by=hot#top">巴渝名校</a></td>
                    <td align="" valign="middle" bgcolor="#F4F4F4">王世冲</td>
                    <td align="" valign="middle" bgcolor="#F4F4F4"><i>18909</i></td>
                </tr>
            </table>
        </div>


        <div class="no_way"></div>
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
        <a href="javascript:if(confirm('http://pic.eol.cn/html/cer.net/jj.htm  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/html/cer.net/jj.htm'" tppabs="http://pic.eol.cn/html/cer.net/jj.htm">eol.cn简介</a>
        | <a href="javascript:if(confirm('http://pic.eol.cn/html/cer.net/lx.htm  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/html/cer.net/lx.htm'" tppabs="http://pic.eol.cn/html/cer.net/lx.htm">联系方式</a>
        | <a href="javascript:if(confirm('http://pic.eol.cn/html/cer.net/sm.htm  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/html/cer.net/sm.htm'" tppabs="http://pic.eol.cn/html/cer.net/sm.htm">网站声明</a>
        | <a href="javascript:if(confirm('http://pic.eol.cn/html/cer.net/zhaopinxinxi.htm  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://pic.eol.cn/html/cer.net/zhaopinxinxi.htm'" tppabs="http://pic.eol.cn/html/cer.net/zhaopinxinxi.htm">招聘信息</a>
        | <a href="javascript:if(confirm('http://www.miibeian.gov.cn/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.miibeian.gov.cn/'" tppabs="http://www.miibeian.gov.cn/">京ICP备12045350号-1</a>
        | <a href="javascript:if(confirm('http://img.eol.cn/images/indexnew/www1024.jpg  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://img.eol.cn/images/indexnew/www1024.jpg'" tppabs="http://img.eol.cn/images/indexnew/www1024.jpg">文网文[2008]228号</a>
        | <a href="javascript:void(0)">京公网安备110108902063号</a><br />
        版权所有 <a href="javascript:if(confirm('http://www.cernet.com/  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://www.cernet.com/'" tppabs="http://www.cernet.com/">赛尔网络有限公司
        CERNET Corporation</a><br />
        Mail to: <a href="mailto:webmaster@cernet.com">webmaster@cernet.com</a>
    </div>
</div>
</body>
</html>
<%--
<script type="text/javascript" src="<%= path%>/js/activity/vote.js" tppabs="http://pic.eol.cn/app/static/script/vote.js" ignoreapd="false"></script>
--%>

<script type="text/javascript">

    $(document).ready(function(){


        <!--添加照片-->
        $("#addImage").click(function(){
            $("#second_image").show();
            var v = $("#addImage").val();
        })

        <!--上传第一张照片-->
        $("#btnImportOK").click(function () {
          /*  var formData = new FormData($("#frm_identityA")[0]);*/
            var paths = document.getElementById("fileupload").files;

            if(paths.length==0)
            {
                alert("请选择文件");
                return;
            }
            var formData = new FormData();
            for (var i = 0; i < paths.length; i++) {
                var file = paths[i];
              /*  alert(file.type);*/
                //用正则表达式判断文件的类型是否是图片，这里大家可以自由发挥
                if (!new RegExp("image/jpeg").test(file.type)) {
                    alert("请注意，上传的文件一定要是图片文件(jpg)");
                    return;
                }
            }
            //我们可以预先定义一个FormData对象
            var formData=new FormData();
            for(var i=0;i<paths.length;i++)
            {
                //将每个文件设置一个string类型的名字，放入到formData中，这里类似于setAttribute("",Object)
                formData.append(paths[i].name,paths[i]);
            }
            $.ajax({
                type: "POST",
                data: formData,
                url: "http://localhost:8080/qsngactivity/user/pic/upload",
                contentType: false,
                processData: false,
            }).success(function(data) {
                if (data.code=='000000') {
                    $("#image1").attr('src',"<%= path%>"+data.data[0].filePath);
                    $("#image1_a").attr('href',"<%= path%>"+data.data[0].filePath);
                    $("#attachmentId1").val(data.data[0].id);
                } else {
                    alert("上传失败"+data.info);
                    console.log(data.info);
                }

            }).error(function(data) {
                alert("上传失败"+data.info);
                console.log(data);
            });
        });



        <!--上传第二张照片-->
        $("#btnImportOKB").click(function () {
            /*  var formData = new FormData($("#frm_identityA")[0]);*/
            var paths = document.getElementById("fileuploadB").files;

            if(paths.length==0)
            {
                alert("请选择文件");
                return;
            }
            var formData = new FormData();
            for (var i = 0; i < paths.length; i++) {
                var file = paths[i];
                /*  alert(file.type);*/
                //用正则表达式判断文件的类型是否是图片，这里大家可以自由发挥
                if (!new RegExp("image/jpeg").test(file.type)) {
                    alert("请注意，上传的文件一定要是图片文件(jpg)");
                    return;
                }
            }
            //我们可以预先定义一个FormData对象
            var formData=new FormData();
            for(var i=0;i<paths.length;i++)
            {
                //将每个文件设置一个string类型的名字，放入到formData中，这里类似于setAttribute("",Object)
                formData.append(paths[i].name,paths[i]);
            }
            $.ajax({
                type: "POST",
                data: formData,
                url: "http://localhost:8080/qsngactivity/user/pic/upload",
                contentType: false,
                processData: false,
            }).success(function(data) {
                if (data.code=='000000') {
                    $("#image2").attr('src',"<%= path%>"+data.data[0].filePath);
                    $("#image2_b").attr('href',"<%= path%>"+data.data[0].filePath);
                    $("#attachmentId2").val(data.data[0].id);
                } else {
                    alert(上传失败+data.info);
                    console.log(data.info);
                }

            }).error(function(data) {
                alert(上传失败+data.info);
                console.log(data);
            });
        });


    });
</script>

<script type="text/javascript">

    function formSubmit(){
        var attachmentId2 = $("input[name='attachmentId2']").val();
        var attachmentId1 = $("input[name='attachmentId1']").val();
        if((attachmentId2==null||attachmentId2=="") && (attachmentId1==null||attachmentId1=="")){
            alert("上传图片不能为空");
            return ;
        }
        if(attachmentId1!=null && attachmentId1!=""){
            var imageName1= $("input[name='imageName1']").val();
            var intro1 = $("textarea[name='intro1']").val();
            if(imageName1==null||imageName1==""){
                alert("作品名称不能为空");
                return ;
            }

            if(intro1==null||intro1==""){
                alert("描述不能为空");
                return ;
            }
        }


/*        var msisdn = $("input[name='msisdn']").val();
        var name = $("input[name='name']").val();
        var cardId = $("input[name='cardId']").val();
        var age =$("input[name='age']").val();
        var sex=$("select[name='sex']").val();
        var imageName= $("input[name='imageName']").val();

        var intro = $("textarea[name='intro']").val();

        if(msisdn==null||msisdn==""){
            alert("手机号不能为空");
            return ;
        }

        if(name==null||name==""){
            alert("姓名不能为空");
            return ;
        }
       if(cardId==null||cardId==""){
           alert("身份证号码为空");
           return ;
       }
        if(age==null||age==""){
            alert("年龄不能为空");
            return ;
        }

        if(imageName==null||imageName==""){
            alert("作品名称不能为空");
            return ;
        }
        if(intro==null||intro==""){
            alert("作品描述不能空");
            return ;
        }
        if(images==null||images=="" ||images.length<=0){
            alert("作品不能空");
            return ;
        }

        var msisdn_pattern = /^1[34578]\d{9}$/;
        if(!msisdn_pattern.test(msisdn)){
            alert("手机号格式不对");
            return ;
        }
        var cardId_pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
       if(!cardId_pattern.test(cardId)){
           alert("身份证格式不对");
           return ;
       }
       if(age<0||age>100){
           alert("年龄格式不对");
           return ;
       }*/

        $('#form_1').submit();
    }



</script>


