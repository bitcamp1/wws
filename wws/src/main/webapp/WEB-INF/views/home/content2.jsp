<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>






<div id="slider"><%@ include file="slider.jsp" %></div>
<div id='menu'><%@ include file="menu.jsp" %></div>
<div id='contents_row_1'><%@ include file="contents_row_1.jsp" %></div>  <!-- 서비스센터 바로가기 -->
<div id='contents_row_2'><%@ include file="contents_row_2.jsp" %></div>	<!-- 고객&파트너, 지도, 게시판 -->
	
	






	
<script>
	jQuery(document).ready(function($){
		$('#slider').bjqs({
			height : 438,
			width  : 1400,
			responsive : true
		});
	});
</script>
