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
    <link href="<%= path%>/js/uploadify/css/jquery.fileupload-ui.css"  rel="stylesheet" type="text/css" />
    <link href="<%= path%>/js/uploadify/css/jquery.fileupload.css"  rel="stylesheet" type="text/css" />
    <link href="<%= path%>/js/uploadify/css/jquery.fileupload-noscript.css"  rel="stylesheet" type="text/css" />
    <link href="<%= path%>/js/uploadify/css/ jquery.fileupload-ui-noscript.css"  rel="stylesheet" type="text/css" />




    <%--<link href="css.css" tppabs=<%= path%>/css/css.css" rel="stylesheet" type="text/css" />--%>
    <script type="text/javascript" src="<%= path%>/js/activity/jQuery_latest.min.js" ></script>
<%--
    <script type="text/javascript" src="<%= path%>/js/jquery-3.2.1.min.js" ></script>
--%>

    <script type="text/javascript" src="<%= path%>/js/activity/jQuery_tabs.js" tppabs="http://www.eol.cn/js/global/jQuery_tabs.js" ignoreapd="false"></script>
    <script type="text/javascript" src="<%= path%>/js/activity/jQuery_picFocus.js" tppabs="http://www.eol.cn/js/global/jQuery_picFocus.js" ignoreapd="false" charset="utf-8"></script>
    <script type="text/javascript" src="<%= path%>/js/activity/ctrl.js" tppabs="http://pic.eol.cn/app/static/script/ctrl.js" ignoreapd="false"></script>
    <!--上传js-->
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/vendor/jquery.ui.widget.js"></script>
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload.js"></script>
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload-jquery-ui.js"></script>
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload-process.js"></script>
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload-ui.js"></script>
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload-validate.js"></script>
    <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.iframe-transport.js"></script>



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
                                        <input name="msisdn", class="select_240" value="15682051518" >
                                    </td>
                                </tr>
                                <tr>
                                    <td width="100" height="40" align="right"><span class="red">*</span>&nbsp;姓名：</td>
                                    <td align="left">
                                        <input name="name", class="select_240" value="王琪" >
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" align="right"><span class="red">*</span>&nbsp;身份证号：</td>
                                    <td align="left">
                                       <input name="cardId", class="select_240" value="511525199901050025">
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" align="right"><span class="red">*</span>&nbsp;年龄：</td>
                                    <td align="left">
                                        <input name="age", class="select_240" value="12">
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


                            </table>
                            <div class="dashed"></div>
                            <table width="780" border="0" align="center" cellpadding="5" cellspacing="0">
                                <tr>
                                    <td width="29" align="left"><em>1.</em></td>
                                    <td width="74" height="40" align="right">作品名称：</td>
                                    <td width="647" align="left">
                                        <input type="text" name="imageName"   class="iput_240" value="我是作品名称" />必填</td>
                                </tr>
                                <tr>
                                    <td align="left"></td>
                                    <td height="40" align="right">作品图：</td>

                                    <td align="left">

                                      <%--  <input id="fileupload" type="file" name="attachs" data-url="<%= path%>/user/pic/upload/" multiple="true">--%>
<%--
                                          <input id="fileupload" type="file" name="attachs" data-url="http://192.168.0.100:8080/qsngactivity/user/pic/upload" multiple="true">
--%>
                                          <form id="frm_identityA" action="" enctype="multipart/form-data">
                                                <span>
                                                    <input id="fileupload" name="attachs" accept="image/jpg" multiple="multiple" type="file" value="" />
                                                </span>
                                              <input id="btnImportOK" type="button" value="上传" />
                                          </form>



                                        <%--<div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-success" role="progressbar" style="width: 0%;">0%</div>
                                        </div>--%>

                                       <%-- <div class="fileupload-buttonbar">
                                            <span class="fileinput-button">
                                            <input type="file" name="files[]" multiple="true" accept="image/jpg"></span>
                                            <button type="submit" class="start">上传</button>
                                            <button type="reset" class="cancel">取消</button>
                                        </div>--%>
                                       <%-- <input id="fileupload" type="file" class="ehdel_upload" name="attachs[]" multiple="true" />      <i>(要求:长*宽限制在1620万像素之内,最长边的边长不可小于1000像素,jpg)</i>--%>
                                    </td>
                                </tr>

                                <tr id="files">

                                    <td align="left"></td>
                                    <td align="right">
                                        <div class="files">显示</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left"></td>
                                    <td align="right" valign="top">作品介绍：</td>
                                    <td align="left">
                                        <textarea name="intro"  cols="45" rows="5" class="textarea"></textarea></td>
                                </tr>
                            </table>
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
<script type="text/javascript" src="<%= path%>/js/activity/vote.js" tppabs="http://pic.eol.cn/app/static/script/vote.js" ignoreapd="false"></script>
<div style="width:1px;height:1px;overflow:hidden;">
    <%--<script type="text/javascript">
        document.write('<img src="http://pv.img.eol.cn/images/cer.net/log/gao-kao.png?'+Math.round(Math.random()*1e17)+'" width="0" height="0"/>');
    </script>--%>
    <%--<noscript>
        <img src="gao-kao.png" tppabs="http://pv.img.eol.cn/images/cer.net/log/gao-kao.png" width="0" height="0" />
    </noscript>--%>
    <!-- ecounter -->

  <%-- <script type="text/javascript">
    try {
        var piwikTracker = Piwik.getTracker(pkBaseURL + "mysql.php", 76);
        piwikTracker.trackPageView();
        piwikTracker.enableLinkTracking();
    } catch( err ) {}
</script>--%>
       <%-- <noscript><p><img src="mysql.php-idsite=76" tppabs="http://stat.eol.cn/mysql.php?idsite=76" style="border:0" alt="" /></p></noscript>--%>
    <!-- End ecounter Tag -->
<%--
    <script src="stat.php-id=4696180&web_id=4696180" tppabs="http://s6.cnzz.com/stat.php?id=4696180&web_id=4696180" language="JavaScript"></script>
--%>
</div>

<script type="text/javascript">

    $(document).ready(function(){
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

                    var files =  document.getElementById("files");
                    var node="<td align='left'></td> <td align='right'> <div class='files'>显示</div> </td>";
                    $.each(data.data, function(i,img){
                        node+="<td><a href='"+img.filePath+"'><img src='"+img.thumFilePath+"'/></a></td>";

                        node+="<input type='hidden' name='attachIds' value='"+img.id+"'/>";
                    });

                    files.innerHTML=node;
                    console.log(data.data);
                } else {
                    console.log(data.info);
                }

            }).error(function(data) {
                alert(data);
                console.log(data);
            });
        });

    });
</script>

<script type="text/javascript">

    function formSubmit(){

        var msisdn = $("input[name='msisdn']").val();
        var name = $("input[name='name']").val();
        var cardId = $("input[name='cardId']").val();
        var age =$("input[name='age']").val();
        var sex=$("select[name='sex']").val();
        var imageName= $("input[name='imageName']").val();
        var images = $("input[name='attachIds']");
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
            altert("手机号格式不对");
        }
        var cardId_pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
       if(!cardId_pattern.test(cardId)){
           alert("身份证格式不对");
       }
       if(age<0||age>100){
           alert("年龄格式不对");
       }

        $('#form_1').submit();
    }



</script>

<%--
<script type="text/javascript" src="<%= path%>/js/activity/form.js" tppabs="http://pic.eol.cn/app/static/script/form.js" ignoreapd="false"></script>
--%>

