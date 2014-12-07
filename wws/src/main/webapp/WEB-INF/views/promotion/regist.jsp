<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<div id='joinForm'>
	<form action='${pageContext.request.contextPath}/promotion/regist.do' method='post' >
		<table class='table_style'>
			<tr>
				<td colspan='2'style='background-color: #04BF00; color:white'>프로모션등록</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type='text' id='title' name='title'class='input_style'></td>
			</tr>
			<tr>
				<td>상품</td>
				<td><input id='goods' name='goods'class='input_style'></td>
			</tr>
			<tr>
				<td>메시지</td>
				<td><input type='text' id='message' name='message'class='input_style'></td>
			</tr>
			<tr>
				<td>이미지</td>
				<td><input type='text' id='message' name='message'class='input_style'></td>
			</tr>
			<tr >
				<td colspan='2'><input  type="submit" value="등록"  class='btn'>
				<input  type="submit" value="닫기" id='closeBtn' class='btn'></td>
			</tr>
		</table>
	</form>
</div>
<script>
$('#closeBtn').click(function(){
	
		opener.location.reload(true); 
		self.close();
	
});

</script>