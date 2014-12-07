<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
    #contents_row_2 {position:relative; overflow:hidden; height:80px; width:1200px;}
	#contents_row_2_cell_1 { float:right;cursor:pointer;margin-right:50px;}  /* 파트너소개 */ 
	#contents_row_2_cell_2 { float:right;cursor:pointer;margin-right:50px;} /* 찾아오는 길 */
	#contents_row_2_cell_3 { float:right;cursor:pointer;margin-right:70px;} /* 공지사항 */
	
</style>
	
	<img id='contents_row_2_cell_3' src="<c:url value='/resources/img/home/contents_row_2_cell_3.png'/>"/> <!-- 공지사항 -->
	<img id='contents_row_2_cell_2' src="<c:url value='/resources/img/home/contents_row_2_cell_2.gif'/>"/> <!-- 찾아오는 길 -->
	<img id='contents_row_2_cell_1' src="<c:url value='/resources/img/home/contents_row_2_cell_1.gif'/>"/> <!-- 파트너소개 -->
	
<script>
	
$('#contents_row_2_cell_2').click(function(){document.location.href="${pageContext.request.contextPath}/home/jido.do";});  /* 찾아오는길  */
$('#contents_row_2_cell_3').click(function(){document.location.href="${pageContext.request.contextPath}/home/notice.do";});  /* 공지사항  */
$('#contents_row_2_cell_1').click(function(){document.location.href="${pageContext.request.contextPath}/home/partner.do";});  /* 파트너소개  */
</script>