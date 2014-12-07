<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<table cellspacing="0" cellpadding="0" width="960" border="0" background="/DESIGN_SKIN/website_skin_002/images/topmenu_back.jpg">
	<tbody><tr height="33">
		
				<form name="frmLogin" id="frmLogin" method="POST" action="#" onsubmit="return chkValue(this)"></form>
				<input type="hidden" name="RtnUrl" value="/Default.asp?">
				<td width="24" style="PADDING-LEFT:4pt"><img src="/DESIGN_SKIN/website_skin_002/images/id.gif"></td>
				<td width="80"><input type="text" name="userid" size="12" maxlength="16"></td>
				<td width="31" style="PADDING-LEFT:2pt"><img src="/DESIGN_SKIN/website_skin_002/images/pw.gif"></td>
				<td width="80"><input type="password" name="passwd" size="12" maxlength="16"></td>
				<td width="46" style="PADDING-LEFT:2pt"><input type="image" src="/DESIGN_SKIN/website_skin_002/images/login.gif" border="0" alt="로그인" class="INPUT_NONE"></td>
				<td width="57" style="PADDING-LEFT:1pt"><a href="javascript:window.open('/DESIGN_SKIN/website_skin_002/MEMBER/member_intro.asp', '무료회원가입', 'width=100, height=100, scrollbars=yes, left=100, top=0');void(0);" title="무료회원가입"><img src="/DESIGN_SKIN/website_skin_002/images/member_join.gif"></a></td>
				
			
		<td align="right" style="PADDING-RIGHT:10pt">
			<a href="/?_pageVariable=MYPAGE&amp;_pageMenu=Mypage">My페이지</a>&nbsp;|&nbsp;
			<a href="/?_pageVariable=CUSTOMER">처음사용자 이용안내</a>&nbsp;|&nbsp;
			<a href="/SAYBOARD_BBS/sayboard.say?mtype=L&amp;group=qna&amp;category=devlec_notice&amp;sm=0">게시판</a>&nbsp;|&nbsp;
			<a href="/?_pageVariable=COMPANY">회사소개</a>
		</td>
	</tr>
</tbody></table>