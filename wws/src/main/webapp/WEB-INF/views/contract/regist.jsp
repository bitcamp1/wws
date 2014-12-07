<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<div id='joinForm'>
	<form action='${pageContext.request.contextPath}/contract/regist.do' method='post' >
		<table class='table_style'>
			<tr>
				<td colspan='2'style='background-color: #04BF00; color:white'>가입조건등록</td>
			</tr>
			<tr>
				<td>가입유형</td>
				<td><input type='text' id='joinType' name='joinType'></td>
			</tr>
			<tr>
				<td>가입비</td>
				<td><input id='joinFee' name='joinFee'></td>
			</tr>
			<tr>
				<td>유심</td>
				<td><input type='text' id='usim' name='usim'></td>
			</tr>
			<tr>
				<td>할부원금</td>
				<td><input type='text' id='installPrice' name='installPrice'></td>
			</tr>
			<tr>
				<td>할부개월</td>
				<td><input type='text' id='installMonth' name='installMonth'></td>
			</tr>
			<tr>
				<td>페이지</td>
				<td><input type='text' id='joinNm' name='joinNm'></td>
			</tr>
			<tr>
				<td colspan=2><input  type="submit" value="등록" class='btn' >
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