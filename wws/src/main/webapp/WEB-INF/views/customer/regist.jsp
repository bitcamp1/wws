<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<div id='joinForm'>
	<form action='${pageContext.request.contextPath}/customer/regist.do' method='post' >
		<table class='table_style'>
			<tr>
				<td colspan='2'style='background-color: #04BF00; color:white'>고객사등록</td>
			</tr>
			<tr>
				<td>ID</td>
				<td><input type='text' id='custId' name='custId'class='input_style'></td>
			</tr>
			<tr>
				<td>고객사</td>
				<td><input type='text' id='customer' name='customer'class='input_style'></td>
			</tr>
			<tr>
				<td>사업자번호</td>
				<td><input type='text' id='bizNo' name='bizNo'class='input_style'></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type='text' id='phone' name='phone'class='input_style'></td>
			</tr>
			<tr>
				<td>매니저</td>
				<td><input type='text' id='manager' name='manager'class='input_style'></td>
			</tr>
			<tr>
				<td>매니저:전화번호</td>
				<td><input type='text' id='mgrTel' name='mgrTel'class='input_style'></td>
			</tr>
			<tr>
				<td>매니저:휴대폰</td>
				<td><input type='text' id='mgrCel' name='mgrCel'class='input_style'></td>
			</tr>
			<tr>
				<td>매니저:이메일</td>
				<td><input type='text' id='mgrEmail' name='mgrEmail'class='input_style'></td>
			</tr>
			<tr>
				<td>파트너</td>
				<td><input type='text' id='partner' name='partner'class='input_style'></td>
			</tr>
			<tr>
				<td>파트너:전화번호</td>
				<td><input type='text' id='ptrTel' name='ptrTel'class='input_style'></td>
			</tr>
			<tr>
				<td>파트너:휴대전화</td>
				<td><input type='text' id='ptrCel' name='ptrCel'class='input_style'></td>
			</tr>
			<tr>
				<td>파트너:이메일</td>
				<td><input type='text' id='ptrEmail' name='ptrEmail'class='input_style'></td>
			</tr>
			<!-- <tr>
				<td>진행상황</td>
				<td><input type='radio' id='posting' name='posting' value='true'>진행중
				<input type='radio' id='posting' name='posting' value='false' checked>중단
				</td>
			</tr> -->
			<tr>
				<td colspan=2><input  type="submit" value="등록" class='btn' >
				<input  type="submit" value="닫기" id='closeBtn' class='btn' ></td>
			</tr>
		</table>
		<c:if test="${checkDupl==1}"><p style='color: red; font-style: bold'>중복된 ID입니다<p></c:if>
	</form>
</div>
<script>
$('#closeBtn').click(function(){
	
		opener.location.reload(true); 
		self.close();
		event.stopImmediatePropagation();
});

</script>