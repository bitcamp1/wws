<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="new_mayorWrap">
				
	<img src="<c:url value='/resources/img/index/information.jpg'/>" alt="고객상담전화번호" />
	
	<div  style='margin-bottom:10px;'>
		<img src="<c:url value='/resources/img/index/customer_center_service.jpg'/>" style='cursor:pointer' alt="제휴신청" id='ccs'/>
	</div>
	<div class="manifesto"><!-- qna -->
		
			<img src="<c:url value='/resources/img/index/fnq.jpg'/>" alt="Q&A" />
		
	</div>
</div>
<script>
	$(document).ready(function(){
		$('#ccs').click(function(){
			document.location.href = "${pageContext.request.contextPath}/home/navi_3.do";
		});
	});

</script>