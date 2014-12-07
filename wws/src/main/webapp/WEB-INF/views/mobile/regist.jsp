<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<div id='joinForm'>
	<form name="frm" method='post' >
		<table class='table_style' id='fileTbl'>
			<tr>
				<td colspan='2' style='background-color: #04BF00; color:white'>휴대폰등록</td>
			</tr>
			<tr>
				<td>제조사</td>
				<td>
					<input type="checkbox"  name='company' value='samsung'>삼성
					<input type="checkbox"  name='company' value='lg'>LG
					<input type="checkbox"  name='company' value='pantec'>팬택
					<input type="checkbox"  name='company' value='apple'>애플
					<input type="checkbox"  name='company' value='htc'>HTC
					<input type="checkbox"  name='company' value='etc'>기타<br>
				</td>
			</tr>
			<tr>
				<td>단말기</td>
				<td><input type='text' id='mobile' name='mobile'class='input_style' ></td>
			</tr>
			<tr>
				<td>모델명</td>
				<td><input type='text' id='model' name='model'class='input_style'></td>
				
			</tr>
			<tr>
				<td>가격</td>
				<td><input type='text' id='price' name='price' placeholder='숫자만 입력하세요'class='input_style'>원</td>
			</tr>
			<tr>
				<td>상세페이지주소</td>
				<td><input type='text' id='url' name='url' class='input_style'></td>
			</tr>
			<tr>
				<td>이미지파일</td>
				<td><input type='text' id='mImg' name='mImg' class='input_style'></td>
			</tr>
			<tr>
				<td colspan=2>
				<input  type="submit" value="등록" onclick='regist()'class='btn'>
				<input  type="submit" value="닫기" id='close'class='btn'></td>
			</tr>
			
		</table>
		<c:if test="${checkDupl==1}"><p style='color: red; font-style: bold'>중복된 모델명입니다<p></c:if>
	</form>
	
	
</div>
<script>
		function regist(){
			frm.action="${pageContext.request.contextPath}/mobile/regist.do";
			frm.submit();
		}
		$('#close').click(function(){
			
				opener.location.reload(true); 
				self.close();
			
		});

</script>