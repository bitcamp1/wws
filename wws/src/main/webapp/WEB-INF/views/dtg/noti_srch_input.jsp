<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dtg/noti.css"></link>	

<table id='search_input' class="subtitle">
	
	<tr height="26">
		<td class="subtitle_subject" width="230" valign="top" >상세검색</td>
		<td class="subtitle_etc">
          
            <input type="text" name="stext" value="" class="input_text imea" size="25" onkeydown="if (event.keyCode == 13) {document.schFrm.submit();}">&nbsp;&nbsp;
            <input type="button" value=" 검 색 " class="button04 h20" onclick="document.schFrm.submit();">&nbsp;&nbsp;&nbsp;
            <input id='btn_regi' type="button" value=" 신규등록 " class="button02 h25" />
		</td>
	</tr>
</table>
<script>
$(function(){
	$('#btn_regi').click(function(){window.open('${pageContext.request.contextPath}/dtg/noti_regi.do','popup','width=500,height=700');});
});
	
</script>