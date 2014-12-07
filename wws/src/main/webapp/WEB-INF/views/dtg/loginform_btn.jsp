<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	#loginform_btn{cursor:pointer;border-top:1px solid #2E8B57;width:1200px;}
</style>



<img id='loginform_btn' src="<c:url value='/resources/img/dtg/loginform_btn.jpg'/>"/>




<script>
	$('#loginform_btn').click(function(){
		document.location.href="${pageContext.request.contextPath}/dtg/loginform.do";
	});
</script>