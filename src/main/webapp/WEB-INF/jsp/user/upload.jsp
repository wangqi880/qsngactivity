<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!--meta引入-->
    <%@include file="/WEB-INF/jsp/common/meta.jsp" %>

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
<!--banner+导航-->
<%@include file="/WEB-INF/jsp/common/banner.jsp" %>
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

                                            <option value="1"  ${user.sex==1?"selected='selected'":''}>男 </option>
                                            <option value="2" ${user.sex==2?"selected='selected'":''} >女</option>

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


        <div class="no_way"></div>
    </div>
</div>
<div class="no_way"></div>
<!--footer-->
<%@include file="/WEB-INF/jsp/common/footer.jsp" %>
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
                url: "<%=path %>/user/pic/upload",
                contentType: false,
                processData: false,
            }).success(function(data) {
                if (data.code=='000000') {
                    $("#image1").attr('src',"<%= path%>"+data.data[0].filePath);
                    $("#image1_a").attr('href',"<%= path%>"+data.data[0].filePath);
                    $("#attachmentId1").val(data.data[0].id);
                } else {
                    alert("上传失败"+data.info);
                    /*console.log(data.info);*/
                }

            }).error(function(data) {
                alert("上传失败"+data.info);
                /*console.log(data);*/
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
                url: "<%=path %>/user/pic/upload",
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
                alert("上传失败:"+data.info);
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

    $.get("<%= path%>/user/isUploadPermission",function(result){
        if(result.code=="000000"){
            $('#form_1').submit();
        }else{
            alert(result.info);
            return;
        }
    })


    }



</script>


