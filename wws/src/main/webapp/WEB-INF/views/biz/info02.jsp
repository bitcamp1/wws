<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <div class="info02">
		                  <p class="tit_02"><b></b> <a href="javascript:infomation()"></a></p>
		                  <p class="tit_03"><b></b></p>
							<form name="frm">
			                  <table>
			                     <tbody>
			                     <tr>
			                     	<td style="text-align: center;">
			                     		<b>현재 진행중인 프로모션이 없습니다<br/>
										 더 좋은 프로모션으로 찾아뵙겠습니다.</b>
			                     	
			                     	</td>
			                     </tr>
			                     	<!-- <tr>
				                        <th>신청<input type="radio" name="join" id="join" onclick="enable_select()" ></th>
				                        <td><b>미신청</b><input type="radio" name="join" id="refuse_join" onclick="disable_select()" checked></td>
				                     </tr>
				                     <tr>
				                        <th>이름</th>
				                        <td><input type="text" name="guest_name" id="guest_name"></td>
				                     </tr>
				                     <tr>
				                        <th>연락처</th>
				                        <td>
				                           <select name="guest_phone1" id="phoneNum1">
				                           	  <option value="0">-선택-</option>
				                              <option>010</option>
				                              <option>011</option>
				                              <option>017</option>
				                              <option>019</option>
				                           </select>
				                           <input type="text" style="width:50px;" name="guest_phone2" id="phoneNum2" maxlength="4"><span style="margin:0 10px;">-</span><input type="text" style="width:50px;" name="guest_phone3" id="phoneNum3" maxlength="4">
				                        </td>
				                     </tr>
				                     <tr>
				                        <th>생년월일</th>
				                        <td><input type="text" value="예)19850404" maxlength="8" name="guest_birth" id="guest_birth" onclick="birth_reset()">  남<input type="radio" name="guest_gender" id="guest_gender"> 여<input type="radio" name="guest_gender" id="guest_gender"></td>
				                     </tr>
				                      <tr>
				                        <th>주소</th>
				                        <td><input type="text" value="" maxlength="16" name="guest_addr" id="guest_addr" onclick="addr_reset()">  </td>
				                     </tr>
				                     <tr>
				                        <td colspan="2" style="padding-left:24px;">개인(신용)정보 수집/이용에 관한 동의<input type="checkbox" id="guest_info_collection"><span style="margin-left:15px;">개인정보 제3자 제공 및 위탁 동의<input type="checkbox" id="guest_info_provide"></span></td>
				                        
				                     </tr> -->
				                  </tbody>
			                  </table>
							</form>
		               </div>
		               <script type="text/javascript">
		               $(document).ready(function(){
				               function enable_select(){
				           		var f=document.frm;
				           		f.guest_name.disabled=false;		
				           		f.guest_phone1.disabled=false;
				           		f.guest_phone2.disabled=false;
				           		f.guest_phone3.disabled=false;
				           		f.guest_birth.disabled=false;
				           		f.guest_gender[0].disabled=false;
				           		f.guest_gender[1].disabled=false;
				           		f.guest_info_collection.disabled=false;
				           		f.guest_info_provide.disabled=false;
				           	}
				           	
				           	function disable_select(){
				           		var f=document.frm;
				           		f.guest_name.disabled=true;		
				           		f.guest_phone1.disabled=true;
				           		f.guest_phone2.disabled=true;
				           		f.guest_phone3.disabled=true;
				           		f.guest_birth.disabled=true;
				           		f.guest_gender[0].disabled=true;
				           		f.guest_gender[1].disabled=true;
				           		f.guest_info_collection.disabled=true;
				           		f.guest_info_provide.disabled=true;
				           	}
				           	
				           	function indentation(){
				           		var url=document.getElementById("join_url").value;
				           		var join=document.getElementsByName("join");
				           		
				           		
				           			if(join[0].checked==false && join[1].checked==false){
				           				alert("신청여부를 선택하세요.");
				           				return;
				           			}
				           		
				           		
				           		
				           		
				           			
				           			if(document.getElementById("join").checked==true ){
				           				var guest_name;
				           				var guest_phone;
				           				var guest_birth;
				           				var guest_gender;
				           				var guest_info_collection;
				           				var guest_info_provide;
				           				
				           				guest_name=document.getElementById("guest_name").value;
				           				guest_phone=document.getElementById("phoneNum1").value + "-"
				           					+ document.getElementById("phoneNum2").value + "-"
				           					+ document.getElementById("phoneNum3").value;
				           				guest_birth=document.getElementById("guest_birth").value;
				           				
				           				if(document.getElementById("guest_name").value==""){
				           					alert("이름을 입력하세요.");
				           					document.getElementById("guest_name").focus();
				           					return;
				           				}
				           				
				           				if(document.getElementById("phoneNum1").value=="0"){
				           					alert("연락처를 입력하세요.");
				           					return;
				           				}
				           				
				           				if(document.getElementById("phoneNum2").value==""){
				           					alert("연락처를 입력하세요.");
				           					document.getElementById("phoneNum2").focus();
				           					return;
				           				}
				           				
				           				if(document.getElementById("phoneNum3").value==""){
				           					alert("연락처를 입력하세요.");
				           					document.getElementById("phoneNum3").focus();
				           					return;
				           				}
				           				
				           				if(document.getElementById("guest_birth").value==""){
				           					alert("생년월일을 입력하세요.");
				           					document.getElementById("guest_birth").focus();
				           					return;
				           				}
				           				
				           				var gender=document.getElementsByName("guest_gender");
				           				if(gender[0].checked==false && gender[1].checked==false){
				           					alert("성별을 선택하세요.");
				           					return;
				           				}
				           				
				           				if(document.getElementById("guest_gender").checked==true){
				           					guest_gender="male";
				           				}
				           				else{
				           					guest_gender="female";
				           				}
				           				
				           				if(document.getElementById("guest_info_collection").checked==true){
				           					guest_info_collection="Y";
				           				}
				           				else{
				           					alert("개인(신용)정보 수집/이용에 동의하셔야 가입이 가능합니다.");
				           					return;
				           				}			
				           				
				           				if(document.getElementById("guest_info_provide").checked==true){
				           					guest_info_provide="Y";
				           				}
				           				else{
				           					alert("개인정보 제3자 제공 및 위탁에 동의하셔야 가입이 가능합니다.");
				           					return;
				           				}
				           			
				           				
				           				
				           				
				           				var join_url=document.getElementById("join_url").value;
				           				
				           				var url="/preview/regist.do?guest_name=" + escape(encodeURIComponent(guest_name))
				           				+ "&guest_phone=" + guest_phone
				           				+ "&guest_birth=" + guest_birth
				           				+ "&guest_gender=" + guest_gender
				           				+ "&guest_info_collection=" + guest_info_collection
				           				+ "&guest_info_provide=" + guest_info_provide
				           				+ "&join_url=" + join_url;
				           				
				           				/* var param="?guest_name=" + guest_name
				           					+ "&guest_phone=" + guest_phone
				           					+ "&guest_birth=" + guest_birth
				           					+ "&guest_gender=" + guest_gender
				           					+ "&guest_info_collection=" + guest_info_collection
				           					+ "&guest_info_provide=" + guest_info_provide
				           					+ "&join_url=" + join_url; */
				           				
				           				var join_url=document.getElementById("join_url").value;	
				           					
				           				if(window.XMLHttpRequest){	// code for IE7+, Firefox, Chrome, Opera, Safari
				           					xmlhttp=new XMLHttpRequest();
				           				}
				           				else{	// code for IE6, IE5
				           					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
				           				}
				           				
				           				xmlhttp.onreadystatechange=function(){
				           					if(xmlhttp.readyState==4 && xmlhttp.status==200){
				           						location.href=join_url;
				           				    }
				           				}
				           				xmlhttp.open("GET",url,false);
				           				xmlhttp.send();
				           				
				           				//location.href=url;
				           		
				           			}
				           			else{
				           				var join_url=document.getElementById("join_url").value;
				           				location.href=join_url;
				           			}
				           		
				           		
				           	}
				           	
				           	function birth_reset(){
				           		document.getElementById("guest_birth").value="";
				           	}
		           	
		               });
		               </script>