<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<div id="layer" style="top:150px; left:100px;width:500px;height:380px;">
	<a href='http://tworld.eumshop.co.kr/event/event_1.php' style='cursor:pointer' target='_blank'>
		<img src="<c:url value='/resources/img/biz/event_hangaui.jpg'/>"/>
	</a>
<p class="btn_close">
    
     <img  src="<c:url value='/resources/img/close.png' />" id='eventBtn'/>
   
</p> 
</div>

<script class="secret-source">
$(document).ready(function($) {

    $('.btn_close').click(function(){
    	$('#layer').fadeOut('fast');
    });
    $('#eventBtn').click(function(){
    	href.location('');
    });

  });
</script>