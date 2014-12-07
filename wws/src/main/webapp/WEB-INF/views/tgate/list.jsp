<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
%>


<div id='wrap_admin'>
	<%@ include file='../common/title.jsp' %>
	<div id='admin_container'>
	
	<%@ include file='../common/gnb.jsp' %>
	<table id='admin_table' class='table_style'>
		<tr>
			<td colspan='8' style='text-align=right; border=#fff'>
			<form id="frm" name="frm" method="post" 
			action="${pageContext.request.contextPath }/tgate/search.do" onsubmit="return chkSubmit(this);">
				<span>TGATE관리</span>
				<!-- <input type='button' class='btn' value='TGATE등록' id='rgstBtn' />
				<input type='text'  id='srch' name='srch'/>
				<input type="button" class='btn' value='TGATE검색' onclick="javascript:chkValid();"/> 일단 기능 구현 미룸-->
				</form>
			</td>
		</tr>
		<tr >
			<th class='tab_no' style='width:10px' >번호</th>
			<th class='tab_col'>고객사</th>  <!-- customer -->
			<th class='tab_col'>단말기모델</th> <!-- mobile -->
			<th class='tab_col'>가입유형</th> <!-- contract -->
			<th class='tab_col'>요금제</th> <!-- tariff -->
			<th class='tab_col'>할부원금</th> <!-- salesPrice -->
			<th class='tab_col'>TGATE-Link</th><!-- tgate-link -->
			<th class='tab_col'>수정/삭제</th>
		</tr>	
		<tr>
		<c:forEach var="list" items="${list}">
			<tr>
				<td>${list.tgIdx }</td>
				<td>${list.csBean.customer}</td>
				<td>${list.model}</td>
				<td>${list.ctBean.joinNm}</td>
				<td>${list.tfBean.tariff}</td>
				<td><fmt:formatNumber value="${list.totalPrice}" groupingUsed="true"/>원</td>
				<td><a href='${list.tgUrl}'>${list.tgUrl}</a></td>
				<td> 
					<a href='${pageContext.request.contextPath }/tgate/detail.do?idx=${list.tgIdx}' 
					id='editBtn'>수정</a> 
					/ 
					<a href='${pageContext.request.contextPath }/tgate/delete.do?idx=${list.tgIdx}' 
					id='delBtn'>삭제</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	
	<c:if test="${currentPage != 1 }">
		<a href="${pageContext.request.contextPath }/tgate/list.do?pageNo=${currentPage - 1}">[PREV]</a>
	</c:if>
		<c:forEach begin="1" end="${noOfPages }" var="i">
			<c:choose>
				<c:when test="${currentPage eq i }">
					${i}
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath }/tgate/list.do?pageNo=${i}">${i }</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	<c:if test="${currentPage lt noOfPages }">
		<a href="${pageContext.request.contextPath }/tgate/list.do?pageNo=${currentPage+1}">[NEXT]</a>
	</c:if>
</div></div>

<%@ include file='../common/footer.jsp' %>
<script>
	$(document).ready(function(){
		
		$('#rgstBtn').click(function(){
			window.open('${pageContext.request.contextPath}/tgate/registform.do','tgate_registpage'
					,'width=600, height=500,toolbar=no, menubar=no');
		});
	/* 	$('#editBtn').click(function(){
			window.open('','tgate_editpage','width=600, height=500,toolbar=no,menubar=no');
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
