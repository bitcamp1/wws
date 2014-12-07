<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dtg/mem_regi.css"/>  
<table id='mem_regi_tbl'>
	<tr><td><%@ include file="mem_regi_left_1.jsp" %></td><td><%@ include file="mem_regi_right_1.jsp" %></td></tr>
	<tr><td><%@ include file="mem_regi_left_2.jsp" %></td><td rowspan=2><%@ include file="mem_regi_right_2.jsp" %></td></tr>
	<tr><td><%@ include file="mem_regi_left_3.jsp" %></td></tr>
</table>
<div id='btn_box'><button id='store'>저장</button><button id='reset'>취소</button></div>