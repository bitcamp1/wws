<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
/* table 기본설정(입력(수정)폼/리스트) ***********************************************************************************************************************************/
table.tp_form1      {  }
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
	
</style>

<table class="tp_form1">
	<tr height="30">
		<td class="formhead1">ㆍ검색필드</td>
		<td class="listhead0 pdl7" colspan="3">
            
		    <select name="openCode" onchange="document.schFrm.submit();">
	    		<option value="">::검색조건::</option>
	    		<option value='WKRE90907790'>이름</option>
	    		<option value='WKRE90907790'>전화번호</option>
	    		<option value='WKRE90907790'>설치팀</option>
    		</select>
    		
		    <input type="text" name="sDate" value="" size="10" class="input_text cshand imed" onclick="Calendar_D(schFrm.sDate);" readonly>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_calendar.gif"  onclick="Calendar_D(schFrm.sDate);"class="cshand"  border="0"> ~
		    <input type="text" name="eDate" value="" size="10" class="input_text cshand imed" onclick="Calendar_D(schFrm.eDate);" readonly>&nbsp;<img src="http://smtech.kradmin.co.kr/images/icon_calendar.gif"  onclick="Calendar_D(schFrm.eDate);"class="cshand"  border="0">
				<img src="http://smtech.kradmin.co.kr/images/icon_date_today.gif"  onclick="insertDate('2013-10-23','2013-10-23');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_yesterday.gif"  onclick="insertDate('2013-10-22','2013-10-22');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_thisMonth.gif"  onclick="insertDate('2013-10-01','2013-10-31');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_lastMonth.gif"  onclick="insertDate('2013-09-01','2013-09-30');" class="cshand" border="0">&nbsp;&nbsp;&nbsp;&nbsp;
	            <img src="http://smtech.kradmin.co.kr/images/icon_date_all.gif"  onclick="location.href='./?prgid=S110';" class="cshand" border="0" alt="새로고침">
		</td>
	</tr>
	
</table>