<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<form action="${pageContext.request.contextPath }/customer/edit.do?idx=${customer.custIdx}" method="post">
	<table class='table_style'>
	<tr>
		<td>번호</td>
		<td><input type="text" name="idx"  id='idx' value="${customer.custIdx}" style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>고객사</td>
		<td> <input type="text" name="customer" value="${customer.customer }"style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>사업자번호</td>
		<td><input type="text" name="bizNo" value="${customer.bizNo}" style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>전화번호</td>
		<td><input type="text" name="phone" value="${customer.phone}">
		</td>
		
	</tr>
	<tr>
		<td>매니저</td>
		<td><input type="text" name="manager" value="${customer.manager}">
		</td>
		
	</tr>
	<tr>
		<td>매니저:전화번호</td>
		<td><input type="text" name="mgrTel" value="${customer.mgrTel}">
		</td>
		
	</tr>
	<tr>
		<td>매니저:휴대전화</td>
		<td><input type="text" name="mgrCel" value="${customer.mgrCel}">
		</td>
		
	</tr>
	<tr>
		<td>매니저:이메일</td>
		<td><input type="text" name="mgrEmail" value="${customer.mgrEmail}">
		</td>
		
	</tr>
	
	<tr>
		<td>파트너</td>
		<td><input type="text" name="partner" value="${customer.partner}">
		</td>
		
	</tr>
	<tr>
		<td>파트너:전화번호</td>
		<td><input type="text" name="ptrTel" value="${customer.ptrTel}">
		</td>
		
	</tr>
	<tr>
		<td>파트너:휴대전화</td>
		<td><input type="text" name="ptrCel" value="${customer.ptrCel}">
		</td>
		
	</tr>
	<tr>
		<td>파트너:이메일</td>
		<td><input type="text" name="ptrEmail" value="${customer.ptrEmail}">
		</td>
		
	</tr>
	<tr>
		<td>진행상황</td>
		<td><input type="text" name="posting" value="${customer.posting}">
		</td>
		
	</tr>
	<tr>
		<td>등록일자</td>
		<td><input type="text" name="rgstDate" value="<fmt:formatDate value="${customer.rgstDate}" pattern="yyyy-MM-dd"/>"style='border:0px;'  readonly>
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
		location.href="${pageContext.request.contextPath}/customer/list.do";
	}
</script>

