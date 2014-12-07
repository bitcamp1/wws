<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="robots" content="ALL" />
    <meta name="keywords" content="화이트윙시스템" />
    <meta name="description" content="화이트윙시스템" />
	<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/common.css'/>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/layout.css'/>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/main.css'/>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/style.css'/>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/tabs.css'/>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/home.css'/>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/biz.css'/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/index.css" />
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bjqs-1.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/index/jquery.cookie.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/index/main_1016.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/index/jquery.mousewheel.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/index/jquery.wipetouch.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/index/index.js"></script>
	<script type="text/javascript">
	// jquery.wipetouch.js
		$(document).ready(function(){
			$("#visualGall").wipetouch({
				wipeLeft: function() {
					stopVisual()
					next_VS= intnum+1;
					if (next_VS == totalcoverimg) {next_VS=0}
					newslide(next_VS)
					startVisual();
				},
				wipeRight: function() {
					stopVisual()
					prev_VS = intnum-1;
					if (prev_VS == -1) {prev_VS=totalcoverimg-1}
					newslide(prev_VS)
					startVisual();
				}
			});
		})
	</script>

	
	<title>화이트 윙 시스템</title>
	<!-- 웹로그 분석을 위한 스크립트 삽입 부분 시작-->
   
	<script type="text/javascript">
	/* <![CDATA[ */
		// 팝업이미지 롤링
		var intnum3=0;
		var sliderIntervalID3 = "";

		var intnum2=0;
		var banplay=1;
		var totalbancount = 17;
		var sliderIntervalID2 = "";

		var intnum=0;
		var totalcoverimg = 8;
		var sliderIntervalID = "";
	/* ]]> */
	</script>
	<script type="text/javascript" src="<c:url value='/resources/js/index/main_add.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/resources/js/index/index.js'/>"></script>
	<script>
		<!--
		$(document).ready(function(){
			var menu = null;
			
		});
		-->
	</script>
    </head>
<body>