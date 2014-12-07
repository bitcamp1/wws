<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<style>
	.gnb {
    
    height : 30px;width : 1170px;float:left;
    
    list-style-type: none;
    padding-left : 30px;
    background:url(${pageContext.request.contextPath}/resources/img/navi_bg.gif)repeat-x;
    text-align:left;
}
.gnb li{
    display : inline;
    font-weight: bold;
    font-size: 11px;
    padding : 0 35px ;
    margin: 0 auto;
    
}
.gnb li a{color:#fff;}
	


</style>
	<ul class='gnb' >
		<li><a href='#' onclick="tgate_list()">T-Gate</a></li>
		<li><a href='#' onclick="customer_list()">고객사</a></li>
		<li><a href='#' onclick="mobile_list()">단말기</a></li>
		<li><a href='#' onclick="guest_list()">고객관리</a></li>
		<li><a href='#' onclick="tariff_list()">요금제관리</a></li>
		<li><a href='#' onclick='promotion_list()'>프로모션</a></li>
		<li><a href='#' onclick='contract_list()'>가입조건</a></li>
		<li><a href='#' onclick="admin_list()">관리자등록</a></li>
	</ul>

<script>
	function tgate_list(){
		location.href='${pageContext.request.contextPath}/tgate/list.do';
	}
	function customer_list(){
		location.href='${pageContext.request.contextPath}/customer/list.do';
	}
	function mobile_list(){
		location.href='${pageContext.request.contextPath}/mobile/list.do';
	}
	function guest_list(){
		location.href='${pageContext.request.contextPath}/guest/list.do';
	}
	function tariff_list(){
		location.href='${pageContext.request.contextPath}/tariff/list.do';
	}
	function promotion_list(){
		location.href='${pageContext.request.contextPath}/promotion/list.do';
	}
	function contract_list(){
		location.href='${pageContext.request.contextPath}/contract/list.do';
	}
	function admin_list(){
		location.href='${pageContext.request.contextPath}/admin/list.do';
	}

</script>










