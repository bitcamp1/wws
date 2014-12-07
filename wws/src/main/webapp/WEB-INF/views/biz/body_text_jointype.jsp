<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <div class="body_text">
		 				
		                  <table style='height="320"' class="style3">
		                     <tbody><tr>
		                        <th>모델명</th>
		                        
		                        <td><h2>${tgate.model}</h2></td>
		                     </tr>
		                     <tr>
		                        <th>요금제</th>
		                        <td>
			                        <form name="frm02" method='post'>
			                        	<%
			                        			String tffId = request.getParameter("tffId");
			                        	%>
			                        	<input type='hidden' name='model'  value='${tgate.model}'> 
			                        	<input type='hidden' name='joinType'  value='${tgate.joinType}'> 
			                        	<input type="hidden" name="custId" value="${tgate.custId }">
			                        	<select name="tffId" id="tffId" onchange="selectTffId(this.value)" style='width:120px;'>
			                        		<option value="lte52"<%="lte52".equals(tffId)?"selected":"" %> >LTE52</option>
			                        		
			                        		<option value="lte62"<%="lte62".equals(tffId)?"selected":"" %>>LTE62</option>
			                        		
			                        		<option value="lte69" <%="lte69".equals(tffId)?"selected":"" %>>전국민무한69</option>
			                        		
			                        	</select>
		                        	</form>       
		                        </td>
		                     </tr>
		                     <tr>
		                        <th>가입유형</th>
		                       
		                        <td> 
		                        	<form name='frm01' method='post'>
		                        		<%
		                        			String joinType = request.getParameter("joinType");
		                        		%>
			                        	<input type='hidden' name='model'  value='${tgate.model}'/> 
			                        	<input type="hidden" name="custId" value="${tgate.custId }"/>
			                        	<input type='hidden' name='tffId'  value='${tgate.tffId}'/> 
			                        	
		                        		<select name="joinType" id='joinType' onchange="selectJoinType(this.value)" style='width:120px;'>
			                        		<option id='2' value="new" <%="new".equals(joinType)?"selected":"" %>>신규가입</option>
			                        		<option id='3' value="mnp" <%="mnp".equals(joinType)?"selected":"" %>>번호이동</option>
			                        		<option id='4' value="change" <%="change".equals(joinType)?"selected":"" %>>기기변경</option>
		                        		</select>
		                        	</form>  
		                        </td>
		                        
		                     </tr>
		                     <tr>
		                        <th>약정기간</th>
		                        <td>
		                        	<select name="iMonth" onchange="select_item()" style='width:120px;'>
		                        		<option value="24" selected="">${tgate.ctBean.iMonth}개월</option>
		                        	</select>
		                        </td>
		                     </tr>
		                     
		                     <tr>
		                        <th>출고가</th>
		                        <td>
		                         <b><fmt:formatNumber value="${tgate.mbBean.mbPrice}" groupingUsed="true"/> 원</b>
		                        </td>
		                     </tr>
		                     <tr>
		                        <th>할부원금</th>
		                           
		                        <td id="total_price">                        	
		                        	<b><fmt:formatNumber value="${tgate.totalPrice}" groupingUsed="true"/> 원   	</b>
		                        </td>
		                     </tr>
		                     <tr>
		                        <th>고객부담금</th>
		                        <td style="color:red;" id="price">
		                        
		                        <b><fmt:formatNumber value="${(tgate.totalPrice)-(tgate.tfBean.discount*24)}" groupingUsed="true"/>원</b> </td>
		                     </tr>
		                 </tbody>
		                 
		               </table>
		 			           
					<br><br><br>
		           </div>
		           <script>
		           function selectTffId(tffId){
			       		var tffId=document.getElementById('tffId').value;
			       		var model=document.frm02.model.value;
			       		var joinType=document.frm02.joinType.value;
			       		var custId=document.frm02.custId.value;
			       		location.href='${pageContext.request.contextPath}/biz/detailTariff.do?tffId='+tffId
			       		+"&model="+model
			       		+"&joinType="+joinType
			       		+"&custId="+custId
			       		;
			       		
			       	}
		           function selectJoinType(joinType){
			       		var joinType=document.getElementById('joinType').value;
			       		var model=document.frm01.model.value;
			       		var tffId=document.frm01.tffId.value;
			       		var custId=document.frm01.custId.value;
			       		location.href='${pageContext.request.contextPath}/biz/detailJoinType.do?joinType='+joinType
			       		+"&model="+model
			       		+"&tffId="+tffId
			       		+"&custId="+custId
			       		;
			       		
			       	}
			       	
		       	
		           </script>