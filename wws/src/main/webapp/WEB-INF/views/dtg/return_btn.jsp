<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	#return_btn{cursor:pointer;border-top:1px solid #2E8B57;}
</style>



<img id='return_btn' src="<c:url value='/resources/img/dtg/return_btn.jpg'/>"/>




<script>
	$('#return_btn').click(function(){
		document.location.href="${pageContext.request.contextPath}/home/dtg_main.do";
	});
</script>