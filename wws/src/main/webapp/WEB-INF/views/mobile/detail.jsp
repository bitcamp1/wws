<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<form action="${pageContext.request.contextPath }/mobile/edit.do?idx=${mobile.mbIdx}" method="post">
	<table class='table_style'>
	<tr>
		<td>번호</td>
		<td><input type="text" name="idx" value="${mobile.mbIdx}" style='border:0px;'  readonly/>
		</td>
		
	</tr>
	<tr>
		<td>제조사</td>
		<td> <input type="text" name="company" value="${mobile.company }"style='border:0px;'  readonly/>
		</td>
		
	</tr>
	<tr>
		<td>단말기</td>
		<td><input type="text" name="mobile" value="${mobile.mobile}"style='border:0px;'  readonly/>
		</td>
		
	</tr>
	<tr>
		<td>모델</td>
		<td><input type="text" name="model" value="${mobile.model}"style='border:0px;'  readonly/>
		</td>
		
	</tr>
	<tr>
		<td>가격</td>
		<td><input type="text" name="price" value="${mobile.price}">
		</td>
		
	</tr>
	<tr>
		<td>할부개월</td>
		<td><input type="text" name="installMonth" value="${mobile.installMonth}">
		</td>
		
	</tr>
	<tr>
		<td>등록일자</td>
		<td><input type="text" name="rgstDate" value="<fmt:formatDate value="${mobile.rgstDate}" pattern="yyyy-MM-dd"/>"style='border:0px;'  readonly/>
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
		location.href="${pageContext.request.contextPath}/mobile/list.do";
	}
</script>

