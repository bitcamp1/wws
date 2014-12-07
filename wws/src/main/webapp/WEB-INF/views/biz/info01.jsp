<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
      <div class="info01">
		                <p class="tit_01"><b><span style="font-size:14px; color:#ff713e;">월평균 총 납부금</span></b> 
		                <span style="float:right;font-size:11px; color:#999;">가입비 분납 / 유심비 익월 청구</span></p>
							
			                  <table>
			                     <tbody><tr>
			                        <th>기본료</th>
			                        <td id="tariff_price"><fmt:formatNumber value='${tgate.tfBean.tffPrice}' groupingUsed="true"/>원</td>
			                     </tr>
			                     <tr>
			                        <th>부가세</th>
			                        <td><fmt:formatNumber value='${tgate.tfBean.tffPrice * 0.1}' groupingUsed="true"/>원</td>
			                     </tr>
			                     <tr>
			                        <th>월 단말기 할부금</th>
			                        <td><fmt:formatNumber value='${(tgate.totalPrice/ 24)-(tgate.totalPrice/ 24)%1}' groupingUsed="true"/>원 </td>
			                     </tr>
			                     <tr>
			                        <th>월 할부이자</th>
			                        <td>
			                       														
									<fmt:formatNumber value='${((tgate.totalPrice* 0.06261)/24)-(((tgate.totalPrice* 0.06261)/24)%1)}' groupingUsed="true"/> 원</td> <!-- 24는 할부개월수 -->
			                     </tr>
			                     <tr>
			                        <th>요금할인</th>
			                        <td>-<fmt:formatNumber value='${tgate.tfBean.discount }' groupingUsed="true"/> 원</td>
			                     </tr>
			                     <tr>
			                        <th>&nbsp;</th>
			                         <td style="color:red;"><b>
			                         
									 <fmt:formatNumber value='${((tgate.tfBean.tffPrice + ((tgate.tfBean.tffPrice) * 0.1) + ((tgate.totalPrice/ 24)-(tgate.totalPrice/ 24)%1)+((tgate.totalPrice* 0.06261)/24)-(((tgate.totalPrice* 0.06261)/24)%1))-tgate.tfBean.discount)}' groupingUsed="true"/>  원</b>
									</td>
			                     </tr>
			                  </tbody>
			                 </table>
							  
		               </div>