<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<div id='joinForm'>
	<form action='${pageContext.request.contextPath}/guest/regist.do' method='post' >
		<table class='table_style'>
			<tr>
				<td colspan='2'style='background-color: #04BF00; color:white'>고객등록</td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type='text' id='name' name='name'></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input id='phone' name='phone'></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td><input type='text' id='birth' name='birth'></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type='text' id='gender' name='gender'></td>
			</tr>
			<tr>
				<td>고객정보</td>
				<td><input type='text' id='info' name='info'></td>
			</tr>
			<tr>
				<td>사은품</td>
				<td><input type='text' id='provide' name='provide'></td>
			</tr>
			<tr>
				<td><input  type="submit" value="등록"  ></td>
				<td><input  type="submit" value="닫기" id='closeBtn' ></td>
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