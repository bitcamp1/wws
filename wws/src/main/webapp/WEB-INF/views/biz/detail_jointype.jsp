<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="gnb.jsp" %>
	
	<ul class="tabs">
		 <li><a href="#tab1">상세페이지</a></li>
	     <li><a href="#tab2">배송안내</a></li>
	     <li><a href="#tab3">교품 및 AS 안내</a></li>
	     <li><a href="#tab4">분실 파손 보험 안내</a></li>
	     <li><a href="#tab5">개통취소안내</a></li>
	     <li><a href="#tab6">프로모션상품안내</a></li>
	     <li><a href="#tab7">요금제안내</a></li>
	</ul>
	<div class="tab_container">
	    <div id="tab1" class="tab_content">
	     	<%@include file="con_wrap_jointype.jsp" %>
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
     <div id="tab5" class="tab_content">
       <img src="<c:url value='/resources/img/biz/info_tariff.jpg'/>"/>
    </div>
     <div id="tab6" class="tab_content">
       <img src="<c:url value='/resources/img/biz/new_join.jpg'/>"/>
    </div>
    <div id="tab7" class="tab_content">
       <img src="<c:url value='/resources/img/biz/join.jpg'/>"/>
    </div>
   </div>
	<%@include file="../common/footer.jsp" %>

<script>
	$(document).ready(function() {

	//When page loads...
	$(".tab_content").hide(); //Hide all content
	$("ul.tabs li:first").addClass("active").show(); //Activate first tab
	$(".tab_content:first").show(); //Show first tab content

	//On Click Event
	$("ul.tabs li").click(function() {

		$("ul.tabs li").removeClass("active"); //Remove any "active" class
		$(this).addClass("active"); //Add "active" class to selected tab
		$(".tab_content").hide(); //Hide all tab content

		var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
		$(activeTab).fadeIn(); //Fade in the active ID content
		return false;
	});
	
	 
    
	

});

	
	

</script>