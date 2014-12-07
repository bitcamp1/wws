<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
 <div class="con_wrap">
		   <div class="mobile_wrap2">
		      <div class="con_body">
		         <div class="detail_box">
		            <p class="pro_tit"><b><span style="color:#4c7ab4;">${tgate.mbBean.mobile}</span><span style="color:#999;"> ${tgate.model}</span></b></p>
		                <div class="pro_detail">
		               <%@ include file="body_img.jsp" %>
					
		             <%@ include file="body_text_jointype.jsp" %>
		          </div>
		          <div class="info_box">
		            <%@ include file="info01.jsp" %>
		               <%@ include file="info02.jsp"%>
		              
		            </div>
		         </div>
		           
		         <div class="detail_box">
		         	<%@ include file="detail_box.jsp" %>
		         </div>
		       </div>
	      </div>
       </div>