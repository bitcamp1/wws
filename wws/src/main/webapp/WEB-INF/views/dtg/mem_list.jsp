<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    

<style>
 	#content2 th{font-size: 12px;background-color: #ddd;width:1200px;height:30px;border:1px solid gray;}
 	#subtitle{width:99%;margin:20px 0 10px 0;}
 	#subtitle tr{height:20px;}
 	#subtitle tr td.#subtitle{width:230px; valign:top;}
 	table.tp_list1      { border:1px solid #DADADA; }
	table.tp_list1 tr   {  }
	table.tp_list1 th.listhead1 { text-align:center; padding:3px 0 0 0; font-weight:bold;  color:#505050; font-size: 11px;background:#ddd;}
	table.tp_list1 th.listhead0 { text-align:center; padding:3px 0 0 0; ; font-weight:bold;   color:#505050;  background:#ddd; }
	table.tp_list1 td.list1 { background:#FFFFFF; border-top:1px solid #DADADA; text-align:center; }
	table.tp_list1 td.list0 { background:#FFFFFF; border-top:1px solid #DADADA; text-align:center;}
	table.tp_list1 td.memo0 { border-top:1px solid #FFFFFF; border-left:1px solid #FFFFFF; border-right:1px solid #FFFFFF; border-bottom:1px solid #FFFFFF;color:#ffffff; background:#ddd; }
</style>   
 
 <%@ include file="mem_srch_input.jsp" %>
 <%@ include file="mem_srch.jsp" %>
<table id='subtitle' class="subtitle">
	<tr>
		<td class="subtitle_subject">고객관리</td>
		<td class="subtitle_etc"></td>
	</tr>
</table>

<table id='content2' class='tp_list1'>
	<tr >
			<th>고객명</th>
		<th>전화번호</th>
		<th>주민번호</th>
		<th>주소</th>
		<th>운송사</th>
		<th>차량번호</th>
		<th>차대번호</th>
		<th>차량모델명</th>
		<th>모뎀모델명</th>
		<th>모뎀개통번호</th>
		<th>모뎀제품번호</th>
		<th>DTG모델켱</th>
		<th>DTG개통번호</th>
		<th>설치지점</th>
		<th>설치자</th>
		<th>연락처</th>
		<th>설치일자</th>
		<th>설치장소</th>
	</tr>

</table>

<script>
$(function(){
	$('#name').click(function(){window.open('${pageContext.request.contextPath}/credit/name.do');});
});
</script>