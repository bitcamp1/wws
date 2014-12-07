<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>화이트윙 시스템</title>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/common.css'/>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/layout.css'/>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/main.css'/>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/style.css'/>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/tabs.css'/>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/home.css'/>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath }/resources/css/biz.css'/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/index.css" />

	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-1.9.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bjqs-1.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/ui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/index/jquery.cookie.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/index/main_1016.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/index/jquery.mousewheel.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/index/jquery.wipetouch.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/index/index.js"></script>
<style>
	.popup{position:absolute; top:30%; left:50%;background-color:white;margin-left:-290px;margin-top:-160px;z-index:1;display:none;border:20px solid #fff; border-radius:5px; -moz-border-radius:5px;-o-border-radius:5px;-webkit-border-radius:5px;}
	.close{width:50px;height:50px;position:absolute;top:-10px;right:-10px;color:#fff;z-index:100;}
	.shadow{width:100%;min-height:100%;background:#000;position:absolute;left:0px;top:0px;z-index:0;display:none;}
</style>
</head>
<body>
