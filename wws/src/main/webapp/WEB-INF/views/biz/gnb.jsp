<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>
<style>
	#title{width:900px;height:70px;margin:0 auto;}
	#logo{width:220px;float:left;}
	#home_btn{width:60px;float:right;margin-top:20px;cursor:pointer;}
	#top-fix{width:300px;float:right;margin-top:30px;}
	#top-fix h2{font-size: 15px; margin-top:20px;}
	
</style>


<div id="title">
			<%
			 	String param_customer = request.getParameter("customer");
			 	String param_id = request.getParameter("id");
		 	%>
		 	<img id='logo' src="<c:url value='/resources/img/home/logo.png'/>" alt="화이트 윙 로고"/>
		 	<img id='home_btn' src="<c:url value='/resources/img/home/home.jpg'/>" alt="홈으로" />
		 	<span id='top-fix'><%=param_customer %>임직원 여러분 환영합니다</span></div>

<script>

	$(function(){
		$('#home_btn').click(function(){
			location.href = '${pageContext.request.contextPath}/${tgate.custId }.do?id=${tgate.custId }&customer=${tgate.csBean.customer}';
		});
	});
</script>
