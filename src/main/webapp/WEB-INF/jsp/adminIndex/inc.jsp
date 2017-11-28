<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<span>
   <c:if test="${type eq '1'}">
       活动介绍
   </c:if>
     <c:if test="${type eq '2'}">
         参赛规则
     </c:if>
     <c:if test="${type eq '3'}">
         奖项设置
     </c:if>
</span>
