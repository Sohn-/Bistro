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

<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	
	$(document).ready(function(){
		$("#dupCheck").click(function(){
			if($("#joinId").val()==""){
				alert("아이디를 입력해주세요.");
				$("#joinId").focus();		
			}else{
				<c:url value="/join/idCheck" var="idchk"></c:url>
				var url = "${idchk}?joinId="+$("#joinId").val();
				window.open(url, "_blank", "width=450, height=200, toolbar=no, menubar=no, resizable=no")
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
				alert("중복체크 해주세요.");
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


      
 
	<h1>유저 회원가입 페이지</h1>
	<c:url value="/join/result/user" var="action"></c:url>
	 
      
 <form:form  modelAttribute="joinUser" method="post" action="${action} " id="form"> 
   
      <label>아이디 </label> : <form:input path="userId" id="joinId" />
      <input type="button" value="중복확인" id="dupCheck"/><br>
     <label>비밀번호 </label> : <form:input path="userPassword" id="pass" /><br>
     <label for="pass2">비밀번호 확인</label>
		<input type="password" id="pass2" name="pass2" /><br>
 
     <label>이름</label> : <form:input path="userName" /><br>
     <label>메일</label> : <form:input path="userMail" /><br>
     <label>폰</label> : <form:input path="userPhone" /><br>
     <form:input type="hidden" value="5" path="chance" /><br>
     
     <button type ="submit" name="proceed">다음</button>
      

</form:form>


</body>
</html>