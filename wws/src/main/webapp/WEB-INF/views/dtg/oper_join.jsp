<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ include file="../include/header.jsp" %>  
<link rel="stylesheet" type="css/text" href="${pageContext/request/contextPath }/resources/css/dtg_oper_join.css"/>
<div id="join_wrap">
<h1 class="main_title">
<img src="<c:url value='/resources/img/dtg/welcome.jpg'/>"/>
</h1>

<div class="member_select2">
   <div id='joinPage'>
	<div id='joinMemberContents'>

		<div class='joinMemberForm' id='joinMemberId'>
			<label for='memberId'>아이디</label> 
			<input  id='memberId' class='joinMemberInput' name="mb_id" placeholder='영문자, 숫자만 가능'/>
<!-- 			<a id="checkDuplMsg" style="margin-left: 175px;"></a> -->
		</div>

		<div class='joinMemberForm' >
			<label for='memberPwd'>패스워드</label> 
			<input class='joinMemberInput' type='password' id='memberPwd' />
		</div>

	 	<div class='joinMemberForm' id='joinMemberPassword'>
			<label for='confirmPwd'>패스워드 확인</label> 
			<input class='joinMemberInput' type='password' id='confirmPwd' /> 
		</div>
		<div class='joinMemberForm' >
			<label for='name'>이름</label> 
			<input class='joinMemberInput' type='text' id='name' name="mb_name" />
		</div>
		
		<div class='joinMemberForm'>
			<label for='email'>E-mail</label> 
			<input class='joinMemberInput' type='text' id='email' />
		</div>

		<div class='joinMemberForm' >
			<label for='phoNo'>전화번호</label> 
			<input class='joinMemberInput' type="text" id="phoNo" />
		</div>

		<div class='joinMemberForm'>
			<label for="joinMemberZipCode1">우편번호</label>
			<div id='joinMemberZipCode'>
				<input type="text" id='joinMemberZipCode1' readonly='readonly'/> 
				<div id='zipSearch'><a id='zipCodeLooking' href='#' class='wide'>검색</a></div>
			</div>
		</div>
		
		<div class='joinMemberForm' >
			<label for='addr1'>주소</label>
			<input type="text" class="joinMemberInput joinMemberAddr" id="addr1" readonly='readonly' />
		</div>
		
		<div class='joinMemberForm' >
			<label for="addr2">상세주소</label>
			<input type="text" class="joinMemberInput joinMemberAddr" id="addr2" />
		</div>
	</div>
	<!-- joinMemberContents end -->

	<div id='joinMemberBottom' style='border:0 '>
		
		
		<span  class='joinMemberBtn' id='joinCancel' style='margin-right: 10px'>
			<a href='#' style='color:#fff'>취소</a>
			</span>
			<span  class='joinMemberBtn' id='joinCancel' style='margin-left: 10px'>
			<a href='#' style='color:#fff'>회원가입</a>
			</span>
			
	</div> <!-- joinMemberBottom end -->
	
</div> <!-- joinPage end -->



</div>
<address class="copyright">Copyrightⓒ <strong>WhiteWing System</strong> Inc.All Rights Reserved.</address>
</div>

