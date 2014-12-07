<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    

<style>
<!--
.snb {
	
	height : 30px;
	width : 780px;
	list-style-type: none;
	padding-left : 0;
	float : right;
	
}
.snb li{
	display : inline;
	border : 1px solid black;
	vertical-align : middle;
	margin : 5px 0 5px 0;
	font-weight: bold;
	font-size: 12px;
	padding : 0 25px;
	background-color : #FFD700;
	
}


-->
</style>
<div id='snb'>
	<table class='table_style' >
		<tr><td colspan='6' style='text-align: left;border:#fff;' ><span>B2B사이트</span></td></tr>
		<tr >
			<th><a href='#' id='snb1' style='color:#fff;'>단말기</a></th>
			<th><a href='#'id='snb2' style='color:#fff;'>고객사</a></th>
			<th><a href='#'id='snb3' style='color:#fff;'>요금제</a></th>
			<th><a href='#' id='snb4' style='color:#fff;'>프로모션</a></th>
			<th><a href='#' id='snb5' style='color:#fff;'>신청자</a></th>
			<th><a href='#' id='snb6' style='color:#fff;'>통계</a></th>
		<tr>
	</table>
</div>
<script>
	
	$('#snb1').click(function(){
		location.href='../../../views/b2b/phone/phone_list.jsp';
	});
	$('#snb2').click(function(){
		location.href = '../../../views/b2b/customer/cust_list.jsp';
	});
	$('#snb3').click(function(){
		location.href='../../../views/b2b/tariff/tariff_list.jsp';
	});
	$('#snb4').click(function(){
		location.href='../../../views/b2b/promotion/promo_list.jsp';
	});
	$('#snb5').click(function(){
		location.href='../../../views/b2b/guest/guest_list.jsp';
	});
	$('#snb6').click(function(){
		location.href='../../../views/common/builder.jsp';
	});
</script>
