<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    

<style>
 	#content2 th{font-size: 12px;background-color: #ddd;width:1200px;height:20px;border:1px solid gray;}
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
 
 <%@ include file="oper_srch_input.jsp" %>
 <%@ include file="oper_srch.jsp" %>
<table id='subtitle' class="subtitle">
	<tr>
		<td class="subtitle_subject">설치팀관리</td>
		<td class="subtitle_etc"></td>
	</tr>
</table>

<table id='content2' class='tp_list1'>
	<tr >
		<th style='width:20px;'><input type="checkbox"/></th>
		<th style='width:200px;'>ID</th>
		<th style='width:200px;'>비밀번호</th>
		<th style='width:200px;'>회사</th>
		<th style='width:300px;'>이름</th>
		<th style='width:150px;'>직급</th>
		<th style='width:300px;'>전화번호</th>
		<th style='width:300px;'>이메일</th>
	</tr>

</table>

<script>
$(function(){
	$('#name').click(function(){window.open('${pageContext.request.contextPath}/credit/name.do');});
});
</script>