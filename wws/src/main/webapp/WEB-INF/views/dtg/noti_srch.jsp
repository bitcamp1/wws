<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/dtg/noti.css"/>

<table class="tp_form1">
	<tr height="30">
		<td class="formhead1">ㆍ검색필드</td>
		<td class="listhead0 pdl7" colspan="3">
            
		    <select name="openCode" onchange="document.schFrm.submit();">
	    		<option value="">::작성자::</option>
	    		<option value='WKRE90907790'>김민구</option>
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