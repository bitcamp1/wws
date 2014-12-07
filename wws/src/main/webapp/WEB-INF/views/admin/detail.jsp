<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<form action="${pageContext.request.contextPath }/admin/edit.do?idx=${admin.admIdx}" method="post">
	<table class='table_style'>
	<tr>
		<td>번호</td>
		<td><input type="text" name="idx" value="${admin.admIdx}" style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>아이디</td>
		<td> <input type="text" name="id" value="${admin.id }"style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pwd" value="${admin.pwd}">
		</td>
		
	</tr>
	<tr>
		<td>비밀번호 확인</td>
		<td><input type="password" name="pwd2" value="${admin.pwd}">
		</td>
		
	</tr>
	<tr>
		<td>이름</td>
		<td><input type="text" name="name" value="${admin.name}"style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>휴대폰</td>
		<td><input type="text" name="phone" value="${admin.phone}">
		</td>
		
	</tr>
	<tr>
		<td>이메일</td>
		<td><input type="text" name="email" value="${admin.email}">
		</td>
		
	</tr>
	<tr>
		<td>권한</td>
		<td><input type="text" name="auth" value="${admin.auth}">
		</td>
		
	</tr>
	<tr>
		<td>등록일</td>
		<td><input type="text" name="rgstDate" value="<fmt:formatDate value="${admin.rgstDate}" pattern="yyyy-MM-dd"/>"style='border:0px;'  readonly>
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
		location.href="${pageContext.request.contextPath}/admin/list.do";
	}
</script>

