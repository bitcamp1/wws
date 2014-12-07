<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<div id='joinForm'>
	<form action='${pageContext.request.contextPath}/admin/regist.do' method='post' >
		<table class='table_style'>
			<tr>
				<td colspan='2'style='background-color: #04BF00; color:white'>관리자등록</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type='text' id='id' name='id'class='input_style'></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input id='pwd' name='pwd'class='input_style'></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type='text' id='name' name='name'class='input_style'></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type='text' id='phone' name='phone'class='input_style'></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type='text' id='email' name='email'class='input_style'></td>
			</tr>
			<!-- <tr>
				<td>권한</td>
				<td><input type='text' id='auth' name='auth'class='input_style'></td>
			</tr> -->
			<tr>
				<td colspan=2><input  type="submit" value="등록" class="btn" >
			<input  type="submit" value="닫기" id='closeBtn' class="btn"></td>
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