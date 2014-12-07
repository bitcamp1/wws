<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	#title{width:1200px;height:60px;max-width: 1400px;min-width: 960px;margin:0 auto;}
	#home_btn{cursor:pointer;float:right;margin:15px 40px 0 0;width:60px;}
	#go_about_us{cursor:pointer;float : right;margin:20px 40px 0 0;}
	#go_main_result{cursor:pointer;float : right;margin:20px 40px 0 0;}
	#go_admin_loginform{cursor:pointer;float : right;margin:10px 0 0 0;}
	#logo{width: 220px;float: left;margin-top: 10px;cursor:pointer;}


</style>


  
	
			
	<img id='logo' src="<c:url value='/resources/img/home/logo.png' />" alt="회사로고"/>
	<img id='go_admin_loginform' src="<c:url value='/resources/img/home/go_admin_loginform.jpg'/>" alt="관리자페이지" />
	<img id='go_main_result' src="<c:url value='/resources/img/home/go_main_result.jpg'/>" alt="주요실적"/>
	<img id='go_about_us' src="<c:url value='/resources/img/home/go_about_us.jpg'/>" alt="회사소개" />
	<img id='home_btn' src="<c:url value='/resources/img/home/home.jpg'/>" alt="홈으로" />							
						
			
	
	

<script>
	$('#logo').click(function(){document.location.href="${pageContext.request.contextPath}/home/home.do";});
	$('#home_btn').click(function(){document.location.href="${pageContext.request.contextPath}/home/home.do";});
	$('#go_about_us').click(function(){document.location.href="${pageContext.request.contextPath}/home/about_us.do";});  
	$('#go_main_result').click(function(){document.location.href ="${pageContext.request.contextPath}/home/main_result.do";});
	$('#go_admin_loginform').click(function(){document.location.href = "${pageContext.request.contextPath}/admin/loginform.do";});
</script>


