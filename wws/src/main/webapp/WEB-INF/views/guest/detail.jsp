<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<form action="${pageContext.request.contextPath }/guest/edit.do?idx=${guest.gstIdx}" method="post">
	<table class='table_style'>
	<tr>
		<td>번호</td>
		<td><input type="text" name="idx" value="${guest.gstIdx}" style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>이름</td>
		<td> <input type="text" name="name" value="${guest.name }"style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="phone" value="${guest.phone}">
		</td>
		
	</tr>
	<tr>
		<td>생년월일</td>
		<td><input type="text" name="birth" value="${guest.birth}" style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>성별</td>
		<td><input type="text" name="gender" value="${guest.gender}" style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>고객정보</td>
		<td><input type="text" name="info" value="${guest.info}">
		</td>
		
	</tr>
	<tr>
		<td>사은품</td>
		<td><input type="text" name="provide" value="${guest.provide}">
		</td>
		
	</tr>
	<tr>
		<td>등록일자</td>
		<td><input type="text" name="rgstDate" value="<fmt:formatDate value="${guest.rgstDate}" pattern="yyyy-MM-dd"/>"style='border:0px;' readonly>
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
		location.href="${pageContext.request.contextPath}/guest/list.do";
	}
</script>

