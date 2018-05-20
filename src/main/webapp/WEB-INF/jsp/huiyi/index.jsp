<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<%@include file="/WEB-INF/jsp/huiyi/header.jsp" %>
<style type="text/css">
 .index-tile{color: white;font-size: 30px}
</style>
<body>
<center>
<img src="/resources/huiyi/home.jpg" />
</center>

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top">
	
    
    
	<!--<table width="100%" border="0" cellspacing="10" cellpadding="0">
            <tr>
              <td height="150" align="center" valign="middle" bgcolor="#AB35FD"><a href="hyyc.jsp"><img src="imgs/home-6.jpg" width="170" height="69"></a></td>
            </tr>
          </table>-->
	
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="50%" valign="top">
		<table width="100%" border="0" cellspacing="10" cellpadding="0">
          <tr>
              <td height="150" align="center" valign="middle" bgcolor="#19C768"><a href="/huiyi/hyrc" ><span class="index-tile">日程安排</span></a></td>
            </tr>
        </table>
        <table width="100%" border="0" cellspacing="10" cellpadding="0">
          <tr>
              <td height="150" align="center" valign="middle" bgcolor="#EFC50F"><a href="/huiyi/rymd" ><span class="index-tile">会议议程</span></a></td>
            </tr>
        </table>
		
		 
		  
		  
		 <!--<table width="100%" border="0" cellspacing="10" cellpadding="0">
            <tr>
              <td height="150" align="center" valign="middle" bgcolor="#EFC50F"><a href="fzap.html"><img src="imgs/home-11.jpg" width="170" height="69"></a></td>
            </tr>
          </table> -->
		  
		  
		  
		  
         </td>
        <td width="50%" valign="top">
		
		
          <table width="100%" border="0" cellspacing="10" cellpadding="0">
            <tr>
              <td height="150" align="center" valign="middle" bgcolor="#E25EFF"><a href="/huiyi/hyyc" ><span class="index-tile">参会人员名单</span></a></td>
            </tr>
          </table>
          
          
          <!--
          <table width="100%" border="0" cellspacing="10" cellpadding="0">
            <tr>
              <td height="150" align="center" valign="middle" bgcolor="#DA2888"><a href="seat.png"><img src="imgs/home-7.jpg" width="170" height="69"></a></td>
            </tr>
          </table>
          -->
          
		  <!--<table width="100%" border="0" cellspacing="10" cellpadding="0">
            <tr>
              <td height="150" align="center" valign="middle" bgcolor="#DA2888"><a href="zwap.html"><img src="imgs/home-7.jpg" width="170" height="69"></a></td>
            </tr>
          </table>-->
          <table width="100%" border="0" cellspacing="10" cellpadding="0">
            <tr>
              <td height="150" align="center" valign="middle" bgcolor="#da2888"><a href="/huiyi/info" ><span class="index-tile">成都少年宫简介</span></a></td>
            </tr>
          </table>
		  </td>
      </tr>
    </table>
	
	<%--<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="50%" valign="top">
		 <table width="100%" border="0" cellspacing="10" cellpadding="0">
            <tr>
              <td height="150" align="center" valign="middle" bgcolor="#08929D"><a href="hwz.html" ><img src="/resources/huiyi/home-4.jpg"  width="170" height="69"></a></td>
            </tr>
          </table>
         </td>
      </tr>
    </table>
	--%>
	
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="50%" valign="top">
		<!--<table width="100%" border="0" cellspacing="10" cellpadding="0">
          <tr>
              
			  <td height="150" align="center" valign="middle" bgcolor="#799701"><a href="fzap.html"><img src="imgs/home-8.jpg" width="170" height="69"></a></td>
            </tr>
        </table>-->
        
		  
		  
		 <!--<table width="100%" border="0" cellspacing="10" cellpadding="0">
            <tr>
              <td height="150" align="center" valign="middle" bgcolor="#EFC50F"><a href="fzap.html"><img src="imgs/home-11.jpg" width="170" height="69"></a></td>
            </tr>
          </table> -->
		  
		  
		  
		  
         </td>
        <td width="50%" valign="top">
		
		
          <!--<table width="100%" border="0" cellspacing="10" cellpadding="0">
            <tr>
              <td height="150" align="center" valign="middle" bgcolor="#E25EFF"><a href="hwz.html"><img src="imgs/home-999.jpg" width="170" height="69"></a></td>
            </tr>
          </table>-->
          
		  
		  
		  
		  
		  </td>
      </tr>
    </table>
	
	
	
	
	
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td valign="top">
		
          
		  
		  
		  <!--<table width="100%" border="0" cellspacing="10" cellpadding="0">
            <tr>
              <td height="150" align="center" valign="middle" bgcolor="#08929D"><a href="hwz.html"><img src="imgs/home-4.jpg" width="170" height="69"></a></td>
            </tr>
          </table>-->
		
		  
		  
		  

		  </td>
        </tr>
    </table>
	
	
	
	
	
	
	</td>
  </tr>
</table>
<%@include file="/WEB-INF/jsp/huiyi/footer.jsp" %>
</body>
</html>