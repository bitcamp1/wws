<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<div class='con_wrap'>
<div class="mobile_wrap">
<div class="con_body">

<c:forEach var="list" items="${list}">
			<div class="product_box">
				<table class="pro_detail">
					<tr>
						<td colspan=2>
							<p class="pro_tit"><span style="color:#4c7ab4;">${list.mbBean.mobile}</span><span style="color:#999;">
			             ${list.mbBean.model}</span>
						</td>
					</tr>
			            
			        <tr>
			            <td>
			               	<img src="<c:url value='/resources/img/mobile/${list.mbBean.mImg}'/>" width="200px" height="200px">
			            </td>
			            <td>
			               <a href="${pageContext.request.contextPath }/biz/detailModel.do?model=${list.mbBean.model}&custId=${list.csBean.custId}&joinType=new&tffId=lte69&customer=GS리테일">
			                  		<img src="<c:url value='/resources/img/mobile/${list.mbBean.dImg }'/>" style='width:180px;height:180px;'>
			                 		</a>
			            </td>
			        </tr>
		         </table> 
	        </div>
        </c:forEach>
        
        </div></div></div>
        