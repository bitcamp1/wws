<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<html><head><title>회원가입</title>
<link rel="stylesheet" href="style_member.css" type="text/css">
<script language="javascript" src="/DESIGN_SKIN/website_skin_002/js/javascript.js"></script>
<script language="javascript">
function init() {
	window.resizeTo(625,774);
}
</script>
<!-- 통계스크립트 -->
<script type="text/javascript" src="http://log.inside.daum.net/dwi_log/js/dwi.js"></script>
<script type="text/javascript">
	_dwiPID="d-7Xv-261";
	if(typeof(_dwiCatch) == "function") { _dwiCatch();}
</script>
<!-- //통계스크립트 -->
</head>

<body onload="init();">

<br>
<table cellspacing="0" cellpadding="0" width="90%" align="center" border="0">
<form name="ThisForm" method="POST" action="/KERNEL/Kernel_Member_Reg_ok.asp" enctype="MultiPart/Form-Data" _lpchecked="1"></form>


	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 회원가입공지
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tbody><tr height="4"><td bgcolor="black" colspan="10"></td></tr>
	<tr>
		<td class="f_dark" colspan="3" height="50">
			* 가입은 무료이며, 굵은 항목은 필수입니다.<br>
			* <font color="#FF0000">데브렉 사이트는 회원가입시 개인의 주민등록번호를 요구하지 않습니다.</font>
		</td>
	</tr>

	

	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 실명
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tr><td bgcolor="#efefef" colspan="3" height="1"></td></tr>
	<tr height="28">
		<td></td>
		<td class="f_dark" align="right" width="130"><b>실명</b></td>
		<td class="f_light pl20">
			<input class="in_de" maxlength="20" size="15" name="m_name">&nbsp;&nbsp; 실명이름
		</td>
	</tr>

	
	
	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 아이디
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tr><td bgcolor="#efefef" colspan="3" height="1"></td></tr>
	<tr height="48">
		<td></td>
		<td class="f_dark" align="right" width="130"><b>아이디</b></td>
		<td class="f_light pl20">
			ID 입력은 중복체크 버튼을 클릭하여 입력해주십시오!<br>
			<input class="in_de" maxlength="16" size="15" name="m_id" readonly="" onclick="javascript:alert('아이디 입력은 중복체크 버튼을 클릭하여 입력해 주십시오!!');">
			&nbsp;&nbsp;영문 3자~16자리 이하&nbsp;&nbsp; 
			<input class="in_de" type="button" name="button" value="중복체크" onclick="idSearch();">
		</td>
	</tr>
	
	
	
	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 비밀번호
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tr><td bgcolor="#efefef" colspan="3" height="1"></td></tr>
	<tr height="28">
		<td></td>
		<td class="f_dark" align="right"><b>비밀번호</b></td>
		<td class="f_light pl20">
			<input class="in_de" type="password" maxlength="12" size="15" name="m_pw">&nbsp;&nbsp; 영어,숫자만 허용(12자리)
		</td>
	</tr>
	

	
	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 비밀번호 확인
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tr><td bgcolor="#efefef" colspan="3" height="1"></td></tr>
	<tr height="28">
		<td></td>
		<td class="f_dark" align="right"><b>비밀번호 확인</b></td>
		<td class="f_light pl20">
			<input class="in_de" type="password" maxlength="12" size="15" name="m_pw2">
		</td>
	</tr>
	


	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 생년월일
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<!--TR><TD bgColor=#efefef colSpan=3 height=1></TD></TR>
	<TR height=28>
		<TD></TD>
		<TD class=f_dark align=right><B>생년월일</B></TD>
		<TD class="f_light pl20">
			<INPUT class=in_de name="m_birth_year" size=6 maxlength=4 onKeyUp="LENcheck('m_birth_year', 'm_birth_month', '4')" onKeyPress="onlyNumber();"> 년&nbsp;
			<INPUT class=in_de name="m_birth_month" size=4 maxlength=2 onKeyUp="LENcheck('m_birth_month', 'm_birth_day', '2')"  onKeyPress="onlyNumber();">	월&nbsp;
			<INPUT class=in_de name="m_birth_day" size=4 maxlength=2 onKeyUp="LENcheck('m_birth_day', 'm_sex', '2')"  onKeyPress="onlyNumber();"> 일&nbsp;&nbsp;
			<INPUT type="radio" name="m_yangeum" value="Y" checked>양력 
			<INPUT type="radio" name="m_yangeum" value="E">음력
		</TD>
	</TR-->



	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 성별
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tr><td bgcolor="#efefef" colspan="3" height="1"></td></tr>
	<tr height="28">
		<td></td>
		<td class="f_dark" align="right"><b>성별</b></td>
		<td class="f_light pl20">
			<select class="in_de" name="m_sex" size="1">
			  <option>선택
			  </option><option value="M">남자 
			  </option><option value="F">여자 
			</option></select>
		</td>
	</tr>



	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 이메일
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tr><td bgcolor="#efefef" colspan="3" height="1"></td></tr>
	<tr height="62">
		<td></td>
		<td class="f_dark" align="right"><b>이메일</b></td>
		<td class="f_light pl20">
			강좌 업데이트를 비롯한 사이트 공지사항 및 인증키발급등 필요한 메일이 발송되어지므로 꼭 수신가능한 메일 주소를 입력해 주세요!!<br>
			<input class="in_de" name="m_email" size="40" maxlength="50">
		</td>
	</tr>



	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 우편번호
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<!--TR><TD bgColor=#efefef colSpan=3 height=1></TD></TR>
	<TR height=28>
		<TD></TD>
		<TD class=f_dark align=right><B>우편번호</B></TD>
		<TD class="f_light pl20">
			<INPUT class=in_de name="m_post" size="15" maxlength="7" readonly>
			<INPUT class=in_de type="button" name="button" value="우편번호 검색" onClick="ZipSearch();" class="form"> (검색후 주소 입력)
		</TD>
	</TR-->



	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 주소
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<!--TR><TD bgColor=#efefef colSpan=3 height=1></TD></TR>
	<TR height=28>
		<TD></TD>
		<TD class=f_dark align=right><B>주소</B></TD>
		<TD class="f_light pl20">
			<INPUT class=in_de name="m_address" size="55" readonly>
		</TD>
	</TR-->



	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 전화번호
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<!--TR><TD bgColor=#efefef colSpan=3 height=1></TD></TR>
	<TR height=28>
		<TD></TD>
		<TD class=f_dark align=right><B>전화번호</B></TD>
		<TD class="f_light pl20">
			<Select class=in_de name="m_phone" size="1">
			  <option>::선택::</option>
			  <option value="02">02</option>
			  <option value="031">031</option>
			  <option value="032">032</option>
			  <option value="033">033</option>
			  <option value="041">041</option>
			  <option value="042">042</option>
			  <option value="043">043</option>
			  <option value="051">051</option>
			  <option value="052">052</option>
			  <option value="053">053</option>
			  <option value="054">054</option>
			  <option value="055">055</option>
			  <option value="061">061</option>
			  <option value="062">062</option>
			  <option value="063">063</option>
			  <option value="064">064</option>
			  <option value="050">050</option>
			  <option value="080">080</option>
			  <option value="0505">0505</option>
			  <option value="etc">etc</option>
			</Select> - 
			<INPUT class=in_de name="m_phone2" size="6" maxlength="4"> - 
			<INPUT class=in_de name="m_phone3" size="6" maxlength="4">
		</TD>
	</TR-->



	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 핸드폰
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<!--TR><TD bgColor=#efefef colSpan=3 height=1></TD></TR>
	<TR height=28>
		<TD></TD>
		<TD class=f_dark align=right><B>핸드폰</B></TD>
		<TD class="f_light pl20">
			<Select class=in_de name="m_hp" size="1">
			  <option>::선택::</option>
			  <option value="010">010</option>
			  <option value="011">011</option>
			  <option value="016">016</option>
			  <option value="017">017</option>
			  <option value="018">018</option>
			  <option value="019">019</option>
			</Select> - 
			<INPUT class=in_de name="m_hp2" size="6" maxlength="4"> - 
			<INPUT class=in_de name="m_hp3" size="6" maxlength="4">
		</TD>
	</TR-->



	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 직업
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tr><td bgcolor="#efefef" colspan="3" height="1"></td></tr>
	<tr height="28">
		<td></td>
		<td class="f_dark" align="right"><b>직업</b></td>
		<td class="f_light pl20">
			<input class="in_de" name="m_job" size="40" maxlength="50">
		</td>
	</tr>



	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 가입경로
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tr><td bgcolor="#efefef" colspan="3" height="1"></td></tr>
	<tr height="28">
		<td></td>
		<td class="f_dark" align="right">가입경로</td>
		<td class="f_light pl20">
			<input class="in_de" name="m_choo" size="40" maxlength="40" value="devlec.com" readonly="">
		</td>
	</tr>



	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 추천인 ID
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tr><td bgcolor="#efefef" colspan="3" height="1"></td></tr>
	<tr height="28">
		<td></td>
		<td class="f_dark" align="right">추천인 ID</td>
		<td class="f_light pl20">
			<input class="in_de" name="m_choochunin" size="20" maxlength="20"> (추천인 ID가 없으면 공백으로 놔두세요!)
		</td>
	</tr>



	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 아이콘 등록
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<!--TR><TD bgColor=#efefef colSpan=3 height=1></TD></TR>
	<TR height=48>
		<TD></TD>
		<TD class=f_dark align=right>캐릭터 이미지 등록</TD>
		<TD class="f_light pl20">
			용량은 300K 미만이어야하며, 작은 이미지로 등록 요망!<BR>
			<INPUT class=in_de type="file" name="m_upFile" size="40">
		</TD>
	</TR-->



	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 사진 등록
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<!--TR><TD bgColor=#efefef colSpan=3 height=1></TD></TR>
	<TR height=48>
		<TD></TD>
		<TD class=f_dark align=right>본인 사진 등록</TD>
		<TD class="f_light pl20">
			본인의 사진을 등록하면 승인 후 레벨이 [포토회원]이 됩니다.<BR>
			<INPUT class=in_de type="file" name="m_upFile" size="40">
		</TD>
	</TR-->



	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 가입인사
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tr><td bgcolor="#efefef" colspan="3" height="1"></td></tr>
	<tr height="150">
		<td></td>
		<td class="f_dark" align="right">가입인사</td>
		<td class="f_light pl20">가입인사 정도는 적어주는 센스~ :)<br>
			<textarea class="in_de" name="m_joininsa" rows="8" cols="55"></textarea>
		</td>
	</tr>
	

	
	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 버튼링크
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tr><td bgcolor="#efefef" colspan="3" height="4"></td></tr>
	<tr height="40">
		<td align="middle" colspan="3">
			<table cellspacing="0" cellpadding="0" width="100%" border="0">
				<tbody><tr>
					<td><input class="in_submit 7p" type="button" value=" WINDOW CLOSE " onclick="window.close();"></td>
					<td align="right"><input class="in_submit 7p" type="button" value="  JOIN OK  " onclick="sendit()"></td>
				</tr>
			</tbody></table>
		</td>
	</tr>


	
	<!-------------------------------------------------------------------------------------------------------------------------------------------------
	--- ■ 하단라인
	-------------------------------------------------------------------------------------------------------------------------------------------------->
	<tr height="4"><td bgcolor="black" colspan="10"></td></tr>




</tbody></table>




<script id="hiddenlpsubmitdiv" style="display: none;"></script><script>try{for(var lastpass_iter=0; lastpass_iter < document.forms.length; lastpass_iter++){ var lastpass_f = document.forms[lastpass_iter]; if(typeof(lastpass_f.lpsubmitorig2)=="undefined"){ lastpass_f.lpsubmitorig2 = lastpass_f.submit; lastpass_f.submit = function(){ var form=this; var customEvent = document.createEvent("Event"); customEvent.initEvent("lpCustomEvent", true, true); var d = document.getElementById("hiddenlpsubmitdiv"); for(var i = 0; i < document.forms.length; i++){ if(document.forms[i]==form){ d.innerText=i; } } d.dispatchEvent(customEvent); form.lpsubmitorig2(); } } }}catch(e){}</script></body></html>