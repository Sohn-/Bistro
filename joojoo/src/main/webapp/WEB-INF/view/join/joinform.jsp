<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="joojoo.entity.Users" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet" href="../css/style1.css" />
<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/joinfont.css"/> --%>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="../css/joinform.css" />
<link rel="stylesheet" href="../css/joinlayout.css" />
<script type="text/javascript">
	
	$(document).ready(function(){
		
		
		$("#idDupCheck").click(function(){
			if($("#joinId").val()==""){
				alert("아이디를 입력해주세요.");
				$("#joinId").focus();		
			}else{
				<c:url value="/join/idCheck" var="idchk"></c:url>
				var url = "${idchk}?joinId="+$("#joinId").val();
				window.open(url, "_blank", "width=600, height=300, toolbar=no, menubar=no, resizable=no")
			}
		});
		
		$("#mailDupCheck").click(function(){
			if($("#joinMail").val()==""){
				alert("이메일을 입력해 주세요.");
				$("#joinMail").focus();		
			}else{
				<c:url value="/join/mailCheck" var="mailchk"></c:url>
				var url = "${mailchk}?joinMail="+$("#joinMail").val();
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
<style type="text/css">
  #jb-contain {
        background-color: #2E2E2E;
        width: auto;
        margin: 0px auto;
       /*  padding: 20px; */
  
        font-family: 'Nanum Barun Gothic';
      }
      
       #jb-joincontent {
      font-family: 'Nanum Barun Gothic';
      color: #E0E0E0;
      background-color:#353535;
       width: 400px;
       margin: 0px auto 0px;
        padding: 0px;

      }
      #jb-joinlogo {
      font-family: 'Nanum Barun Gothic';
      color: #E0E0E0;
      background-color:#848484;
       width: 400px;
       height:60pxpx;
       margin: 0px auto 0px;
        padding: 0px;

      }
         @media screen and (max-width:500px) {
        #jb-contain {
          width: auto;
        }
         }

</style>


</head>
<body>

<%-- <form:form  modelAttribute="joinUser" method="post" action="${action} ">
   
      <label>아이디 </label> : <form:input path="userId"/><br>
     <label>비밀번호 </label> : <form:input path="userPassword"/><br>
     <label>이름</label> : <form:input path="userName"/><br>
     <label>메일</label> : <form:input path="userMail"/><br>
     <label>폰</label> : <form:input path="userPhone"/><br>
     <form:input type="hidden" value="5" path="chance"/><br>
     
     <button type ="submit" name="proceed">다음</button>
      

</form:form> --%>
<div id="jb-contain">
<div id="jb-joinlogo">
<!-- <img src="css/images/logo1.png" align="left"><br><br>
<h1 align="center">회원가입</h1> -->
</div>
<div id="jb-joincontent">
<img src="css/images/logo1.png" align="left"><br><br>
<h2 align="left">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 회원가입</h2>
<c:url value="/join/result/user" var="action"></c:url> 
<form:form  modelAttribute="joinUser" method="post" action="${action} " id="form" class="form-4"> 

    <h1 align="center">회 원 가 입</h1>
    
    
    	<h3>아이디</h3><form:input path="userId" id="joinId" placeholder="Id" required="true"/>
        
        <input type="button" value="중복확인" id="idDupCheck"/><br>
    	<input type="hidden" name="checked" id="checked"/><br>
    	<h3>비밀번호 </h3><form:input path="userPassword" id="pass" type="password" required="true" /><br>
   
   
        <h3>비밀번호 확인</h3>
		<input type="password" id="pass2" name="pass2" required="true" /><br>
   
        <h3>이름</h3> <form:input path="userName" required="true" /><br>
       
    
        <h3>메일</h3><form:input path="userMail" id="joinMail" type="email" required="true"/><br>
        <input type="button" value="중복확인" id="mailDupCheck"/><br>
   		<input type="hidden" name="checked2" id="checked2"/><br>
        <h3>휴대전화</h3><form:input path="userPhone" required="true"/><br>
   
        <form:input type="hidden" value="5" path="chance" required="true"/><br>
   
       <input type="submit" value="가입하기" />
         
</form:form>
</div>
</div>
</body>
</html>