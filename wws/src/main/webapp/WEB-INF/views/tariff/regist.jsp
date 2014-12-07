<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<div id='joinForm'>
	<form action='${pageContext.request.contextPath}/tariff/regist.do' method='post' >
		<table class='table_style'>
			<tr>
				<td colspan='2'style='background-color: #04BF00; color:white'class='input_style'>요금제등록</td>
			</tr>
			<tr>
				<td>요금제</td>
				<td><input type='text' id='tariff' name='tariff'class='input_style'></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input id='price' name='price'class='input_style'></td>
			</tr>
			<tr>
				<td>할인가격</td>
				<td><input type='text' id='discount' name='discount'class='input_style'></td>
			</tr>
			
			<tr>
				<td colspan='2'><input  type="submit" value="등록" class='btn' >
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