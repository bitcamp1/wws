<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<style>

#rgstBtn {float:right;margin:5px 50px 0 0;}
</style>

<div id='wrap_admin'>
	<%@ include file='../common/title.jsp' %>
	<div id='admin_container'>
	
	<%@ include file='../common/gnb.jsp' %>
	<table id='admin_table' class='table_style'>
		<tr>
			<td colspan='7' style='text-align=right; border=#fff'>
			<form id="frm" name="frm" method="post" 
			action="${pageContext.request.contextPath }/admin/search.do" onsubmit="return chkSubmit(this);">
				<span>사원관리</span>
				<input type='button' class='btn' value='관리자등록' id='rgstBtn' />
				
				</form>
			</td>
		</tr>
		<tr >
			<th class='tab_no' style='width:5%'>번호</th>
			<th class='tab_col' style='width:15%'>관리자</th>
			<th class='tab_col' style='width:20%'>아이디</th>
			<th class='tab_col' style='width:20%'>이메일</th>
			<th class='tab_col' style='width:15%'>전화번호</th>
			<th class='tab_col' style='width:15%'>등록일</th>
			<th class='tab_col'style='width:15%'>수정/삭제</th>
		</tr>	
		<tr>
		<c:forEach var="list" items="${list}">
			<tr>
				<td>${list.admIdx }</td>
				<td>${list.name}</td>
				<td>${list.id }</td>
				<td>${list.email}</td>
				<td>${list.phone }</td>
				<td>
					<fmt:formatDate value="${list.rgstDate }" pattern="yyyy-MM-dd"/>
				</td>
				<td> 
					<a href='${pageContext.request.contextPath }/admin/detail.do?idx=${list.admIdx}' 
					id='editBtn'>수정</a> 
					/ 
					<a href='${pageContext.request.contextPath }/admin/delete.do?idx=${list.admIdx}' 
					id='delBtn'>삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<c:if test="${currentPage != 1 }">
		<a href="${pageContext.request.contextPath }/admin/list.do?pageNo=${currentPage - 1}">[PREV]</a>
	</c:if>
		<c:forEach begin="1" end="${noOfPages }" var="i">
			<c:choose>
				<c:when test="${currentPage eq i }">
					${i}
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath }/admin/list.do?pageNo=${i}">${i }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	<c:if test="${currentPage lt noOfPages }">
		<a href="${pageContext.request.contextPath }/admin/list.do?pageNo=${currentPage+1}">[NEXT]</a>
	</c:if>
</div></div>

<%@ include file='../common/footer.jsp' %>
<script>
	$(document).ready(function(){
		
		$('#rgstBtn').click(function(){
			window.open('${pageContext.request.contextPath}/admin/registform.do','admin_registpage'
					,'width=600, height=500,toolbar=no, menubar=no');
		});
		/* $('#editBtn').click(function(){
			window.open('','admin_editpage','width=600, height=500,toolbar=no,menubar=no');
		});  */
		$('#delBtn').click(function(){
			alert('삭제하시겠습니까?');
		});
	});
	function chkValid(){
		if(document.frm.srch.value==""){
			alert("검색어를 입력해 주세요.");
			$('#admSrch').focus();
			return false;
			
		}else{
			alert("검색 진행중입니다");
			return false;
		}
		return true;
	}
</script>
