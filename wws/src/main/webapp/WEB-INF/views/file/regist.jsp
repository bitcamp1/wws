<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<style>
.error {
	color: #ff0000;
}
.errorblock{
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding:8px;
	margin:16px;
}
</style>
</head>

<body>
<h2>Spring MVC file upload example</h2>

<form:form method="POST" action="${pageContext.request.contextPath}/file/regist.do" enctype="multipart/form-data">
<input type="hidden" name="deptno" value="10" />
simple upload : <input type="file" name="file" /> <input type="submit" value="upload" />

</form:form>

</body>
</html>


