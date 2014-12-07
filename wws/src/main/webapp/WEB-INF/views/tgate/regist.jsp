<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<div id='joinForm'>
	<form action='${pageContext.request.contextPath}/tgate/regist.do' method='post' >
		<table class='table_style'>
			<tr>
				<td colspan='2'style='background-color: #04BF00; color:white'>TGate등록</td>
			</tr>
			<tr>
				<td>고객사ID</td>
				<td><input type='text' id='custId' name='custId'class='input_style'></td>
			</tr>
			<tr>
				<td>단말기 모델</td>
				<td><input id='model' name='model'class='input_style'></td>
			</tr>
			<tr>
				<td>가입유형</td>
				<td><input type='text' id='joinType' name='joinType'class='input_style'></td>
			</tr>
			<tr>
				<td>요금제ID</td>
				<td><input type='text' id='joinType' name='tffIdx'class='input_style'></td>
			</tr>
			<tr>
				<td>TGATE-Link</td>
				<td><input type='text' id='tgUrl' name='tgUrl'class='input_style'></td>
			</tr>
			<tr>
				<td>신청서URL</td>
				<td><input type='text' id='tgUrl' name='tgUrl' class='input_style'></td>
			</tr>
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