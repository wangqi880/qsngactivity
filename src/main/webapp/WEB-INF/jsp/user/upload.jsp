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
                                        <textarea id="id_intro1" name="intro1"  cols="45" rows="5" class="textarea">字数不超过15-100</textarea>
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
                                                        <a id="image1_a"> <img  style="width: auto;  height: auto; max-width: 100%;  max-height: 100%; " name="imageName" id="image1" width="100%" height="100%"></a>
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
                                            <textarea id="id_intro2" name="intro2"  cols="45" rows="5" class="textarea"> 字数不超过15-100</textarea>
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
                                                    <a id="image2_b"> <img  style="width: auto;  height: auto; max-width: 100%;  max-height: 100%; " name="imageName" id="image2" width="100%" height="100%"></a>
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
                            <div><input type="checkbox" name="readme" id="readme">作品请勿重复上传，否则将取消资格。</div>

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
                    alert("不允许添加"+data.info);

                }

            }).error(function(data) {
                alert("不允许添加"+data.info);
                /*console.log(data);*/
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
                alert("请勾选阅读事项");
                return;
            }
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
                    alert("上传成功");
                    $("#firstPreview").show();
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
            if(!($('#readme').is(':checked'))) {
                alert("请勾选阅读事项");
                return;
            }
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
                    alert("上传成功");
                    $("#secondPreview").show();
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
            if(intro1.length<15 || intro1.length>100){
                alert("描述字数在15-100之间");
                return ;
            }
        }

        var second_is_hidden= $("#second_image").is(":hidden");
        if(!second_is_hidden){
            if(attachmentId2==null||attachmentId2==""){
                alert("上传图片不能为空");
                return;
            }
            if(attachmentId2!=null && attachmentId2!=""){
                var imageName2= $("input[name='imageName2']").val();
                var intro2 = $("textarea[name='intro2']").val();
                if(imageName2==null||imageName2==""){
                    alert("作品名称不能为空");
                    return ;
                }

                if(intro2==null||intro2==""){
                    alert("描述不能为空");
                    return ;
                }
                if(intro2.length<15 || intro2.length>100){
                    alert("描述字数在15-100之间");
                    return ;
                }
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


