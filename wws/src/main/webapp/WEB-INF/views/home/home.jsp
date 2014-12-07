<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>

	#home_wrap{width:1400px;margin:0 auto;}
</style>



<div id='home_wrap'>
	<div id='title'><%@ include file="../include/title.jsp" %></div>
	<div id="slider"><%@ include file="slider.jsp" %></div>
	<div id='menu'><%@ include file="menu.jsp" %></div>
	<div id='contents_row_1'><%@ include file="contents_row_1.jsp" %></div>  <!-- 서비스센터 바로가기 -->
	<div id='contents_row_2'><%@ include file="contents_row_2.jsp" %></div>	<!-- 고객&파트너, 지도, 게시판 -->
</div>




<%@ include file="../include/footer.jsp" %>
<script>
	jQuery(document).ready(function($){
		$('#slider').bjqs({
			height : 436,
			width  : 1400,
			responsive : true
		});
	});
</script>