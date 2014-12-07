<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
#event_btn{cursor:pointer;}
</style>    
<%@ include file="../include/header.jsp" %>   
<div id='title'><%@ include file="../include/title.jsp" %></div>
	<img id='event_btn' src='<c:url value="/resources/img/dtg/event.jpg"/>'/>

<%@ include file="../include/footer.jsp" %>
<script>
$('#event_btn').click(function(){document.location.href="${pageContext.request.contextPath}/home/dtg_main.do";});
</script>