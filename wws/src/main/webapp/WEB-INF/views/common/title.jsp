<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%@ include file="../common/header.jsp" %> 
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/cafe24.css" />
<style>
<!--
	#title { width: 1200px; height: 80px; margin:0 auto;vertical-align: middle;cursor:pointer;}
	#logo_btn{width: 220px;float: left;margin: 10px 0 0 0;}
	#menu {float:right;margin-top:10px;}
	#menu li {float:left;margin-right:20px;cursor:pointer;}
	
-->
</style>



<div  id='title' >
	<img id='logo_btn' src="<c:url value='/resources/img/home/logo.png' />" alt="회사로고"/>
	<ul id="menu">
        <li id='admin_main_btn'>관리자 홈</li>
        <li id='customer_list_btn'>비즈몰 관리</li>
        <li id='dtg_agency_list_btn'>DTG 관리</li>
        <li id='cel_main_btn'>휴대폰개통 관리</li>
        <li id='logout_btn' class='last'><img src="<c:url value='/resources/img/home/admin/logout.jpg'/>" alt="로그아웃" /></li>
    </ul>
</div>		



<script>
	$(document).ready(function(){
		$('#logo_btn').click(function(){location.href='${pageContext.request.contextPath}/home/home.do';});  /* 홈페이지 메인화면 */
		$('#admin_main_btn').click(function(){location.href='${pageContext.request.contextPath}/admin/main.do';}); /* 관리자 홈 페이지 */
		$('#customer_list_btn').click(function(){location.href='${pageContext.request.contextPath}/customer/list.do';}); /* 비즈몰고객사 리스트 */
		$('#dtg_agency_list_btn').click(function(){location.href='${pageContext.request.contextPath}/dtg/agency_list.do';}); /* DTG 설치기사리스트 */
		$('#cel_main_btn').click(function(){location.href='${pageContext.request.contextPath}/cel/main.do';}); /* 신용조회 */
		$('#logout_btn').click(function(){
			$.getJSON(
					'${pageContext.request.contextPath}/admin/logout.do',
					function(data){
						if(data.status=='success')location.href='${pageContext.request.contextPath}/home/home.do';
						else window.alert("로그아웃실패입니다");
					}
			);
		}); 
	});
</script>
