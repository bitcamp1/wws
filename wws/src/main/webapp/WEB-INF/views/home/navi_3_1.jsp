<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>
<%@ include file="../include/gnb.jsp"%>
<table class='contentsTable'>
	<tr>
	
		<td class='contentsTableFirstTd' valign="top">
			 <div id="side" >
            <ul><li><div class="menu">
              <ul style="margin-top:6px;">
              		<li>
              			<img src="<c:url value='/resources/img/home/community_1.jpg'/>"/>
             		</li>
             </ul>
               
               <ul>
                	<li id='menu1'>
		                <a href="${pageContext.request.contextPath }/home/navi_3.do" >
		                	<img src="<c:url value='/resources/img/home/community_2.jpg'/>" alt="인사말" style='cursor:pointer'>
		                </a>
	                </li>
                </ul>
             
                <ul>
                	<li id="menu2"> 
	                	
	                		<img src="<c:url value='/resources/img/home/community_3.jpg' />" alt="회사약력" style='cursor:pointer'>
                		
               		</li> 
            	</ul>
            </div></li></ul>
            <ul><li><div class="bn"><img src="<c:url value='/resources/img/home/sub_bn.jpg'/>"></div></li></ul>
        </div>
		</td>
		<td valign="top" id='load'>
			<%@include file="community_5.jsp" %>
		</td>
	</tr>
</table>	
<%@ include file="../include/footer.jsp" %>
<script>
	$(document).ready(function(){
		$('#menu1').click(function(){
			document.location.href="${pageContext.request.contextPath}/home/navi_3.do";
		});
		$('#menu2').click(function(){
			document.location.href="${pageContext.request.contextPath}/home/navi_3_1.do";
		});
	});
</script>
