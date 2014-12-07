<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="picDiv">
	<ul class="banPicUL">
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg01.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg02.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg03.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg04.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg05.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg01.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg02.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg03.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg04.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg05.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg01.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg02.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg03.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg04.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg05.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg02.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
		<li><span class="pic"><a href="#" > <img src="<c:url value='/resources/img/index/dtg03.jpg'/>" alt="스마트DTG광고" width="278" height="107" /></a></span></li>
	</ul>
</div>
<script>
$(document).ready(function(){
	$('.pic').click(function(){
		document.location.href="${pageContext.request.contextPath}/home/menu_3.do";
	});
});

</script>