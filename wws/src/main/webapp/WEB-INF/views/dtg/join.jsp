<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ include file="../include/header.jsp" %>  
<style>

.main_title{
	height:130px;
}
#join_wrap {
width: 95%;
height: 95%;
}
#joinPage {
    display : block;
    position: relative;
    width       : 100%;
    height      : 100%;
    margin : 0 auto;
    overflow : hidden;
}

.joinMemberForm {
    *border : 1px #FAFAFA solid;
    display : block;
    height : 40px;
    width : 600px;
    margin : 20px auto 10px auto; 
}

.joinMemberForm label {
    *background-color : #FAFAFA;
    *border : 1px blue solid;
    display : inline-block;
    float : left;
    width : 140px;
    text-align : right;
    line-height : 40px;
    *margin : 10px 0 10px 80px; 
}


#memberId.statusOk {
    background-position : 200px, 0px;
}

.statusNo {
    
}

.joinMemberInput {
    border : 1px solid #D3D4D5;
    display : block;
    width : 250px;
    height : 36px;
    margin : 0 0 0 200px;
    *outline : thin solid #D3D4D5;
    padding-left : 15px;
}

#joinMemberContents input:focus {
    *outline : thin solid #0995E0;
    border : 1px solid #0995E0;
}

#joinMemberZipCode {
    position : relative;
    *border : 1px blue solid;
    display : block;
    *float : right;
    width : 350px;
    height : 36px;
    *margin-top : -70px;
    margin-left : 200px;
}

#joinMemberZipCode1 {
    border : 1px #D3D4D5 solid;
    float : left;
}
#joinMemberZipCode2 {
    border : 1px #D3D4D5 solid;
}

#zipSearch {
    position : relative;
    border : 1px #D3D4D5 solid;
    display : inline-block;
    width : 70px;
    height : 36px;
    *top : 3px;
    margin-left : 5px;
    line-height : 36px;
    text-align : center;
    cursor : pointer;
    background-color : #0995E0;
    color : #FFF;
    float :left;
    margin-left:10px;
}

#zipSearch a {
    color : #FFF;
}

#zipSearch a:hover {
    color : #FFF;
}

#zipSearch a:visited {
    color : #FFF;
}

#zipSearch a:active {
    color : #FFF;
}

#joinMemberZipCode input {
    width  : 170px;
    height : 36px;
    margin : 0 auto;
    border : 1px solid #D3D4D5;
    *outline : thin solid #D3D4D5;
    padding-left : 15px;
}

#joinMemberContents {
    *border: 1px red solid;
    display: block;
    width: 600px;
    position: relative;
    margin: 0 auto;
}

#joinMemberBottom {
    *border: 1px red solid;
    display: block;
    width: 240px;
    height : 75px;
    margin: 10px auto 20px auto;
}

.joinMemberBtn {
    border : 1px #D3D4D5 solid;
    display : inline-block;
    margin-top : 20px;
    *padding-bottom : 20px;
    width: 100px;
    height : 36px;
    line-height : 36px;
    text-align : center;
    cursor : pointer;
    background-color : #0995E0;
    color : #FFF;
}

#joinBtn {
    margin-left : 32px;
    
}

.confirmId {
    *border : 1px red solid;
    display : block;
    position : relative;
    top : -39px;
    left : 475px;
    width : 200px;
    height : 36px;
    line-height : 36px; 
}

.equalPwd {
    *border : 1px red solid;
    display : block;
    position : relative;
    top : -39px;
    left : 475px;
    width : 200px;
    height : 36px;
    line-height : 36px;
}


</style>
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

