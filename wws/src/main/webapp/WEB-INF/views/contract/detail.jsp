<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<form action="${pageContext.request.contextPath }/contract/edit.do?idx=${contract.ctrIdx}" method="post">
	<table class='table_style'>
	<tr>
		<td>번호</td>
		<td><input type="text" name="idx" value="${contract.ctrIdx}" style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>가입유형</td>
		<td> <input type="text" name="joinType" value="${contract.joinType }">
		</td>
		
	</tr>
	<tr>
		<td>가입비</td>
		<td><input type="text" name="joinFee" value="${contract.joinFee}"placeholder="숫자만 입력가능">원
		</td>
		
	</tr>
	<tr>
		<td>유심</td>
		<td><input type="text" name="usim" value="${contract.usim}" placeholder="숫자만 입력가능">원
		</td>
		
	</tr>
	<tr>
		<td>할부원금</td>
		<td><input type="text" name="installPrice" value="${contract.installPrice}"placeholder="숫자만 입력가능">원
		</td>
		
	</tr>
	<tr>
		<td>할부개월</td>
		<td><input type="text" name="iMonth" value="${contract.iMonth}"placeholder="숫자만 입력가능">월
		</td>
		
	</tr>
	<tr>
		<td>페이지</td>
		<td><input type="text" name="joinNm" value="${contract.joinNm}">
		</td>
		
	</tr>
	<tr>
		<td>등록일</td>
		<td><input type="text" name="rgstDate" value="<fmt:formatDate value="${contract.rgstDate}" pattern="yyyy-MM-dd"/>"style='border:0px;'  readonly>
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
		location.href="${pageContext.request.contextPath}/contract/list.do";
	}
</script>

