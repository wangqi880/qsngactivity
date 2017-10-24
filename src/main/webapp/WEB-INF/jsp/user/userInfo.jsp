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
    <link rel="stylesheet"  href="<%= path%>/css/zoom.css" media="all" />

    <script type="text/javascript" src="<%= path%>/js/jquery-1.9.1.min.js" ></script>

</head>

<body>

<div class="top_i" style="background:url(<%= path%>/images/top_i.jpg) no-repeat center top;" ><h1 class="hide">摄影大赛</h1></div>
<div class="nav_i">
    <div class="main">
        <ul>
            <li><a href="<%= path%>/index/indexnew.html">首 页</a></li>
            <li><a href="<%= path%>/index/act_info.html">活动介绍</a></li>
            <li><a href="<%= path%>/index/act_rule.html">参赛规则</a></li>
            <li><a href="<%= path%>/index/prize_info.html" >奖项设置</a></li>
            <li><a href="<%= path%>/user/showproduct.html">作品展示</a></li>
            <li><a href="<%= path%>/user/upload.html">上传作品</a></li>
            <li class="bg_ii">修改信息</li>
        </ul>
    </div>
</div>


<%--
<script type="text/javascript" src="<%= path%>/js/activity/jquery.selectseach.min.js" tppabs="http://pic.eol.cn/app/static/script/jquery.selectseach.min.js"></script>
--%>
<div class="bg_gary ">
    <div class="main mar_t_20" >
        <div class="w_780 left">
            <div class="title"><h2>用户信息</h2></div>
                <div class="no_way"></div>
                <div class='box font_14'>
                    <div class='content' >
                        <form action="<%= path%>/user/updateUserInfo.do" method="post" enctype="multipart/form-data" name="form_action" id="form_1">
                            <input type="hidden" value="${user.id}"  name="id" />
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
                                        <input name="name", class="select_240" value="${user.name}"  disabled="true">
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" align="right"><span class="red">*</span>&nbsp;身份证号：</td>
                                    <td align="left">
                                       <input name="cardId", class="select_240" value="${user.cardId}" disabled="true">
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
                                        <select name="sex" class="select_240" id="provinceid_1" disabled="true">
                                                <option value="1" ${user.sex==1?"selected='selected'":''}>男 </option>
                                                <option value="2" ${user.sex==2?"selected='selected'":''}>女 </option>
                                        </select></td>
                                </tr>
                                <tr>
                                    <td width="80" height="40" align="right"></td>
                                    <td width="326" align="left" valign="bottom"><a href="javascript:void(0)"><img src="<%= path%>/images/tj.jpg"  width="252" height="63"  onclick="formSubmit()" /></a></td>
                                </tr>

                            </table>
                            <div class="dashed"></div>
                            <table>
                                <c:forEach items="${userPicShowList}" var="userPicShowDto">
                                    <tr>
                                        <td>${userPicShowDto.imageName}</td>
                                        <td><img src="<%= path%>/resources/upload/thumbnail/${userPicShowDto.attachment.newName}"></td>
                                        <td><a href="<%= path%>/user/updateUserPic/${userPicShowDto.attachment.id}">修改</a></td>
                                        <td><a href="<%= path%>/user/deleteUserPic.do?attachmentId=${userPicShowDto.attachment.id}">删除</a></td>
                                    </tr>
                                </c:forEach>

                            </table>

                        </form>
                    </div>
                </div>
            </div>

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
        var msisdn = $("input[name='msisdn']").val();
        if(msisdn==null||msisdn==""){
            alert("手机号不能为空");
            return ;
        }
        var msisdn_pattern = /^1[34578]\d{9}$/;
        if(!msisdn_pattern.test(msisdn)){
            alert("手机号格式不对");
            return ;
        }
        var age =$("input[name='age']").val();
        if(age<0||age>100){
            alert("年龄格式不对");
            return ;
        }
        $('#form_1').submit();
    }



</script>


