<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	#idx01{ /* 로고 */
		cursor:pointer;
		margin-left:230px;
	}
	#idx02{ /* 홈으로 */
	
	}
	#idx03{	/* 회사소개 */
		cursor:pointer;
		float : right;
		margin-top:20px;
		margin-right:40px;

	}
	#idx04{	/* 주요실적 */
		cursor:pointer;
		float : right;
		margin-top:20px;
		margin-right:40px;
	}
	#idx05{	/* 관리자페이지 */
		cursor:pointer;
		float : right;
		margin-top:10px;
		margin-right:80px;
	}


</style>

<div id="wrap">
  
	
			
				<img id='idx01' src="<c:url value='/resources/img/index/whitewing_logo.png' />" 
				alt="회사로고" class='logobox'/>
		
			
<!-- 홈으로 버튼 만들어 붙일 것 -->
							<%-- <img id='idx02' src="<c:url value='/resources/img/index/gnb6_on.jpg'/>" 
							alt="회사소개" style='cursor:pointer'/> --%>
							<img id='idx05' src="<c:url value='/resources/img/index/gnb7_on.jpg'/>" 
							alt="관리자페이지" />
							
					
							
								<img id='idx04' src="<c:url value='/resources/img/index/gnb5_on.jpg'/>" 
								alt="주요실적"/>
							
						
							
								<img id='idx03' src="<c:url value='/resources/img/index/gnb6_on.jpg'/>" 
								alt="회사소개" />
						
			
	
	
</div>

<%-- <h2 class="invisible">주메뉴</h2>
<div class="gnboverarea">
		<div id="gnb_main" class="gnb_main">
            <div id="gnb_2depth_line"></div>
			<ul class="gnbmm">
				<li id="menu_1" class="gm_1">
					<h3>
						<a href="#">
							<img src="<c:url value='/resources/img/index/gnb1_on.jpg'/>" alt="물류솔루션" style='cursor:pointer'/>
						</a>
					</h3>
                </li>
				<li id="menu_2" class="gm_2">
					<h3>
						<a href="#">
							<img src="<c:url value='/resources/img/index/gnb2_on.jpg'/>" alt="모바일택배솔루션"style='cursor:pointer'/>
						</a>
					</h3>
                </li>
				<li id="menu_3" class="gm_3">
					<h3>
						<a href="#">
							<img src="<c:url value='/resources/img/index/gnb3_on.jpg'/>" alt="DTG사업" style='cursor:pointer'/>
						</a>
					</h3>
                </li>
				<li id="menu_4" class="gm_4">
					<h3>
						<a href="#">
							<img src="<c:url value='/resources/img/index/gnb4_on.jpg'/>" alt="SKT법인대리점" style='cursor:pointer'/>
						</a>
					</h3>
                </li>
				<li id="menu_5" class="gm_5">
					<h3>
						<a href="#">
							<img src="<c:url value='/resources/img/index/gnb5_on.jpg'/>" alt="주요실적" style='cursor:pointer'/>
						</a>
					</h3>
                </li>
				<li id="menu_6" class="gm_6">
					<h3>
						<a href="#">
							<img src="<c:url value='/resources/img/index/gnb6_on.jpg'/>" alt="회사소개" style='cursor:pointer'/>
						</a>
					</h3>
                </li>
			</ul>
			<div id='admin'>
				<img src="<c:url value='/resources/img/index/gnb7_on.jpg'/>" class="allbtn" alt="관리자페이지" id="new_gnb_all" style='cursor:pointer'/>
			</div>
</div> 

<div id="gnbBg"></div>
</div>--%>
<script>
$(document).ready(function(){
	$('#idx01').click(function(){  // 로고
		document.location.href="${pageContext.request.contextPath}/home/home.do";
	});
	$('#idx02').click(function(){  // 홈
		document.location.href="${pageContext.request.contextPath}/home/home.do";
	});
	
	$('#idx03').click(function(){  // 회사소개
		document.location.href="${pageContext.request.contextPath}/home/menu_6.do";
	});
	$('#idx04').click(function(){  // 주요실적
		document.location.href ="${pageContext.request.contextPath}/home/menu_5.do";
	});
	$('#idx05').click(function(){ //관리자페이지
		document.location.href = "${pageContext.request.contextPath}/loginform.do";
	});
	
});

</script>


