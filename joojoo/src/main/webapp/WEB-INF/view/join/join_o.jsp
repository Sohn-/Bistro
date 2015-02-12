<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="joojoo.entity.Owners" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/joinfont.css"/>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		
		
		$("#idDupCheck").click(function(){
			if($("#joinId2").val()==""){
				alert("아이디를 입력해주세요.");
				$("#joinId2").focus();		
			}
				<c:url value="/join/idCheck2" var="idchk"></c:url>
				var url = "${idchk}?joinId2="+$("#joinId2").val();
				window.open(url, "_blank", "width=600, height=300, toolbar=no, menubar=no, resizable=no")
			
		});
		
		$("#mailDupCheck").click(function(){
			if($("#joinMail2").val()==""){
				alert("이메일을 입력해 주세요.");
				$("#joinMail2").focus();		
			}else{
				<c:url value="/join/mailCheck2" var="mailchk"></c:url>
				var url = "${mailchk}?joinMail2="+$("#joinMail2").val();
				window.open(url, "_blank", "width=600, height=300, toolbar=no, menubar=no, resizable=no")
			}
		});
		
		$("#licenseDupCheck").click(function(){
			if($("#joinLicense").val()==""){
				alert("사업자등록번호를 입력해 주세요.");
				$("#joinLicense").focus();		
			}else{
				<c:url value="/join/licenseCheck" var="licensechk"></c:url>
				var url = "${licensechk}?joinLicense="+$("#joinLicense").val();
				window.open(url, "_blank", "width=600, height=300, toolbar=no, menubar=no, resizable=no")
			}
		});
		
	    var password1 = document.getElementById('pass');
	    var password2 = document.getElementById('pass2');

	    var checkPasswordValidity = function() {
	        if (password1.value != password2.value) {
	            password1.setCustomValidity('비밀번호와 확인 비밀번호가 일치하지 않습니다.');
	        } else {
	            password1.setCustomValidity('');
	        }        
	    };

/* 	    var updateErrorMessage = function() {
	        document.querySelector("#error").innerHTML = password1.validationMessage;
	    };
	     */
	    
	    password1.addEventListener('change', checkPasswordValidity, false);
	    password2.addEventListener('change', checkPasswordValidity, false);
 
	    
	    var form = document.getElementById('form');
	    form.addEventListener('submit', function() {
	    	if($("#checked").val()==""){
				alert("아이디 중복체크 해주세요.");
				event.preventDefault();
			}
	    	if($("#checked2").val()==""){
				alert("이메일 중복체크 해주세요.");
				event.preventDefault();
			}
	    	if($("#checked3").val()==""){
				alert("사업자등록번호 중복체크 해주세요.");
				event.preventDefault();
			}
	        checkPasswordValidity();
	        if (!this.checkValidity()) {
	            event.preventDefault();
	           // updateErrorMessage();
	            password1.focus();
	        }else{
	        	 password1.setCustomValidity('');
	        }
	    }, false);
	});
</script>
</head>
<body>

<c:url value="/join/join_o2" var="action"></c:url>     
 <form:form  modelAttribute="joinOwner" method="post" action="${action} " id="form" class="form-4"> 

    <h1 align="center">회 원 가 입</h1>
      	<h3>아이디</h3><form:input path="ownerId" id="joinId2" placeholder="Id" required="true"/>
        
        <input type="button" value="중복확인" id="idDupCheck"/><br>
    	<input type="hidden" name="checked" id="checked"/><br>
    	<h3>비밀번호 </h3><form:input path="ownerPassword" id="pass" type="password" required="true" /><br>
   
   
        <h3>비밀번호 확인</h3>
		<input type="password" id="pass2" name="pass2" required="true" /><br>
   
        <h3>이름</h3> <form:input path="ownerName" required="true" /><br>
       
    
        <h3>메일</h3><form:input path="ownerMail" id="joinMail2" type="email" required="true"/><br>
        <input type="button" value="중복확인" id="mailDupCheck"/><br>
   		<input type="hidden" name="checked2" id="checked2"/><br>
        <h3>휴대전화</h3><form:input path="ownerPhone" required="true"/><br>
   		<h3>사업자등록번호</h3><form:input path="licenseNumber" id="joinLicense" required="true"/><br>
		<input type="button" value="중복확인" id="licenseDupCheck"/><br>
   		<input type="hidden" name="checked3" id="checked3"/><br>
   
       <input type="submit" value="가입하기" />
   
     
     
     

</form:form>


</body>
</html>