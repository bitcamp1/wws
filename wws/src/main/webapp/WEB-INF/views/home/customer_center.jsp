<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>   
		
<style>
	.wrapAll{background:url(https://oimg1.kbstar.com/img/ocommon/snb/bg_hw2.gif) repeat-x 0px -18px}
	.headerWrap{background:url(https://oimg1.kbstar.com/img/ocommon/snb/bg_snb_suppTopic_fall.gif) no-repeat center bottom}
	.png24{margin-top:50px;}
	#HEADER{width:1000px;height:144px;margin:0 auto}
	.serviceWrap{overflow:hidden;zoom:1;width:918px;margin:0 auto;margin-top:50px;padding-bottom:36px;border-bottom:solid 1px #d9d9d9;}
	.serviceWrap div{float:left;width:305px;height:317px;text-align:center;border-left:1px solid #e6e6e6;}
	.serviceWrap dl{display:inline-block;*display:inline;*zoom:1;text-align:left;}
	.serviceWrap dd{margin-top:10px;}
	.serviceWrap .quickLink{width:142px;margin-top:20px;text-align:left;}
	.serviceWrap .quickLink li{display:block;width:120px;height:18px !important;padding:7px 0 3px 22px;vertical-align:middle;border-top:1px solid #e6e6e6;background:url('https://oimg1.kbstar.com/img/ofex/index/bult_1.gif') no-repeat 0 5px;}
	.serviceWrap .quickLink li.first{border-top:none!important;}
	.serviceWrap_bg1{width:100%;background:url('https://oimg1.kbstar.com/img/ocustomer/index/sub_service1_bg.jpg') no-repeat center bottom;}
	.serviceWrap_bg2{width:100%;background:url('https://oimg1.kbstar.com/img/ocustomer/index/sub_service3_bg.jpg') no-repeat center bottom;}
	.serviceWrap_bg3{width:100%;background:url('https://oimg1.kbstar.com/img/ocustomer/index/sub_service2_bg.jpg') no-repeat center bottom;}
	.serviceWrap_bg4{background:url('https://oimg1.kbstar.com/img/ocustomer/index/cus_tit3_bg.gif') right bottom no-repeat}
	.serviceWrap_bg5{background:url('https://oimg1.kbstar.com/img/ocustomer/index/cus_tit2_bg.gif') /*186px 39px*/ right bottom no-repeat;height:114px}
	.serviceWrap_bg6{background:url('https://oimg1.kbstar.com/img/ocustomer/index/cus_tit1_bg.gif') /*189px 41px*/ right bottom no-repeat;height:114px}
	.serviceWrap_bg7{background:url('https://oimg1.kbstar.com/img/ocustomer/index/cus_tit3_bg.gif') 176px bottom no-repeat;height:114px}
	.serviceWrap_bg7 li{margin-bottom:1px}
	.serviceWrap_bg8{background:url('https://oimg1.kbstar.com/img/ocustomer/index/cus_tit8_bg.gif') /*189px 41px*/ right bottom no-repeat;height:114px}
	.serviceWrap.bgNone{background:none;}
	.serviceWrap.bgNone div{height:385px !important;}
</style>

<div id='title'><%@ include file="../include/title.jsp" %></div>
<div class="wrapAll"><div class="headerWrap"><div id="HEADER">
           <img src="https://oimg1.kbstar.com/img/ocommon/header/tit_osupp.png" alt="고객센터" class="png24" /></div></div>
    <div class="contentWrap"><div id="indexWrap"><div class="serviceWrap">        
		<div class="serviceWrap_bg1"><%@ include file="serviceWrap_bg1.jsp" %></div>
		<div class="serviceWrap_bg3"><%@ include file="serviceWrap_bg2.jsp" %></div>
		<div class="serviceWrap_bg2"><%@ include file="serviceWrap_bg3.jsp" %></div></div></div></div></div>
<%@ include file="../include/footer.jsp" %>	