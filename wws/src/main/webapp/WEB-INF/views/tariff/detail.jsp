<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<form action="${pageContext.request.contextPath }/tariff/edit.do?idx=${tariff.tffIdx}" method="post">
	<table class='table_style'>
	<tr>
		<td>번호</td>
		<td><input type="text" name="idx" value="${tariff.tffIdx}" style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>요금제</td>
		<td> <input type="text" name="tariff" value="${tariff.tariff}"style='border:0px;'  readonly>
		</td>
		
	</tr>
	<tr>
		<td>가격</td>
		<td><input type="text" name="price" value="${tariff.price}">
		</td>
		
	</tr>
	<tr>
		<td>음성</td>
		<td><input type="text" name="tffId" value="${tariff.tffId}">
		</td>
		
	</tr>
	<tr>
		<td>문자</td>
		<td><input type="text" name="letter" value="${tariff.letter}">
		</td>
		
	</tr>
	<tr>
		<td>데이터</td>
		<td><input type="text" name="data" value="${tariff.data}">
		</td>
		
	</tr>
	<tr>
		<td>MVOIP</td>
		<td><input type="text" name="mvoip" value="${tariff.mvoip}">
		</td>
		
	</tr>
	<tr>
		<td>할인금액</td>
		<td><input type="text" name="discount" value="${tariff.discount}">
		</td>
		
	</tr>
	
	<tr>
		<td>등록일자</td>
		<td><input type="text" name="discount" value="<fmt:formatDate value="${tariff.rgstDate}" pattern="yyyy-MM-dd"/>"style='border:0px;'  readonly>
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
		location.href="${pageContext.request.contextPath}/tariff/list.do";
	}
</script>

