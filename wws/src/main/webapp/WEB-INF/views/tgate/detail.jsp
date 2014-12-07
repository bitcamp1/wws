<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<form action="${pageContext.request.contextPath }/tgate/edit.do?idx=${tgate.tgIdx}" method="post">
	<table class='table_style'>
	<tr>
		<td>번호</td>
		<td><input type="text" name="id" value="${tgate.tgIdx}" readonly style='border:0'/>
		</td>
		
	</tr>
	<tr>
		<td>고객사ID</td>
		<td> <input type="text" name="custId" value="${tgate.custId}" readonly style='border:0'>
		</td>
		
	</tr>
	<tr>
		<td>고객사</td>
		<td> <input type="text" name="customer" value="${tgate.csBean.customer}" readonly style='border:0'>
		</td>
		
	</tr>
	<tr>
		<td>단말기 모델</td>
		<td><input type="text" name="mobile" value="${tgate.model}"readonly style='border:0'>
		</td>
		
	</tr>
	<tr>
		<td>가입유형</td>
		<td><input type="text" name="joinType" value="${tgate.ctBean.joinNm}"readonly style='border:0'>
		</td>
		
	</tr>
	<tr>
		<td>요금제</td>
		<td><input type="text" name="tariff" value="${tgate.tfBean.tariff}"readonly style='border:0'>
		</td>
		
	</tr>
	<tr>
		<td>할부원금</td>
		<td><input type="text" name="totalPrice" value="${tgate.totalPrice}">
		</td>
		
	</tr>
	<tr>
		<td>신청서URL</td>
		<td><input type="text" name="tgUrl" value="${tgate.tgUrl}"readonly style='border:0'>
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
		location.href="${pageContext.request.contextPath}/tgate/list.do";
	}
</script>

