<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.io.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/dtg/noti.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-1.9.1.js"></script>

<div id='noti_regi'>
	<div id='noti_regi_sub'>
		
		<p><label>이름 </label><input id='name' class='noti_regi_input' type="text" value="${adminName}"/></p>
		<p><label>전화번호 </label><input  id='telnum' class='noti_regi_input' type="text" value="${adminTelnum }"/></p>
		<p><label>이메일</label><input id='email' class='noti_regi_input' type="text"  value="${adminEmail}" /></p>
		<p><label>제 목</label><input  id='ttl' class='noti_regi_input' type="text" /></p>
		<textarea rows="20" cols="50"></textarea>
	</div>


	<div id='noti_btn_regi'>
		<input type="button" id='send_btn'  class='noti_regi_btn' value="등록" />
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" id='cncl_btn' class='noti_regi_btn' value="취소"/>
	</div>
</div>
<script>
$(function(){
	requestAdminInfo();
	$('send_btn').click(function(){
		$.ajax({
			url : "${pageContext.request.contextPath}/dtg/noti_regi.do",
			type : "post",
			data : {
				dept : $('#dept').val(),
				pose : $('#pose').val(),
				name : $('#name').val(),
				telnum : $('#telnum').val(),
				email : $('#email').val(),
				ttl : $('#ttl').val()
			},
			dataType : 'json',
			success : function(data){
				alert('공지사항이 등록 되었습니다');
			},
			error : function(xhr, status, message){
				alert('공지사항 등록 실패입니다');
				console.log(message);
			}
		});
		
	});
});
function requestAdminInfo(){
	$.ajax({
		url:'${pageContext.request.contextPath}/admin/req_admin_info.do',
		type:'get',
		dataType:'json',
		success:function(data){
			if(data.status=='fail'){
				location.href = '${pageContext.request.contextPath}/???.do';
			}else{
				var adminName = $('#adminName');
				var adminTelnum = $('#adminTelnum');
				var adminEmail = $('#adminEmail');
				
				adminName.html(data.admin.name);
				adminTelnum.html(data.admin.telnum);
				adminEmail.html(data.admin.email);
			}
		},
		error:function(xhr, status, message){
			alert(message);
		}
	});
}
	

</script>