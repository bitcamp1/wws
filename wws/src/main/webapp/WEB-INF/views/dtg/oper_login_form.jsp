<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
	#mgm_slider{border-bottom:1px solid}

</style>
<div id='title'><%@ include file="../include/title.jsp" %></div>
<div id='return_btn'><%@ include file="oper_return_btn.jsp"%></div>
 <div style='width:723px;margin:0 auto;' >
           
          
            <table style='width:723px;' >
              <tr> 
                <td valign="top">
                <table >
                    <tr> 
                      <td ><img src="<c:url value='/resources/img/dtg/02login_img03.gif'/>" width="723" height="42" alt="아이디와 패스워드를 입력해 주세요"></td>
                    </tr>
                    <tr> 
                      <td height="25" valign="top"><img src="<c:url value='/resources/img/dtg/02login_img06.gif'/>" width="723" height="19" alt=""></td>
                    </tr>
                    <tr> 
                      <td>
                      	<div align="center">
                      		<form>
	                          <table style='width:395px;'>
	                            <tr> 
	                              <td width="97" height="35">
	                              	<img src="<c:url value='/resources/img/dtg/02login_img04.gif'/>" width="91" height="25">
	                              </td>
	                              <td width="202" valign="top"> 
	                              	<input id ="id" name="id" type="text" size="31" style='height:29px;'> 
	                              </td>
	                              <td width="96" rowspan="2">
	                              	<div align="center" id='btn'>
	                              		<img src="<c:url value='/resources/img/dtg/btn_login01.gif'/>" width="88" height="67" alt="로그인버튼" style='cursor:pointer'>
	                             	</div>
	                              </td>
	                            </tr>
	                            <tr> 
	                              <td height="35">
	                              	<img src="<c:url value='/resources/img/dtg/02login_img05.gif'/>" width="91" height="29">
	                              </td>
	                              <td>
	                              	<input id="pw" name="pw" type="text" size="31"style='height:29px;'>
	                              </td>
	                            </tr>
	                          </table>
                          </form>
                        </div>
                       </td>
                    </tr>
                    <tr>
                      <td height="25" valign="bottom" >
                      	<img src="<c:url value='/resources/img/dtg/02login_img06.gif'/>" width="723" height="19" alt='경계선'>
                      </td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                    </tr>
                  </table>
                
                  <div style='float:right;margin-right:170px;'>
                  		<p class="txt mt15" style='margin-bottom:5px;'>
                            <img src="<c:url value='/resources/img/dtg/txt_id_01.gif'/>" title="" alt="아이디를 잊으셨나요?" />
                            <a href="#" ><!--일단 나중에 구현하자  onclick="open_popup1()" -->
                            
                            <img src="<c:url value='/resources/img/dtg/btn_id_find.gif'/>" title="" alt="아이디찾기" /></a>
                        </p>
                        <p class="txt" style='margin-bottom:5px;'>
                            <img src="<c:url value='/resources/img/dtg/txt_id_02.gif'/>" title="" alt="비밀버호를 잊어버리셨나요?" />
                            <a href="#" >  <!-- onclick="open_popup2()" -->
                           
                            <img src="<c:url value='/resources/img/dtg/btn_pw_find.gif'/>" title="" alt="비밀번호찾기" /></a>
                        </p>
                        <p class="txt">
                            <img src="<c:url value='/resources/img/dtg/txt_id_03.gif'/>" title="" alt="아이디가 없으시면 회원으로 가입하세요." />
                            <a href="#" ><!--  onclick="open_popup3()" -->
                            <img src="<c:url value='/resources/img/dtg/btn_join.gif'/>" title="" alt="회원가입하기" /></a>
                        </p>
                  
                   </div>
                
             </td>
              </tr>
            </table>
             </div>
            <script>
            function open_popup1(){
            	var url = "${pageContext.request.contextPath}/dtg/oper_find_id.do";
            	
            	window.open(url,'FINDID','width=800,height=250,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no');
            	return false;
            }
            function open_popup2(){
            	var url = "${pageContext.request.contextPath}/dtg/oper_reset_pass.do";
            	
            	window.open(url,'RESETPW','width=800,height=250,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no');
            	return false;
            }
            function open_popup3(){
            	var url = "${pageContext.request.contextPath}/dtg/oper_join.do";
            	
            	window.open(url,'JOIN','width=800,height=800,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no');
            	return false;
            	
            }
           $(document).ready(function(){
            	$('#btn').click(function(){
            		$.ajax('${pageContext.request.contextPath}/dtg/oper_login.do',{
            			type:'POST',
                		dataType:'json',
                		data:{
                			id : $('#id').val(),
                			pw : $('#pw').val(),
                		
                		},
                		success:function(data){
                			console.log("data값 : "+data);
                			 if(data.status=="success"){
            				 location.href='${pageContext.request.contextPath}/dtg/oper_main.do';
	            			}else{
	            				window.alert('사용자의 아이디 또는 암호가 일치하지 않습니다.');
	            			} 
                			
                		},
                		error : function(xhr, status, message){
                			window.alert('계속 실패의 연속입니다');
                			console.log("xhr콘솔:");
                			console.log(xhr);
                			console.log("status콘솔:");
                			console.log(status);
                			console.log("message콘솔:");
                			console.log(message);
                		}
            		});
            		
            		
            	});
           
           });
            </script>

<%@ include file="../include/footer.jsp" %>