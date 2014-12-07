<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<form action="${pageContext.request.contextPath }/promotion/edit.do?idx=${promotion.promIdx}" method="post">
	<table class='table_style'>
	<tr>
		<td>번호</td>
		<td><input type="text" name="idx" value="${promotion.promIdx }" readonly style='border:0px;'>
		</td>
		
	</tr>
	<tr>
		<td>타이틀</td>
		<td> <input type="text" name="title" value="${promotion.title}"readonly style='border:0px;'>
		</td>
		
	</tr>
	<tr>
		<td>상품</td>
		<td><input type="text" name="goods" value="${promotion.goods}">
		</td>
		
	</tr>
	<tr>
		<td>메시지</td>
		<td><input type="text" name="message" value="${promotion.message}">
		</td>
		
	</tr>
	<tr>
		<td>등록일자</td>
		<td><input type="text" name="rgstDate" value="<fmt:formatDate value="${promotion.rgstDate}" pattern="yyyy-MM-dd"/>"readonly style='border:0px;'>
		</td>
		
	</tr>
	
	<tr>
		<td colspan=2>
			<input type="submit" value="확인">
	<input type="button" value="닫기" onclick="javascript:goList()">
		</td>
	</tr>
	</table>

</form>
<script>
	function goList(){
		location.href="${pageContext.request.contextPath}/promotion/list.do";
	}
</script>

