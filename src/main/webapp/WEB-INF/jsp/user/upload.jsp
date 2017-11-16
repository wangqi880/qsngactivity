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
        body{overflow-y:scroll;padding:0;margin:0;}
        a,a:hover{border:none;text-decoration:none;}
        img,a img{border:none;}
        .clear{clear:both;}

        /* gallery */
        .zoomed > .gallery{-webkit-filter:blur(3px);filter:blur(3px);}
        .gallery{width:800px;margin:20px auto;}
        .gallery li{float:left;margin:10px; width:250px; height:200px;}
        .gallery li:nth-child(6n){padding-right:0;}
        .gallery li a,.gallery li img{float:left;}
    </style>
    <link rel="stylesheet"  href="<%= path%>/css/zoom.css" media="all" />


    <script type="text/javascript" src="<%= path%>/js/jquery-1.9.1.min.js" ></script>
    <script type="text/javascript" src="<%= path%>/js/zoom.min.js"></script>

    <!--弹出层-->
    <script src="<%= path%>/resources/layer/layer.js"></script>
    <!--
    <base  target="_blank"/>
    -->
</head>

<body>
<!--banner+导航-->
<%@include file="/WEB-INF/jsp/common/banner.jsp" %>
<div class="nav_i">
    <div class="main juzhong">
        <ul>
            <li><a href="<%= path%>/index/indexnew.html" tppabs="http://pic.eol.cn/picture/index">首 页</a></li>
            <li><a href="<%= path%>/index/act_info.html" tppabs="http://pic.eol.cn/picture/act_info">活动介绍</a></li>
            <li><a href="<%= path%>/index/act_rule.html" tppabs="http://pic.eol.cn/picture/act_rule">参赛规则</a></li>
            <li><a href="<%= path%>/index/prize_info.html" tppabs="http://pic.eol.cn/picture/prize_info">奖项设置</a></li>
            <li class="bg_ii">上传作品</li>
<%--
            <li><a href="<%= path%>/user/userInfo.html">修改信息</a></li>
--%>
        </ul>
    </div>
</div>

<%--
<script type="text/javascript" src="<%= path%>/js/activity/jquery.selectseach.min.js" tppabs="http://pic.eol.cn/app/static/script/jquery.selectseach.min.js"></script>
--%>
<div class="bg_gary ">
    <div class="main mar_t_20" >
        <div class="w_780 left">
            <div class="title"><h2>作品上传入口（<a href="<%= path%>/user/showproduct.html" tppabs="http://pic.eol.cn/picture/take_in">作品展示</a>）</h2></div>
            <div id="Tabs_01" >
                <div class='box font_14'>
                    <div class='content' >
                        <input type="hidden" value="1"  name="shtype" id="shtype">
                        <form action="<%= path%>/user/addUserPics" method="post" enctype="multipart/form-data" name="form_action" id="form_1">
                            <input type="hidden" value="1"  name="shtype" />

                            <table width="780" border="0" align="center" cellpadding="5" cellspacing="0">
                                <tr>
                                    <td ><em>1.</em></td>
                                    <td><div style="width: 80px">作品名称：</div></td>
                                    <td>
                                        <input id="id_imageName1" type="text" name="imageName1"   class="iput_240" value="作者+作品名" /><span style="color:red">*</span></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>作品图：</td>
                                    <td>
                                          <form id="frm_identityA" action="" enctype="multipart/form-data">
                                              <div class="file"><div style="font-size: 14px"><span>选择文件</span></div>
                                                    <input id="fileupload" name="attachs" accept="image/jpg"  type="file" value=""/>
                                                </div>
                                              <div style="float:left;margin-left: 20px"><div style="margin-top: 10px" id="showFileName1"></div></div>
                                              <div style="float:left;margin-left: 20px"><input id="btnImportOK" type="button" value="上传"  class="button_upload"/></div>

                                          </form>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>作品描述：</td>
                                    <td>
                                        <textarea style="resize: none" id="id_intro1" name="intro1"  cols="45" rows="5" class="textarea">字数不超过15-100</textarea>
                                    </td>
                                </tr>

                                    <tr id="firstPreview"  style="display: none">
                                        <td></td>
                                        <td>预览：</td>
                                        <td>
                                            <div class="gallery" >
                                                <!--显示图片-->
                                                <ul>
                                                    <li>
                                                        <a id="image1_a"> <img  style="width: auto;  height: auto; max-width: 100%;  max-height: 200px; " name="imageName" id="image1" width="100%" height="100%"></a>
                                                    </li>
                                                </ul>
                                                <div class="clear"></div>
                                            </div>
                                        </td>

                                    </tr>
                                <tr>
                                    <td></td>
                                    <td width="80" align="left"><button type="button" id="addImage" value="add" class="button_upload">添加照片</button></td>
                                </tr>
                            </table>
                            <!--第二张图片-->
                            <table width="780" id="second_image" border="0" align="center" cellpadding="5" cellspacing="0" style="display: none">
                                <tr>
                                    <td ><em>2.</em></td>
                                    <td><div style="width: 80px">作品名称：</div></td>
                                    <td >
                                        <input id="id_imageName2" type="text" name="imageName2"   class="iput_240" value="作者+作品名" /><span style="color: red">*</span></td>
                                </tr>
                                <tr>
                                    <td ></td>
                                    <td >作品图：</td>

                                    <td >
                                        <form id="frm_identityB" action="" enctype="multipart/form-data">
                                            <div class="file"><div style="font-size: 14px">选择文件</div>
                                                <input id="fileuploadB" name="attachs" accept="image/jpg"  type="file" value=""/>
                                            </div>
                                            <div style="float:left;margin-left: 20px"><div style="margin-top: 10px" id="showFileName2"></div></div>
                                            <div style="float:left;margin-left: 20px"><input id="btnImportOKB" type="button" value="上传"  class="button_upload"/></div>

                                        <%-- <span>
                                                    <input id="fileuploadB" name="attachs" accept="image/jpg" type="file" value="" />
                                                </span>
                                            <input id="btnImportOKB" type="button" value="上传" />--%>
                                        </form>
                                    </td>
                                </tr>

                                <tr >
                                        <td ></td>
                                        <td >作品描述：</td>
                                        <td >
                                            <textarea style="resize: none" id="id_intro2" name="intro2"  cols="45" rows="5" class="textarea"> 字数不超过15-100</textarea>
                                        </td>
                                </tr>
                                <tr id="secondPreview"  style="display: none">
                                    <td></td>
                                    <td>预览：</td>
                                    <td>
                                        <div class="gallery" >
                                            <!--显示图片-->
                                            <ul>
                                                <li>
                                                    <a id="image2_b"> <img  style="width: auto;  height: auto; max-width: 100%;  max-height: 200px; " name="imageName" id="image2" width="100%" height="100%"></a>
                                                </li>
                                            </ul>
                                            <div class="clear"></div>
                                        </div>
                                    </td>

                                </tr>
                                <tr>
                                    <td></td>
                                    <td width="80" align="left"><button type="button" id="delButton" value="add" class="button_upload">删除</button></td>
                                </tr>
                            </table>
                            <div><input type="checkbox" name="readme" id="readme">作品请勿重复上传，否则将取消资格。<a href="javascript:readNotice()"><span style="color:blue;text-decoration:underline">并已经确定注意事项</span></a></div>

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
    //弹出层
    function readNotice(){
        layer.ready(function(){
            layer.open({
                type: 1,
                title: '注意事项',
                maxmin: true,
                area: ['800px', '500px'],
                content: '<div style="padding:50px;">1. 本次摄影大赛-感动殿堂专业赛区不设团体奖项，请参赛者本人以个人名义投稿参赛。<br/>\n' +
                '2. 参赛者只限于合法居住在中华人民共和国大陆地区的居民。*（不含香港特别行政区、澳门特别行政区、台湾地区的居民）\n' +
                '*包括居住在大陆地区的外籍人士和港澳台同胞。<br/>\n' +
                '3. 参赛者填报信息和提交参赛作品之行为，应视为该参赛者充分理解本规程之内容，并承诺接受本规程约束。<br/>\n' +
                '4. 参赛照片须为本人独立完成的作品，不得抄袭、拷贝、仿冒，不得提交参赛者参加主办方以往组织的各种摄影比赛的获奖作品或其他国际摄影赛事、国内顶级摄影赛事优秀奖以上的获奖作品（*判定其他赛事级别以本大赛评委团决定为准）。评审后如被检举参赛作品不符合本规程要求的，主办方有权取消其获奖资格，取消之奖项不再替补。如已领取奖项者，主办方有权追回奖项。<br/>\n' +
                '5. 参赛者同意主办方在中国大陆境内与本大赛的相关活动和其他主办方产品新闻发布会、促销活动中公布和免费使用参赛作品、作者姓名和其他必要信息。并同意主办方在公布和使用参赛作品前对其进行必要的修改、编辑和剪辑，且主办方无须就此类修改、编辑和剪辑通知参赛者。本大赛的相关活动包括但不限于：大赛宣传活动、获奖公告、作品集、作品展以及大赛广告等。参赛者同意主办方在本规程所涉网站上展示、公示或发布参赛作品、作者姓名和其他必要信息时不受上述地区、用途、时间限制<br/>。\n' +
                '6. 所有参赛者上传的照片和文字不得违反中华人民共和国法律法规、违背公共秩序和善良风俗以及道德标准之内容，不得上传具有色情、暴力以及出现灾难、血腥等等不健康内容的照片和文字，以及任何主办方认为含有不当内容的照片和文字，一经发现，主办方将不予上传并有权提交公安机关处理。凡是以销售、促销为目的拍摄的作品，直接、间接为营利活动所拍摄的作品，均不能参赛，一经发现，主办方有权立即取消其参赛和获奖资格。<br/>\n' +
                '7. 参赛者同意主办方对此次摄影大赛参赛者提交的个人信息可在处理本规程相关事宜的必要范围内使用。除本规程约定事项及以下情形外，主办方在没有取得参赛者同意的前提下，不会向第三人公开、提供相关个人信息。\n' +
                '8. 本次大赛官方活动网站注册信息中，参赛者确认同意接收主办方发送的相关活动以及产品促销信息的，主办方将向参赛者注册的联系方式中发送上述信息。<br/>\n' +
                '9. 获奖者因获奖发生的个人所得税将由主办方承担。\n</div>',
                end: function(){
                    layer.tips('Hi', '#about', {tips: 1})
                }
            });
        });
    }
    $(document).ready(function(){
        <!--添加照片-->
        $("#addImage").click(function(){
            //查看是否允许添加照片
            $.ajax({
                type: "get",
                url: "<%=path %>/user/isAddUserpic?userId=${loginUser.id}",
                contentType: false,
                processData: false,
            }).success(function(data) {
                if (data.code=='000000') {
                    $("#second_image").show();
                    var v = $("#addImage").val();
                } else {
                    layer.msg("不允许添加"+data.info);
                }

            }).error(function(data) {
                layer.msg("不允许添加"+data.info);
            });


        })
        $("#delButton").click(function(){
            $("#second_image").hide();
            $("#attachmentId2").val("");

        })

        //第一张上传图片改变，文字
        $('#fileupload').change(function(){
            var filePath=$('#fileupload').val();
            var arr=filePath.split('\\');
            var fileName=arr[arr.length-1];
            $('#showFileName1').text(fileName);
        })
        //第二张照片改变
        $('#fileuploadB').change(function(){
            var filePath=$('#fileuploadB').val();
            var arr=filePath.split('\\');
            var fileName=arr[arr.length-1];
            $('#showFileName2').text(fileName);
        })

        <!--上传第一张照片-->
        $("#btnImportOK").click(function () {
          /*  var formData = new FormData($("#frm_identityA")[0]);*/
            var paths = document.getElementById("fileupload").files;
            if(!($('#readme').is(':checked'))) {
                layer.msg("请勾选阅读事项");
                return;
            }
            if(paths.length==0)
            {
                layer.msg("请选择文件");
                return;
            }
            var formData = new FormData();
            for (var i = 0; i < paths.length; i++) {
                var file = paths[i];
                //用正则表达式判断文件的类型是否是图片，这里大家可以自由发挥
                if (!new RegExp("image/jpeg").test(file.type)) {
                    layer.msg("请注意，上传的文件一定要是图片文件(jpg)");
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
                    layer.msg("上传成功");
                    $("#firstPreview").show();
                    $("#image1").attr('src',"<%= path%>"+data.data[0].filePath);
                    $("#image1_a").attr('href',"<%= path%>"+data.data[0].filePath);
                    $("#attachmentId1").val(data.data[0].id);
                } else {
                    layer.msg("上传失败"+data.info);
                }

            }).error(function(data) {
                layer.msg("上传失败"+data.info);
            });
        });



        <!--上传第二张照片-->
        $("#btnImportOKB").click(function () {
            /*  var formData = new FormData($("#frm_identityA")[0]);*/
            if(!($('#readme').is(':checked'))) {
                layer.msg("请勾选阅读事项");
                return;
            }
            var paths = document.getElementById("fileuploadB").files;

            if(paths.length==0)
            {
                layer.msg("请选择文件");
                return;
            }
            var formData = new FormData();
            for (var i = 0; i < paths.length; i++) {
                var file = paths[i];
                //用正则表达式判断文件的类型是否是图片，这里大家可以自由发挥
                if (!new RegExp("image/jpeg").test(file.type)) {
                    layer.msg("请注意，上传的文件一定要是图片文件(jpg)");
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
                    layer.msg("上传成功");
                    $("#secondPreview").show();
                    $("#image2").attr('src',"<%= path%>"+data.data[0].filePath);
                    $("#image2_b").attr('href',"<%= path%>"+data.data[0].filePath);
                    $("#attachmentId2").val(data.data[0].id);
                } else {
                    layer.msg("上传失败:"+data.info);

                }

            }).error(function(data) {
                layer.msg("上传失败:"+data.info);
            });
        });


    });
</script>

<script type="text/javascript">

    $("#id_intro1").focus(function(){
        if(this.value == this.defaultValue) {
            this.value='';
        }
    });
    $("#id_intro2").focus(function(){
        if(this.value == this.defaultValue) {
            this.value='';
        }
    });

    $("#id_imageName1").focus(function(){
        if(this.value == this.defaultValue) {
            this.value='';
        }
    });

    $("#id_imageName2").focus(function(){
        if(this.value == this.defaultValue) {
            this.value='';
        }
    });

    function formSubmit(){
        var attachmentId2 = $("input[name='attachmentId2']").val();
        var attachmentId1 = $("input[name='attachmentId1']").val();
        if((attachmentId1==null||attachmentId1=="")){
            layer.msg("上传图片不能为空");
            return ;
        }
        if(attachmentId1!=null && attachmentId1!=""){
            var imageName1= $("input[name='imageName1']").val();
            var intro1 = $("textarea[name='intro1']").val();
            if(imageName1==null||imageName1==""){
                layer.msg("作品名称不能为空");
                return ;
            }

            if(intro1==null||intro1==""){
                layer.msg("描述不能为空");
                return ;
            }
            if(intro1.length<15 || intro1.length>100){
                layer.msg("描述字数在15-100之间");
                return ;
            }
        }

        var second_is_hidden= $("#second_image").is(":hidden");
        if(!second_is_hidden){
            if(attachmentId2==null||attachmentId2==""){
                layer.msg("上传图片不能为空");
                return;
            }
            if(attachmentId2!=null && attachmentId2!=""){
                var imageName2= $("input[name='imageName2']").val();
                var intro2 = $("textarea[name='intro2']").val();
                if(imageName2==null||imageName2==""){
                    layer.msg("作品名称不能为空");
                    return ;
                }

                if(intro2==null||intro2==""){
                    layer.msg("描述不能为空");
                    return ;
                }
                if(intro2.length<15 || intro2.length>100){
                    layer.msg("描述字数在15-100之间");
                    return ;
                }
            }
        }


    $.get("<%= path%>/user/isUploadPermission",function(result){
        if(result.code=="000000"){
            $('#form_1').submit();
        }else{
            layer.msg(result.info);
            return;
        }
    })


    }



</script>


