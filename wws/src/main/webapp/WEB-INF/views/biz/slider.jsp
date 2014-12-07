<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	
	ul.bjqs{position:relative; list-style:none;margin:0;overflow:hidden; display:none;}
	li.bjqs-slide{position:absolute; display:none;}
	ul.bjqs-controls{list-style:none;margin:0;padding:0;z-index:9;}
	ul.bjqs-controls.v-centered li a{position:absolute;}
	ol.bjqs-markers{list-style: none; padding: 0; margin: 0; width:900px;}
	ol.bjqs-markers.h-centered{text-align: center;}
	ol.bjqs-markers li{display:inline;}
	ol.bjqs-markers li a{display:inline-block;}
	p.bjqs-caption{display:block;width:96%;margin:0;padding:2%;position:absolute;bottom:0;}
	.bjqs-markers {display:none;}
	
	.bjqs-prev {position:absolute; top:50%; left:10px;}
	.bjqs-next {position:absolute; top:50%; right:30px;}
	.bjqs-prev img,
	.bjqs-next img { width:25px; height:25px;}	
	
	#slider{width:900px;max-width:900px;z-index: 1;position:relative;}
	#slider_btn_1{width:100%;cursor:pointer;}
	#slider_btn_2{width:100%;cursor:pointer;}
	#slider_btn_3{width:100%;cursor:pointer;}
	#banner{width:1028px;margin:0 auto;}
	
</style>

    
		        <ul class="bjqs">
			         <li><img src="<c:url value='/resources/img/biz/slider1.jpg'/>" ></li>
			         <li><img src="<c:url value='/resources/img/biz/slider2.jpg'/>"></li>
			         <li><img src="<c:url value='/resources/img/biz/slider3.jpg'/>"></li>
		        </ul>
	      
	      
	      
	      <script class="secret-source">
jQuery(document).ready(function($) {

    $('#banner').bjqs({
      height      : 320,
      width       : 1024,
      responsive  : true
     
    });
  
  });
</script>