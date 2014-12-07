<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<style>
#sub_title{width:1200px;height:130px;margin:0 auto;cursor:pointer;}

</style>
<img id='sub_title' src="<c:url value='/resources/img/common/sub_title.jpg'/>"/>

<script>
	$('#sub_title').click(function(){
		document.location.href="${pageContext.request.contextPath}/home/about_us.do";
	});

</script>
    
