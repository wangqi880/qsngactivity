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
    <link rel="stylesheet"  href="<%= path%>/css/zoom.css" media="all" />

    <script type="text/javascript" src="<%= path%>/js/jquery-1.9.1.min.js" ></script>
    <link type="text/css" rel="stylesheet" href="<%= path%>/resources/userProPic/css/style.css">
    <!--弹出层-->
    <script src="<%= path%>/resources/layer/layer.js"></script>
</head>

<body>

<!--banner+导航-->
<%@include file="/WEB-INF/jsp/common/banner.jsp" %>
<div class="nav_i">
    <div class="main juzhong">
        <ul>
            <li><a href="<%= path%>/index/indexnew.html">首 页</a></li>
            <li><a href="<%= path%>/index/act_info.html">活动介绍</a></li>
            <li><a href="<%= path%>/index/act_rule.html">参赛规则</a></li>
            <li><a href="<%= path%>/index/prize_info.html" >奖项设置</a></li>
            <li><a href="<%= path%>/user/upload.html">上传作品</a></li>
            <li><a href="<%= path%>/index/rewardList" >获奖情况</a></li>
<%--
            <li class="bg_ii">个人信息</li>
--%>
        </ul>
    </div>
</div>


<div class="bg_gary ">
    <div class="main mar_t_20" >
        <div class="w_780 left">
            <div class="title">
                <h2>用户信息</h2>

            </div>
            <div id="Tabs_01" >
                <div class='box font_14'>
                    <div class='content' >
                        <form action="<%= path%>/user/updateUserInfo.do" method="post" enctype="multipart/form-data" name="form_action" id="form_1">
                            <input type="hidden" value="${user.id}"  name="id" />
                            <table width="760" border="0" align="center" cellpadding="5" cellspacing="0">
                                <tr>
                                    <td width="100" height="40" align="right"><span class="red">*</span>&nbsp;用户名：</td>
                                    <td align="left">
                                        ${user.username}
                                    </td>
                                </tr>
                                <tr>
                                    <td height="40" align="right"><span class="red">*</span>&nbsp;年龄：</td>
                                    <td align="left">
                                        ${user.age}
                                        <%--<input name="age", class="select_240" value="${user.age}">--%>
                                    </td>
                                </tr>

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
                                        <input name="cardId", class="select_240" value="${user.cardId}" ><span style="color: red">${message}</span>
                                      <%-- <input name="cardId", class="select_240" value="${user.cardId}" disabled="true">--%>
                                    </td>
                                </tr>

                                <tr>
                                    <td width="80" height="40" align="right"><span class="red">*</span>&nbsp;性别：　</td>
                                    <td width="660" align="left">
                                        <select name="sex" class="select_240" id="provinceid_1">
                                            <option value="1" ${user.sex==1?"selected='selected'":''}>男 </option>
                                            <option value="2" ${user.sex==2?"selected='selected'":''}>女 </option>
                                        </select></td>
                                      </td>
                                </tr>
                                <tr>
                                    <td width="80" height="40" align="right"></td>
                                    <td width="326" align="left" valign="bottom"><a href="javascript:void(0)"><img src="<%= path%>/images/tj.jpg"  width="252" height="63"  onclick="formSubmit()" /></a></td>
                                </tr>

                            </table>
                            <div class="dashed"></div>
                            <div >
                                <span style="color: red">
                                    ${stage_message}
                                    <c:if test="${dataList.size()>0}">
                                        <c:forEach items="${dataList}" var="item">
                                            ,《${item.imageName}》编号:${item.prodId}
                                        </c:forEach>
                                    </c:if>
                                </span></div>
                            <div class="dashed"></div>
                            <div class="container">
                                <c:forEach items="${userPicShowList}" var="userPicShowDto">

                                    <div class="single-member effect-2">
                                        <div class="member-image">
                                            <img src="<%= path%>/resources/upload/${userPicShowDto.attachment.newName}">
                                        </div>
                                        <div class="member-info">
                                            <h3>${userPicShowDto.imageName}</h3>
                                            <p>${userPicShowDto.intro}</p>
                                            <div class="social-touch">
                                                <a class="fb-touch" href="<%= path%>/user/updateUserPic/${userPicShowDto.attachment.id}">更新</a>
                                                <%--<a class="tweet-touch" href="javascript:if(confirm('确认删除'))location='<%= path%>/user/deleteUserPic.do?attachmentId=${userPicShowDto.attachment.id}'">删除</a>--%>
                                                    <a class="tweet-touch" onclick="deleUserPic(${userPicShowDto.attachment.id})">删除</a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
            </div>

        </div>
 </div>
</div>
<div class="no_way"></div>
<!--footer-->
<%@include file="/WEB-INF/jsp/common/footer.jsp" %>
</body>
</html>

<script type="text/javascript">

    $(document).ready(function(){



    });
</script>

<script type="text/javascript">

    //删除照片
    function deleUserPic(data){
        layer.confirm("是否确认删除", function () {
            window.location.href="<%= path%>/user/deleteUserPic.do?attachmentId="+data;
        }, function () {
        });
    }
    function formSubmit(){
        var msisdn = $("input[name='msisdn']").val();
        var cardId = $("input[name='cardId']").val();
        var name =$("input[name='name']").val();
        if(msisdn==null||msisdn==""){

            layer.msg("手机号不能为空");
            return ;
        }
        if(name==null||name==""){
            layer.msg("姓名不能为空");
            return ;
        }

        if(cardId==null||cardId==""){
            layer.msg("身份证不能为空");
            return ;
        }

        var msisdn_pattern = /^1[34578]\d{9}$/;
        if(!msisdn_pattern.test(msisdn)){
            layer.msg("手机号格式不对");
            return ;
        }
        var cardId_pattern = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
        if(!cardId_pattern.test(cardId)){
            layer.msg("身份证格式不对");
            return ;
        }
        $('#form_1').submit();
    }

</script>
