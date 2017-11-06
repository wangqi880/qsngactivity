<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    .user_operator{margin-right:10%;font-size: 20px;}
    .user_operator a:link,.user_operator a:visited {
        color:#64b3ee;
        text-decoration:none;
    }
    .user_operator a:hover {
        background-color: #2fa2f7;
        text-decoration:underline;
    }
</style>
<script type="text/javascript">
    function userExitSystem() {
        window.parent.location.href = "<%=request.getContextPath() %>/user/logout";
    }
</script>

<div class="top_i" style="background:url(<%= path%>/images/top_i.jpg) no-repeat center top;text-align: right">
    <c:if test="${ not empty loginUser.username}">
        <div class="user_operator">
            <a href="<%=request.getContextPath() %>/user/userInfo.html">
              <span style="color: white;background-color: #64b3ee">[${loginUser.username}]个人信息</span></a>
            |<a href="javascript:userExitSystem()"><span style="color: white;background-color: #64b3ee">退出登录</a></div>
    </c:if>
</div>
