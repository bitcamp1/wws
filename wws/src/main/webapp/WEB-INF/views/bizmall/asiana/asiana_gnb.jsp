<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	#asiana_gnb{width:1040px;height:70px;margin:0 auto;}
	#logo{width:220px;float:left;margin-top:20px;}
	#home{width:60px;float:right;margin-top:20px;cursor:pointer;}
	#top-fix{width:300px;float:right;margin-top:30px;}
	#top-fix h2{font-size: 15px; margin-top:20px;}
</style>

<%
	 	String param_customer = "아시아나";
%>
	<img id='logo' src="<c:url value='/resources/img/home/logo.png'/>" alt="화이트 윙 로고"/>
 	<a href='#'><img id='home' src="<c:url value='/resources/img/home/home.jpg'/>" alt="홈으로" /></a>
 	<span id='top-fix'><%=param_customer %>임직원 여러분 환영합니다</span>
    
