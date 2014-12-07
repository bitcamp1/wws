<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<style>
#submitForm input {background:url('http://smtech.kradmin.co.kr/images/main/login.gif') no-repeat; width:65px; height:42px; font-size:0;}
#contentsTable{width:730px;margin:0 auto;margin-top:100px;}
</style>




<div id='title'><%@ include file="../include/title.jsp" %></div>
<div id='sub_title'><%@ include file="../include/sub_title.jsp" %></div>
<form method='post' action='${pageContext.request.contextPath }/admin/login.do'>

				<div style="width:1004px; margin:0 auto; margin-top:100px;">	
				<table id='contentsTable'>
                    <tbody>
					<tr>
                        <td width="211" height="33"><img src="http://smtech.kradmin.co.kr/images/main/adminlogin.gif" width="211" height="33"></td>
                        <td style="background:#f00">&nbsp;</td>
                    </tr>
                    <tr>
                        <td width="211" height="104" align="right" valign="top" style="padding-top:10px;" background="http://smtech.kradmin.co.kr/images/main/bg.gif">
                            <table width="150" border="0" cellpadding="0" cellspacing="0">
                                <tbody><tr>
                                    <td height="25" align="right" style="padding-top:10px;_cursor:hand;cursor:pointer;"><font color="#0099CC">아이디/비밀번호찾기</font></td>
                                    <td width="20"></td>
                                </tr>
                            </tbody></table>
                        </td>
                        <td background="http://smtech.kradmin.co.kr/images/main/bg_2.gif" width="348">
                            <table >
                                <tbody><tr>
                                    <td width="26"></td>
                                    <td>
                                        <table border="0" cellspacing="0" cellpadding="0" height="29">
                                            <tbody><tr>
                                                <td width="68"><img src="http://smtech.kradmin.co.kr/images/main/admin_id.gif" width="62" height="11"></td>
                                                <td width="143" height="29"><input type="text" id="id" name="id" class="input_lgn w120 h22" style="background-image: url(http://smtech.kradmin.co.krhttp://smtech.kradmin.co.kr/images/bg_input_id.gif); border-width: 1px; border-style: solid; border-color: rgb(109, 111, 112) rgb(201, 203, 204) rgb(211, 213, 214); background-repeat: no-repeat no-repeat;" maxlength="20" tabindex="4" autocomplete="off"></td>
                                            </tr>
                                        </tbody></table>
                                        <table border="0" cellspacing="0" cellpadding="0" height="29">
                                            <tbody><tr>
                                                <td width="68"><img src="http://smtech.kradmin.co.kr/images/main/admin_pw.gif" width="62" height="11"></td>
                                                <td width="143" height="29">
                                                <input type="password" id="pwd" name="pwd" class="input_lgn w120 h22" maxlength="15" tabindex="5"></td>
                                            </tr>
                                        </tbody></table>
                                    </td>
                                    <td id="submitForm"><input type='submit' id='loginBtn' class="cshand"></td>
                                </tr>
                            </tbody></table>
                        </td>
                        <td background="http://smtech.kradmin.co.kr/images/main/bg_2.gif" width="170"></td>
                    </tr>
                
            </tbody>
			</table>
</div>
			</form>
			
