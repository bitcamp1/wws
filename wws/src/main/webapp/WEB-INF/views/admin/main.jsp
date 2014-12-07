<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    



<style>
	#submitForm input {background:url('http://smtech.kradmin.co.kr/images/main/login.gif') no-repeat; width:65px; height:42px; font-size:0;}
	#contentsTable{width:960px;margin:0 auto;margin-top:100px;}
	#icon td img{width: 200px;cursor:pointer;margin-right:30px;}
	#text td{text-align: center;font-weight: bold;}
</style>




<div id='title'><%@ include file="../common/title.jsp" %></div>
<div id='sub_title'><%@ include file="../include/sub_title.jsp" %></div>

<table id='contentsTable'>
	<tr id='icon'>
		<td><img id='go_customer_list' src="<c:url value='/resources/img/home/admin/go_customer_list.jpg'/>"/></td>
		<td><img id='go_dtg_agency_list' src="<c:url value='/resources/img/home/admin/go_dtg_agency_list.jpg'/>"/></td>
		<td><img id='go_cel_main' src="<c:url value='/resources/img/home/admin/go_cel_main.jpg'/>"/></td>
	</tr>
	<tr id='text'>
		<td>비즈몰 관리시스템</td>
		<td>DTG 관리시스템</td>
		<td>휴대폰 관리시스템</td>
	</tr>
	
</table>



<script>
	$(document).ready(function(){
		$('#go_customer_list').click(function(){
			location.href="${pageContext.request.contextPath}/customer/list.do";
		});
		$('#go_dtg_agency_list').click(function(){
			location.href="${pageContext.request.contextPath}/dtg/adm_main.do";
		});
		$('#go_cel_main').click(function(){
			location.href="${pageContext.request.contextPath}/cel/main.do";
		});
	});

</script>