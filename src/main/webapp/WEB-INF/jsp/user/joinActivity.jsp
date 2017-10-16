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
        <link href="<%= path%>/js/uploadify/css/style.css" rel="stylesheet" type="text/css"/>
        </meta>
        <script type="text/javascript" src="<%= path%>/js/com.qsng-picAdd.js"></script>
        <script type="text/javascript" src="<%= path%>/js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript"  src="<%= path%>/js/uploadify/js/vendor/jquery.ui.widget.js"></script>
        <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.iframe-transport.js"></script>
        <script type="text/javascript"  src="<%= path%>/js/uploadify/js/jquery.fileupload.js"></script>


     <script type="text/javascript">
         $(function () {

             $("#sbUploadFile").click(function() {
                /* if($("#fileupload").data('uploadify').queueData.queueLength!=0){
                     alert($("#fileupload").data('uploadify').queueData.queueLength+"aa");

                 }*/
               alert(  $("#fileupload").files);
                 $('#fileupload').fileupload(
                     {
                       /*  url : $("#ctx").val()+"/user/pic/upload",*/
                        /* url: "http://192.168.0.100:8080/qsngactivity/user/pic/upload/",*/
                         type : 'post',
                         fileObjName:'simplefile',
                         dataType : 'json',
                         fileTypeExts:'*.gif;*.png;*.jpg;*.bmp;*.jpeg;',
                         autoUpload : true,
                         maxFileSize:102400000,
                         formData : [
                          {} ],
                         done : function(e, data)
                         {
                             alert("我成功了");
                             console.debug(data.result);
                             //
                             var object = JSON.parse(data.result);
                             var image = new Image(object.image.id, object.image.assetId, object.image.assetXml, object.image.url, object.image.type);

                             console.log('image formUploadFileUser success,' + image);
                         },
                         progressall : function(e, data)
                         {
                             var progress = parseInt(data.loaded / data.total * 100, 10);
                             $('#progress .bar').css(
                                 'width',
                                 progress + '%'
                             );
                         },
                         fail: function(e, data)
                         {
                             alert("错误");
                             console.log('fileupload, fail', e, data);
                         }

                     }).prop('disabled', !$.support.fileInput).parent().addClass($.support.fileInput ? undefined : 'disabled');


             });

             })





               /* $("#uploadFile").click(function() {
                    alert("我点击了");
                    $("#attach").uploadify("upload","*");
                });
            });

            $("#attach").uploadify({
                swf:$("#ctx").val()+"/js/uploadify/uploadify.swf",
                uploader:$("#ctx").val()+"/user/pic/upload",
                fileObjName:"attach",
                auto:false,
                formData:{"sid":$("#sid").val()},
                fileTypeExts:"*.jpg;*.gif;*.png;*.doc;*.docx;*.txt;*.xls;*.xlsx;*.rar;*.zip;*.pdf;*.flv;*.swf",
                onUploadSuccess:function(file, data, response) {
                    var ao = $.parseJSON(data);
                    var suc = $.ajaxCheck(ao);
                    if(suc) {
                        var node = createAttachNode(ao.obj);
                        $("#ok_attach").find("tbody").append(node);
                    }
                }
            });

            function createAttachNode(attach) {
                var node = "<tr>";
                if(attach.isImg) {
                    node+="<td><img src='"+uploadPath+"thumbnail/"+attach.newName+"'/></td>";
                } else {
                    node+="<td>普通类型附件</td>";
                }
                node+="<td>"+attach.oldName+"</td>";
                node+="<td>"+Math.round(attach.size/1024)+"K</td>";
                if(attach.isImg) {
                    node+="<td><input type='checkbox' value='"+attach.id+"' name='indexPic' class='indexPic'></td>";
                    node+="<td><input type='radio' value='"+attach.id+"' name='channelPicId'></td>";
                } else {
                    node+="<td>&nbsp;</td><td>&nbsp;</td>";
                }
                node+="<td><input type='checkbox' value='"+attach.id+"' name='isAttach' class='isAttach'><input type='hidden' name='aids' value='"+attach.id+"'/></td>";
                node+="<td><a href='#' class='list_op insertAttach' title='"+attach.id+"' isImg='"+attach.isImg+"' name='"+attach.newName+"' oldName='"+attach.oldName+"'>插入附件</a>&nbsp;<a href='#' title='"+attach.id+"' class='list_op deleteAttach delete'>删除附件</a></td>";
                node+="</tr>";
                return node;*/

        </script>
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
            <input type="hidden" id="ctx" value="<%=request.getContextPath() %>"/>
            <div>
                <form role="form">
                    <div class="form-group">
                        <label for="name">姓名</label>
                        <input type="text" class="form-control" id="name"  value="王琪">
                    </div>
                    <div class="form-group">
                        <label for="name">手机号</label>
                        <input type="text" class="form-control" id="msisdn" value="15682051518">
                    </div>
                    <div class="form-group">
                        <label for="name">身份证号<span style="color: red">*</span></label>
                        <input type="text" class="form-control" id="cardId" value="15682051518">
                    </div>
                    <div class="form-group">
                        <label for="name">性别<span style="color: red">*</span></label>
                        <div class="radio">
                            <label>
                                <input type="radio" name="sex" id="optionsRadios1" value="1" checked> 男
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="sex" id="optionsRadios2" value="2">女
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name">年龄<span style="color: red">*</span></label>
                        <input type="text" class="form-control" id="age"  value="28">
                    </div>

                    <div class="form-group">
                     <%--
                        <input type="button" id="uploadFile" value="上传文件"/>--%>
                         <input id="fileupload" type="file" name="attachs"  data-url="qsngactivity/user/pic/upload/" multiple>
                         <input type="button" id="sbUploadFile" value="上传文件"/>
                         <div id="progress">
                             <div class="bar" style="width: 0%;"></div>
                         </div>
                    </div>

                    <div class="form-group">
                        <table id="ok_attach" width="890px" cellpadding="0" cellspacing="0">
                            <thead>
                            <tr>
                                <Td>文件名缩略图</Td>
                                <td width="180">文件名</td>
                                <td>文件大小</td>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                    <button type="submit" class="btn btn-default">提交</button>
                </form>
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
           <%-- <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js">
            </script>--%>
            <!-- Include all compiled plugins (below), or include individual files as needed -->
            <script crossorigin="anonymous" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js">
            </script>
        </footer>
    </body>
</html>
