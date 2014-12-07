<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ include file="../include/header.jsp" %> 
<div>
<img src="<c:url value='/resources/img/home/community_5.jpg'/>"/>

</div>
<div id='con'>
<div class="table" style='width:610px; margin:15px 0 15px 15px;height:100; text-align:left;'>
              
			  <form name="insertform1" method="post" action="./member/spon_member_ok.php"onsubmit="return checkform(this)">
						<input type="hidden" name="cons" value="">
						<input type="hidden" name="mode" value="join">
						<input type="hidden" name="hid" value="">
					<div class="BoardWrite">
                        <table style='width:100%;'>
                          <tr>
                            <th style='width:80px;'>이름</th>
                            <td><input name="name" type="text" id="name" size="50" /></td>
                          </tr>
                          <tr>
						     <th>전화번호</th>
							 <td>
								<input type="text" name="tel" size="25" maxlength="20" onkeyup="numChk(this)" /> 
								
							</td>
						  </tr>
						  <tr>
							  <th>휴대전화</th>
							  <td>
								<input type="text" name="hp" size="25" maxlength="20" onkeyup="numChk(this)" /> 
								
							  </td>
						  </tr>
						  <tr>
								<th>E-mail</th>
								<td><input type="text" name="email" size="60"/></td>
						  </tr>                         
                          <tr>
                            <th>내용</th>
                            <td><textarea name="message" id="message" cols="60" rows="10"></textarea></td>
                          </tr>
                          
                      </table>
					 

                    </div>
                    <div class="BoardWriteBtm" style='margin:10px auto ; width:200px;'>
                        <ul>
	                        <li>
	                        <input type="image" src="<c:url value='/resources/img/home/btn_submit.gif'/>" alt="확인" name="submit" value="등록" style="border:0;" />
	                        <img src="<c:url value='/resources/img/home/btn_cancel.gif'/>" alt="취소" onclick="history.back()" style="cursor:pointer" />
	                        </li>
                        </ul>
                    </div>
					 </form>
			  </div>
</div>