<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<%@ include file="../common/header.jsp" %>
<script>
$(document).ready(function(){
	function upload(){
		var fileName = str_trim(document.frm.file.value);
		var arr = ("file:///"+fileName.replace(/ /gi,"%20").replace(/\\/gi,"/").split("/");
		var chkFile = arr[arr.length-1];
		var len = chkFile.length;
		var codeLen = 0; 
		
		for(var i=0;i<len;i++)
			(chkFile.charCodeAt(i) >255)? codeLen+=2:codeLen++;
		if(len!=codeLen){alert("한글파일은 업로드 할 수 없습니다")return false;};
		if(fileName.length==0&&fileName.length==0){alert("업로드할 파일을 선택하십시오");
			document.frm.file.focus();
		return false;
		}else{
			document.frm.submit();
		}
	}
});


</script>
<div id='joinForm'>
	<form action='${pageContext.request.contextPath}/file/regist.do' method='post' enctype="multipart/form-date" name="frm">
			
				<input type='file'  name='file' size='30'>
			
				<input  type="button" value="등록" onclick='javascript:upload();' >
				
	</form>
	${resultMessage}
</div>
