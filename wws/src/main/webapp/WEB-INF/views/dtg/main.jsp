<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
	#contentsTable{margin:0 auto;margin-top:50px;width:1040px;}
	.contentsTableFirstTd{width:400px;}
</style>

<div id='title'><%@ include file="../include/title.jsp" %></div>
<div id='slider'><%@ include file="oper_login_form_btn.jsp"%></div>
<div id='container'><%@ include file="container.jsp" %></div>
 		
<%@ include file="../include/footer.jsp" %>
 <script>
	
		function show(btn){
      		var src = btn.getAttribute("href");
      		var placeholder = document.getElementById('placeholder');
      		placeholder.setAttribute("src",src);
      	}
      	

      	
      	
      
</script>