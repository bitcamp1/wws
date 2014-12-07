<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dtg/mem.css"/>  
<table id='mem_modi_tbl'>
	<tr><td><%@ include file="mem_modi_left_1.jsp" %></td><td><%@ include file="mem_modi_right_1.jsp" %></td></tr>
	<tr><td><%@ include file="mem_modi_left_2.jsp" %></td><td rowspan=2><%@ include file="mem_modi_right_2.jsp" %></td></tr>
	<tr><td><%@ include file="mem_modi_left_3.jsp" %></td></tr>
	<tr><td rowspan=2><%@include file="mem_modi_down.jsp" %></td></tr>
</table>
<div id='btn_box'><button id='store'>저장</button><button id='reset'>취소</button></div>