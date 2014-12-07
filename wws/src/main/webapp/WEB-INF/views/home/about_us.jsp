<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<style>
	#contentsTable{margin: 0 auto;margin-top:50px;width:1040px;}
	.contentsTableFirstTd{width:400px;}

</style>
<div id='title'><%@ include file="../include/title.jsp" %></div>
<div id='sub_title'><%@ include file="../include/sub_title.jsp" %></div>
<table id='contentsTable'>
	<tr>
	
		<td class='contentsTableFirstTd' valign="top">
			 <div id="side" >
            <ul><li><div class="menu">
              <ul style="margin-top:6px;"><li><img src="<c:url value='/resources/img/home/aboutus_01.jpg'/>"/></li></ul>
               
                <ul>
                	<li id='aboutus_02'>
		                <a href="<c:url value='/resources/img/home/about_us_2.jpg'/>" onclick='show(this); return false;'>
		                	<img src="<c:url value='/resources/img/home/aboutus_02.jpg'/>" alt="인사말" style='cursor:pointer'>
		                </a>
	                </li>
                </ul>
                  
                  
              
                <ul>
                	<li id="aboutus_03"> 
	                	<a href="<c:url value='/resources/img/home/about_us_3.jpg'/>" onclick='show(this); return false;'>
	                		<img src="<c:url value='/resources/img/home/aboutus_03.jpg' />" alt="회사약력" style='cursor:pointer'>
                		</a>
               		</li> 
            	</ul>
                  
                 
             
                <ul>
                	<li id="aboutus_04"> 
                		<a href="<c:url value='/resources/img/home/about_us_4.jpg'/>" onclick='show(this);return false;'>
                			<img src="<c:url value='/resources/img/home/aboutus_04.jpg'/>" alt="회사연혁" style='cursor:pointer'>
               			</a>
              		</li>
              	</ul>
                 
                  
              
                 <ul>
                 	<li id="aboutus_05">
                 		<a href="<c:url value='/resources/img/home/about_us_5.jpg'/>" onclick='show(this); return false;'>
                 			<img src="<c:url value='/resources/img/home/aboutus_05.jpg'/>" alt="조직도" style='cursor:pointer'>
              			</a>
              		</li>
              	</ul>
                  
                  
              
                <ul>
                	<li id="aboutus_06">
                		<a href="<c:url value='/resources/img/home/about_us_6.jpg'/>" onclick='show(this); return false;'>
                			<img src="<c:url value='/resources/img/home/aboutus_06.jpg'/>" alt="파트너사" style='cursor:pointer'>
                		</a>
                	</li> 
                </ul>
                  
                  
             
                <ul>
                	<li id="aboutus_07">
                		<a href="<c:url value='/resources/img/home/jido.jpg'/>" onclick='show(this);return false;'>
                			<img src="<c:url value='/resources/img/home/aboutus_07.jpg'/>" alt="오시는길">
                		</a>
                	</li> 
                </ul>
                  
                  
               
            </div></li></ul>
            <ul><li><div class="bn"><img src="<c:url value='/resources/img/home/sub_bn.jpg'/>"></div></li></ul>
        </div>
		</td>
		<td>
			<img src="<c:url value='/resources/img/home/about_us_content.jpg'/>" width="658" alt="인사말" id='placeholder'/>
		</td>
	</tr>
</table>
<%@ include file="../include/footer.jsp"%>
      <script>
        
        	function show(btn){
        		var src = btn.getAttribute("href");
        		var placeholder = document.getElementById('placeholder');
        		placeholder.setAttribute("src",src);
        	}
        </script>