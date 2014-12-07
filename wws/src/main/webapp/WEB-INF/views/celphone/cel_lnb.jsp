<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<style>
<!--
.cel_lnb {
	
	height : 30px;width : 1200px;
	
	list-style-type: none;
	padding-left : 30px;
	background:url(${pageContext.request.contextPath}/resources/img/navi_bg.gif)repeat-x;
	text-align:left;
	vertical-align: middle;
	
}
.cel_lnb li{
	display : inline;
	font-weight: bold;
	font-size: 11px;
	padding : 0 32px ;
	cursor:pointer;
	color : #fff;
	vertical-align:middle;
	
}


-->
</style>
	<ul class='cel_lnb' >
		<li id='regist_date'>신용조회</li>
		<li id='sole'>고객리스트</li>
		<li id='sales_type'>배송관리</li>
		<li id='cust_name' >개통관리</li>
		<li id='cust_info' >요금수납</li>
		<li id='retrieve_state'>SKT리베이트</li>
		<li id='retrieve_result'>위탁수수료</li>
		<li id='management' >추가차감현황</li>
		<li id='management' >개통마감</li>
	</ul>

<script>
	$('#regist_date')click(function(){location.href='${pageContext.request.contextPath}/celphone/regist_date.do';});
	$('#sole')click(function(){location.href='${pageContext.request.contextPath}/celphone/sole.do';});
	$('#sales_type')click(function(){location.href='${pageContext.request.contextPath}/celphone/sales_type.do';});
	$('#cust_name')click(function(){location.href='${pageContext.request.contextPath}/celphone/cust_name.do';});
	$('#cust_info')click(function(){location.href='${pageContext.request.contextPath}/celphone/cust_info.do';});
	$('#retrieve_state')click(function(){location.href='${pageContext.request.contextPath}/celphone/retrieve_state.do';});
	$('#retrieve_result')click(function(){location.href='${pageContext.request.contextPath}/celphone/retrieve_result.do';});
	$('#management')click(function(){location.href='${pageContext.request.contextPath}/celphone/management.do';});
</script>










