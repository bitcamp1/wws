<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>


<style>
	#cel_container{width:1200px; margin:0 auto;}
</style>
<div id='cel_main'>
	<div id='cel_gnb'><%@ include file='cel_gnb.jsp' %></div>
	<div id='cel_container'>
		
		<div id='cel_lnb'><%@ include file='cel_lnb.jsp' %></div>
	</div>
</div>

<%@ include file='../common/footer.jsp' %>