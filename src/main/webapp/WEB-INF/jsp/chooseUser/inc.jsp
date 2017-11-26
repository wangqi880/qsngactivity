<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div style="float: right">
        <input id="val_unChooseNum" type="text" hidden="true" value="${unChooseNum}">
        <input id="val_chooseNum" type="text" hidden="true" value="${chooseNum}">
        <input type="text" hidden="true" value="${allNum}">
        <div id="div_unChooseNum" class="admin_link" style="float:right;margin-right: 50px">未选择数量:${unChooseNum}</div>
        <div id="div_chooseNum" class="admin_link" style="float:right;margin-right: 20px">已经选择数量:${chooseNum}</div>
        <div id="allNum" class="admin_link" style="float:right;margin-right: 20px">总共数量:${allNum}</div>


</div>
