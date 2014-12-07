<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dtg.css"/>
<div><%@ include file='../common/title.jsp' %></div>
<div id='dtg_gnb'><%@ include file='dtg_gnb.jsp' %></div>    
<div id='dtg_ctn'>	
		<div id='dtg_gnb_div'><%@include file="noti_list.jsp" %></div>
</div>
<%@ include file='../common/footer.jsp' %>

<script>
$(function(){
	$('#dtg_gnb_1').click(function(){$('#dtg_gnb_div').load('${pageContext.request.contextPath}/dtg/noti_list.do');});
	$('#dtg_gnb_2').click(function(){
		$('#dtg_gnb_div').load('${pageContext.request.contextPath}/dtg/oper_list.do');}
	);
	$('#dtg_gnb_3').click(function(){$('#dtg_gnb_div').load('${pageContext.request.contextPath}/dtg/mem_list.do');});
});

</script>