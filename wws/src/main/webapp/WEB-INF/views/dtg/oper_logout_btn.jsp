<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	#logout_btn{cursor:pointer;border-top:1px solid #2E8B57;width:1200px;margin:0 auto;}
</style>



<img id='logout_btn' src="<c:url value='/resources/img/dtg/logout_btn.jpg'/>"/>




<script>
$(document).ready(function(){
	$('#logout_btn').click(function(){
		$.getJSON(
			'${pageContext.request.contextPath}/dtg/oper_logout.do',
			function(data){
				if(data.status=="success")location.href='${pageContext.request.contextPath}/home/dtg_main.do';
       			else window.alert('로그아웃 실패입니다');
			}
		);
	});
});

</script>