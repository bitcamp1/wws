<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<p class="pro_tit"><b><span style="color:#666;" id="result"> 고객님께서는 ${tgate.ctBean.joinNm} ${tgate.ctBean.iMonth}개월 약정 ${tgate.tfBean.tariff}를 선택하셨습니다</span></b></p>
<a href='${tgate.tgUrl}' target="_blank"><img src="<c:url value='/resources/img/biz/applybtn.jpg'/>" style='width:200px;margin-top:50px;'/></a>