<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
   <style>
   #contentsTable{margin:0 auto;margin-top:50px;width:1040px;}
   .contentsTableFirstTd{width:400px;}
   </style>
   
   
   
<%@ include file="../include/header.jsp" %>
<div id='title'><%@ include file="../include/title.jsp" %></div>
<div id='sub_title'><%@ include file="../include/sub_title.jsp" %></div>
<table id='contentsTable'>
	<tr><td class='contentsTableFirstTd' valign="top">
			<div id="side" >
	            <ul><li><div class="menu">
	              <ul style="margin-top:6px;"><li><img src="<c:url value='/resources/img/home/community_1.jpg'/>" alt="community" style='cursor:pointer'/></li></ul>
	               	<ul><li id='menu1'><img src="<c:url value='/resources/img/home/community_2.jpg'/>" alt="공지사항" style='cursor:pointer'></li></ul>
	                <ul><li id="menu2"><img src="<c:url value='/resources/img/home/community_3.jpg' />" alt="사업문의" style='cursor:pointer'> </li></ul></div></li></ul>
	            <ul><li><div class="bn"><img src="<c:url value='/resources/img/home/sub_bn.jpg'/>" alt="고객상담 전화번호"></div></li></ul>
	        </div></td>
		<td valign="top" id='load'><%@include file="community_4.jsp" %></td></tr></table>	
<%@ include file="../include/footer.jsp" %>



<script>
	$(document).ready(function(){
		$('#menu1').click(function(){
			document.location.href="#";
		});
		$('#menu2').click(function(){
			document.location.href="#";
		});
	});
</script>
