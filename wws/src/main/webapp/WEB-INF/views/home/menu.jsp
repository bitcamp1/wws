<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>    
<style>
    #menu{    
	    width:1200px;
	    height:60px;
	    z-index:2;
	    position:relative;
	    background-image:url(<c:url value='/resources/img/index/menubar_bg_color.png'/>);
	    background-repeat:no-repeat;
	    margin: 0 auto;
	}
	#menu img{
		cursor:pointer;
		float:left;
	}
</style>
	<img id='' src="<c:url value='/resources/img/index/button000.png'/>" />
	<img id='menuBtn01' src="<c:url value='/resources/img/index/button01.png'/>" style='margin-top:-43px;'/>
	<img id='menuBtn02' src="<c:url value='/resources/img/index/button02.png'/>" style='margin-top:-6px;'/>
	<img id='menuBtn03' src="<c:url value='/resources/img/index/button03.png'/>" style='margin-top:-5px;'/>
	<img id='menuBtn04' src="<c:url value='/resources/img/index/button04.png'/>" style='margin-top:-5px;'/>
	<img id='menuBtn05' src="<c:url value='/resources/img/index/button05.png'/>" style='margin-top:-5px;'/>
<script>
	$('#menuBtn01').click(function(){
		document.location.href="${pageContext.request.contextPath}/home/sktelecom.do";/*SKT법인대리점*/
	});
	$('#menuBtn02').click(function(){
		document.location.href="${pageContext.request.contextPath}/home/dtg_main.do"; /* DTG메인 */
	});
	$('#menuBtn03').click(function(){
		document.location.href="${pageContext.request.contextPath}/home/logis.do";/*물류솔루션*/
	});
	$('#menuBtn04').click(function(){
		document.location.href="${pageContext.request.contextPath}/home/mobile_logis.do";/*모바일택배솔루션*/
	});
	$('#menuBtn05').click(function(){
		document.location.href="${pageContext.request.contextPath}/home/customer_center.do"; /* 고객센터 */
	});
</script>