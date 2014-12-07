<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	
<style>
/* table 기본설정(입력(수정)폼/리스트) ***********************************************************************************************************************************/
table.tp_form1 tr     {width:1180px;height:30px;  }
table.tp_form1 td   { border:1px solid #DADADA; }
table.tp_form1 td.formhead80 { width:105px; padding:3px 0 0 5px; color:#505050; background:#ddd; }
table.tp_form1 td.formhead1 { width:110px; padding:3px 0 0 10px; color:#505050; background:#ddd; }
table.tp_form1 td.formhead2 { width:110px; padding:3px 0 0 8px; color:#505050; background:#ddd; }
table.tp_form1 td.formhead3 { width:80px; padding:3px 0 0 5px; color:#505050; background:#ddd; }
table.tp_form1 td.formhead4 { width:110px; padding:3px 0 0 5px; color:#505050; background:#ddd; }
table.tp_form1 td.addhead   { width:100px; padding:3px 0 0 0px; color:#505050; background:#ddd; }
table.tp_form1 td.list0 { background:#FFFFFF; border-top:1px solid #505050; border-left:1px solid #FFFFFF; border-right:1px solid #FFFFFF; border-bottom:1px solid #FFFFFF; }
table.tp_form1 td.statelist0    { background:#FFFFFF; border-top:1px solid #505050; border-left:1px solid #FFFFFF; border-right:1px solid #FFFFFF; border-bottom:1px solid #FFFFFF; }

table.tp_list1      { border:1px solid #DADADA; }
table.tp_list1 tr   {  }
table.tp_list1 th.listhead1 { text-align:center; padding:3px 0 0 0; font-weight:bold;  color:#505050; font-size: 11px;background:#ddd;}
table.tp_list1 th.listhead0 { text-align:center; padding:3px 0 0 0; ; font-weight:bold;   color:#505050;  background:#ddd; }
table.tp_list1 td.list1 { background:#FFFFFF; url(/images/bg_list_vline01.gif) no-repeat 100% 50%; border-top:1px solid #DADADA; text-align:center; }
table.tp_list1 td.list0 { background:#FFFFFF; border-top:1px solid #DADADA; text-align:center;}
table.tp_list1 td.memo0 { border-top:1px solid #FFFFFF; border-left:1px solid #FFFFFF; border-right:1px solid #FFFFFF; border-bottom:1px solid #FFFFFF;color:#ffffff; background:#ddd; }


#search_input{width:99%;}	
</style>
<form name="schFrm" method="get" action="">
<table id='search_input' class="subtitle">
	
	<tr height="26">
		<td class="subtitle_subject" width="230" valign="top" >상세검색</td>
		<td class="subtitle_etc">
            <select name="sitem">
            	<option value="" selected>검색조건</option>
	            <option value="name">고객명</option>
	            <option value="socno">주민번호</option>
	            <option value="cell">휴대번호</option>
            </select>
            <input type="text" name="stext" value="" class="input_text imea" size="25" onkeydown="if (event.keyCode == 13) {document.schFrm.submit();}">&nbsp;&nbsp;
            <input type="button" value=" 검 색 " id='btn_srch' class="button04 h20" />&nbsp;&nbsp;&nbsp;
            <input type="button" value=" 고객등록 " id='btn_regi'  class="button02 h25"/>
		</td>
	</tr>
</table>
</form>
<script>
$(function(){
	$('#btn_regi').click(function(){window.open('${pageContext.request.contextPath}/dtg/mem_regi.do','popup','width=1000,height=750');});
});
	
</script>