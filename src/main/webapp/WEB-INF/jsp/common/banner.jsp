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
    .float_div{opacity:0.8;border-radius:10px;float:left;text-align:center;background-color: #1e1e1e;margin-right: 40px; margin-top:5px;position:absolute;top:0;right:0;width:110px;height:27px;z-index:100;}
</style>
<script type="text/javascript">
    function userExitSystem() {
        window.parent.location.href = "<%=request.getContextPath() %>/user/logout";
    }
    $(function(){
        document.getElementsByTagName('html')[0].style.width= window.innerWidth+'px';
        window.onresize = function(){
            document.getElementsByTagName('html')[0].style.width= window.innerWidth+'px';
        };
    })

</script>

<div class="top_i" style="background:url(<%= path%>/images/top_i.jpg) no-repeat center top;text-align: right;background-color: white">
    <c:if test="${ not empty loginUser.username}">
        <div class="float_div">
            <div style="float: left;margin-left: 30px;margin-top:6px;">
                <span style="color: white;display: block;">
                    <a href="<%=request.getContextPath() %>/user/userInfo.html" style="color: white">
                       ${loginUser.username}
                    </a>
                </span>
            </div>
            <div  style="float: left;margin-left: 26px;margin-top: 6px">
                <a href="javascript:userExitSystem()"> <img src="<%= path%>/images/out.png" width="18" height="14"></a>
            </div>
                <%--|<a href="javascript:userExitSystem()"><span style="color: white;background-color: #64b3ee;opacity: 0.5">退出登录</a>--%>
            </div>
    </c:if>
</div>
