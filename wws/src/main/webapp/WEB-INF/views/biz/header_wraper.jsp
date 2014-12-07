<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    

	
	<div id="header-wrap">
		<div id="header">
		 	<%
		 		String customer = request.getParameter("customer");
				String id = request.getParameter("id");
		 	%>
		 	<p><img src="<c:url value='/resources/img/whitewinglogo.png'/>" alt="화이트 윙" class='logobox'/></p>
		 	<div id='top-fix' style="position:absolute; width:80%">
					<h2 style='color:white;font-size: 15px; margin-top:50px;'><%=customer %>임직원 여러분 환영합니다.</h2>
			</div> 
		</div>
	</div>
	
