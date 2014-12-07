<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>


<div id="wrap">
	
<div id="header-wraper" class="sticky-header">
	<div id="header-wrap"><div id="header">
		<h1><a href="${pageContext.request.contextPath }/home.do"><img src="<c:url value='/resources/img/logo.jpg'/>" alt="화이트 윙" /></a></h1>
	
	<ul id="utillmenu">
		<li><a href="${pageContext.request.contextPath }/home.do">HOME</a> |</li>
		<li><a href="#">Contact</a> |</li>
		<li><a href="${pageContext.request.contextPath }/loginform.do">Admin</a></li>
	</ul>
</div>
</div>

</div>
<script type="text/javascript">
if(location.href.indexOf("/possibilities/")>=0){
	$("#navigation li.item-wrap").eq(0).addClass("page-visted");
}else if(location.href.indexOf("/main/index.do")>=0){

}else{
	$("#navigation li.item-wrap").eq(1).addClass("page-visted");
}
</script>
<hr />
	<div id="container">
		<div id="article" class="main-article-wrap">
			<div class="main-article main-article-first">
			<h3><img src="<c:url value='/resources/img/home/space.PNG' />" alt="Possibilities Partner for new possibilities" /></h3>
				<div class="possibilities-gallery" style="width:1105px; height:445px;">
					<!-- 이렇게 한셋트씩 등록되어져야 합니다. -->
					
						<button class="circle"><em>1등 LTE-A의 자부심</em></button>
						<div class="cell" style="width:1105px; height:445px;">
							
							
								<a href="#"  class="desktop" title="새창열림"><img src="<c:url value='/resources/img/home/main_img_1.jpg'/>"style="width:1105px; height:445px;" alt="1등 LTE-A의 자부심" /></a>
								
							
							
						</div>
					
						<button class="circle" ><em>숨쉬는 지구를 위한 SK-T타워의 동행</em></button>
						<div class="cell"style="width:1105px; height:445px;">
							
							
								<a href="#" class="desktop" title="새창열림"><img src="<c:url value='/resources/img/home/main_img_2.jpg'/>" style="width:1105px; height:445px;" alt="숨쉬는 지구를 위한 SK-T타워의 동행" /></a>
								
							
							
						</div>
					
						<button class="circle"><em>행복창업 프로젝트 인생 두번째 가능성을 열어주는 SK텔레콤</em></button>
						<div class="cell" style="width:1105px; height:445px;">
							
							
								<a href="#" class="desktop" title="새창열림"><img src="<c:url value='/resources/img/home/main_img_3.jpg'/>" style="width:1105px; height:445px;" alt="행복창업 프로젝트 인생 두번째 가능성을 열어주는 SK텔레콤" /></a>
								
							
							
						</div>
					
						<button class="circle"><em>SK텔레콤 공식 인증 대리점</em></button>
						<div class="cell" style="width:1105px; height:445px;">
							
							<!-- target="_blank" -->
								<a href="#"  class="desktop" title="새창열림"><img  src="<c:url value='/resources/img/home/main_img_4.jpg'/>" style="width:1105px; height:445px;" alt="SK텔레콤이 열어가는 행복동행 [행복동행] SK텔레콤이 ICT 융합산업 활성화와 창업 지원으로 대한민국의 행복한 미래를 엽니다!" /></a>
								
							
							
						</div>
					
				</div>
				<ul class="possibilities-list clear-obj">
					
						
						
						
						
						<li class="list-first upper">
							<a href="#">
								<img src="<c:url value='/resources/img/home/main_img_1_sml.jpg'/>" alt="1등 LTE-A의 자부심" class="out-img"/>
								<img src="<c:url value='/resources/img/home/main_img_1_sml.jpg'/>" alt="1등 LTE-A의 자부심" class="over-img"/>
							</a>
						</li>

					
						
						
						
						
						<li class="upper">
							<a href="#">
								<img src="<c:url value='/resources/img/home/main_img_2_sml.jpg'/>" alt="숨쉬는 지구를 위한 SK-T타워의 동행" class="out-img"/>
								<img src="<c:url value='/resources/img/home/main_img_2_sml.jpg'/>" alt="숨쉬는 지구를 위한 SK-T타워의 동행" class="over-img"/>
							</a>
						</li>

					
						
						
						
						
						<li class="list-first">
							<a href="#">
								<img src="<c:url value='/resources/img/home/main_img_3_sml.jpg'/>" alt="행복창업 프로젝트 인생 두번째 가능성을 열어주는 SK텔레콤" class="out-img"/>
								<img src="<c:url value='/resources/img/home/main_img_3_sml.jpg'/>" alt="행복창업 프로젝트 인생 두번째 가능성을 열어주는 SK텔레콤" class="over-img"/>
							</a>
						</li>

					
						
						
						
						
						<li class="">
							<a href="#">
								<img src="<c:url value='/resources/img/home/main_img_4_sml.jpg'/>" alt="SK텔레콤이 열어가는 행복동행 [행복동행] SK텔레콤이 ICT 융합산업 활성화와 창업 지원으로 대한민국의 행복한 미래를 엽니다!" class="out-img"/>
								<img src="<c:url value='/resources/img/home/main_img_4_sml.jpg'/>" alt="SK텔레콤 공식 인증 대리점" class="over-img"/>
							</a>
						</li>

					
				</ul>
			</div>
			<script type="text/javascript">$('.possibilities-gallery').possibilitiesGallery()</script>
		
</div>
</div>
</div>