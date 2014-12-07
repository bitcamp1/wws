<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
<!--
	#lnb{
		width : 180px;
		float : left;
		text-align: center;
		
	}
	#lnb tr td{
		background:url(${pageContext.request.contextPath}/resources/img/left_bg_off.gif) repeat-x;
		height : 35px;
		text-align: center;
	}
-->
</style>
<table id='lnb'>
	<tr><td><img src="<c:url value='/resources/img/admin_tit.gif'/>" alt="관리자모드" /></td></tr>		
	<tr><td><img src="<c:url value='/resources/img/lefttit_bg.gif'/>" alt="기본구성" /></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb1'>기본 어드민 관리</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb2'>사원</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb3'>총판</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb4'>상품구성관리</span></a></td></tr>
	<tr><td><img src="<c:url value='/resources/img/lefttit_bg.gif'/>" alt="상품상세구성" /></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb5'>단말기</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb6'>색상</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb7'>신용조회상태</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb8'>진행상태코드</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb9'>택배</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb10'>번호이동인증</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb11'>판매유형</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb12'>가입유형</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb13'>요금제</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb14'>할부개월</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb15'>약정개월</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb16'>가입비</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb17'>유심카드</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb18'>정책관리</span></a></td></tr>
	<tr><td><a href='#'><span class='lnb' id='lnb19'>영업승인코드</span></a></td></tr>
	<tr><td><a href='${pageContext.request.contextPath}/mall/mall.do'><span class='lnb' id='lnb19'>MALL</span></a></td></tr>
	<tr><td style='background-color:green;'><a href='${pageContext.request.contextPath}/customer/list.do'><span class='lnb' id='lnb20'>B2B사이트관리</span></a></td></tr>
			
</table>

