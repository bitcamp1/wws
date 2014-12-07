<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>


<!-- response.sendRedirect("detail_cust.jsp"); -->
<jsp:forward page="http://localhost:8888/hm/biz/detailCust.do">
	<jsp:param name="id" value="kkpc"/>
	<jsp:param name="customer" value="%EA%B8%88%ED%98%B8%EC%84%9D%EC%9C%A0%ED%99%94%ED%95%99"/>
</jsp:forward>
