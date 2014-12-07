<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	ul.bjqs{position:relative; list-style:none;margin:0;overflow:hidden; display:none;}
	li.bjqs-slide{position:absolute; display:none;}
	ul.bjqs-controls{list-style:none;margin:0;padding:0;z-index:9;}
	ul.bjqs-controls.v-centered li a{position:absolute;}
	ol.bjqs-markers{list-style: none; padding: 0; margin: 0; width:100%;}
	ol.bjqs-markers.h-centered{text-align: center;}
	ol.bjqs-markers li{display:inline;}
	ol.bjqs-markers li a{display:inline-block;}
	p.bjqs-caption{display:block;width:96%;margin:0;padding:2%;position:absolute;bottom:0;}
	.bjqs-markers {display:none;}
	
	.bjqs-prev {position:absolute; top:50%; left:10px;}
	.bjqs-next {position:absolute; top:50%; right:30px;}
	.bjqs-prev img,
	.bjqs-next img { width:25px; height:25px;}	
	#slider{width:1200px;max-width:100%;z-index: 1;position:relative;margin:0 auto;}
	#slider_btn_1{width:100%;cursor:pointer;}
	#slider_btn_2{width:100%;cursor:pointer;}
	#slider_btn_3{width:100%;cursor:pointer;}
</style>


<ul class="bjqs" >
	<li><img  id='slider_btn_1' src="<c:url value='/resources/img/home/slider_btn_1.png'/>"/></li>   <!-- 회사소개 -->
	<li><img  id='slider_btn_2' src="<c:url value='/resources/img/home/slider_btn_2.jpg'/>"/></li> <!-- DTG 행사 -->
	<li><img  id='slider_btn_3' src="<c:url value='/resources/img/home/slider_btn_3.jpg'/>"/></li> <!-- DTG 소개 -->
</ul>



<script>
	$('#slider_btn_1').click(function(){document.location.href="${pageContext.request.contextPath}/home/about_us.do";});  /* 회사소개  */
	$('#slider_btn_2').click(function(){document.location.href="${pageContext.request.contextPath}/dtg/event.do";});  /*DTG 행사  */
	$('#slider_btn_3').click(function(){document.location.href="${pageContext.request.contextPath}/home/dtg_main.do";});   /* DTG메인 */
	
	
</script>