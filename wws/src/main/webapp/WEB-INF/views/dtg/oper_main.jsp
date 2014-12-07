<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
	.gnboverarea{border-bottom:1px solid #ccc;}
	ul.tabs{width: 1200px;margin: 0 auto;padding: 0;list-style: none;height: 32px;border-left: 1px solid #999;margin: 20px auto;}
	ul.tabs li {float: left;margin: 0;padding: 0;height: 31px;line-height: 31px;border: 1px solid #999;border-left: none;margin-bottom: -1px;
	overflow: hidden;position: relative;background: #e0e0e0;width:150px;text-align: center;}}
	ul.tabs li.active, html ul.tabs li.active a:hover {background: #fff;border-bottom: 1px solid #fff;font-size:12px;}
	.tab_ctn{width:1200px;margin:0 auto;}
</style>
	<div id='title'><%@ include file="../include/title.jsp" %></div>
	<div id='logout_btn'><%@ include file="oper_logout_btn.jsp" %></div>
	<ul class="tabs" style='border-bottom:1px solid #ccc'>
		 <li><a href="#tab1">공지사항</a></li>
		 <li><a href="#tab2">고객리스트</a></li>
		 <li><a href="#tab3">고객등록</a></li>
		 <li><a href="#tab4">고객수정/삭제</a></li></ul>
	<div>
		<div id="tab1" class="tab_ctn"><%@ include file="noti_list.jsp" %></div>
	    <div id="tab2" class="tab_ctn"><%@ include file="test.jsp" %></div>
	    <div id="tab3" class="tab_ctn"><%@ include file="mem_regi.jsp" %></div>
	    <div id="tab4" class="tab_ctn"></div></div>
    

<%@ include file="../include/footer.jsp" %>

<script>
	$(function(){
		$('.tab_ctn').hide();
		$('ul.tabs li:first').addClass('active').show();
		$('.tab_ctn:first').show();
		
		$('ul.tabs li').click(function(){
			$('ul.tabs li').removeClass('active');
			$(this).addClass('active');
			$('.tab_ctn').hide();
			
			var activeTab = $(this).find('a').attr('href');
			$(activeTab).fadeIn();
			return false;
		});
	});
</script>
