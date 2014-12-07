<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
	.gnboverarea{border-bottom:1px solid #ccc;}
	
	
</style>
<div id='title'><%@ include file="../include/title.jsp" %></div>


<div id='logout_btn'><%@ include file="oper_logout_btn.jsp" %></div>
<ul class="tabs" style='border-bottom:1px solid #ccc'>
	 <li><a href="#tab1">신규고객등록</a></li>
     <li><a href="#tab2">설치확인서전송</a></li>
     <li><a href="#tab3">공지사항등록</a></li>
     <li><a href="#tab4">계정관리</a></li>
     
</ul>
<div class="tab_container">
	    <div id="tab1" class="tab_content">
	     	
        </div>
    <div id="tab2" class="tab_content">
       <!--Content-->
    </div>
     <div id="tab3" class="tab_content">
       <!--Content-->
    </div>
     <div id="tab4" class="tab_content">
       <!--Content-->
    </div>
</div>
<%@ include file="../include/footer.jsp" %>

<script>
$(document).ready(function(){
	$(document).on(function(){
		$('#tab1').load('');
	});
});
</script>
