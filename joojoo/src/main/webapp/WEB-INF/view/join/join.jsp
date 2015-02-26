<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JoinPage</title>


<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/style-1000px.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/style-desktop.css">
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

<style type="text/css">
table, th, td {
	
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}

table#t01 {
	width: 100%;
	background-color: #f1f1c1;
}

label {
	display: inline-block;
	width: 5em;
}

fieldset .help {
	margin-top: 2em;
	display: inline-block;
}

.ui-tooltip {
	width: 200px;
}


#header {
	background-image: url(images/main.jpg);
}

fieldset div {
	margin-bottom: 2em;
}

input[type="button"],
	input[type="submit"],
	input[type="text"],

	input[type="email"]{
	font-family:'Jeju Gothic', serif;
		font-size: 14px;
	}
	input[type="submit"]{
	font-family:'Jeju Gothic', serif;
		font-size: 14px;
	
	}
	input[type="password"]{
	font-size: 14px;

	}

</style>
<script>    
 $(document).ready(function(){	   
  $("#idDupCheck2").click(function(){
	if($("#joinId2").val()==""){
		alert("아이디를 입력해주세요.");
		$("#joinId2").focus();		
	}
		<c:url value="/join/idCheck2" var="idchk"></c:url>
		var url = "${idchk}?joinId2="+$("#joinId2").val();
		window.open(url, "_blank", "width=600, height=400, toolbar=no, menubar=no, resizable=no")			
});

$("#mailDupCheck2").click(function(){
	if($("#joinMail2").val()==""){
		alert("이메일을 입력해 주세요.");
		$("#joinMail2").focus();		
	}else{
		<c:url value="/join/mailCheck2" var="mailchk"></c:url>
		var url = "${mailchk}?joinMail2="+$("#joinMail2").val();
		window.open(url, "_blank", "width=600, height=400, toolbar=no, menubar=no, resizable=no")
	}
});		
$("#licenseDupCheck").click(function(){
	if($("#joinLicense").val()==""){
		alert("사업자등록번호를 입력해 주세요.");
		$("#joinLicense").focus();		
	}else{
		<c:url value="/join/licenseCheck" var="licensechk"></c:url>
		var url = "${licensechk}?joinLicense="+$("#joinLicense").val();
		window.open(url, "_blank", "width=600, height=400, toolbar=no, menubar=no, resizable=no")
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

  password1.addEventListener('change', checkPasswordValidity, false);
  password2.addEventListener('change', checkPasswordValidity, false);
  
  var form = document.getElementById('form2');
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
          password1.focus();
      }else{
      	 password1.setCustomValidity('');
      }
  }, false);      
    
   $("#idDupCheck").click(function(){
      if($("#joinId").val()==""){
         alert("아이디를 입력해주세요.");
         $("#joinId").focus();      
      }else{
         <c:url value="/join/idCheck" var="idchk"></c:url>
         var url = "${idchk}?joinId="+$("#joinId").val();


         var popOptions = "dialogWidth: 500px; dialogHeight: 30px; center: yes; resizable: yes; status: no; scroll: no;"; 
         window.open(url, "_blank", "width=600, height=400, toolbar=no, menubar=no, resizable=no") ;
      		/* window.showModelessDialog(url,window,popOptions); */


      }
   });
   
   $("#mailDupCheck").click(function(){
      if($("#joinMail").val()==""){
         alert("이메일을 입력해 주세요.");
         $("#joinMail").focus();      
      }else{
         <c:url value="/join/mailCheck" var="mailchk"></c:url>
         var url = "${mailchk}?joinMail="+$("#joinMail").val();
         window.open(url, "_blank", "width=600, height=400, toolbar=no, menubar=no, resizable=no")
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
function Check_user(f){ 
   if (document.form1.userPassword.value == "" || document.form1.userId.value == "") 
   { 
      $("#dialog").dialog({
         autoOpen : false,
         show : {
            effect : "blind",
            duration : 1000
         },
         hide : {
            effect : "explode",
            duration : 1000
         }
      });

      $("#opener1").click(function() {
         $("#dialog").dialog("open");
      });
   document.form1.userId.focus(); 
   return false; 
   } 

   return true;
}

 
function Check_owner(f){ 
   if (document.form2.ownerPassword.value == "" || document.form2.ownerId.value == "") 
   { 
      $("#dialog").dialog({
         autoOpen : false,
         show : {
            effect : "blind",
            duration : 1000
         },
         hide : {
            effect : "explode",
            duration : 1000
         }
      });

      $("#opener2").click(function() {
         $("#dialog").dialog("open");
      });
   document.form2.ownerId.focus(); 
   return false; 
   } 
   return true;
}

 $(function() {
      $("#tabs").tabs();
   });

   $(function() {
      var tooltips = $("[title]").tooltip({
         position : {
            my : "left top",
            at : "right+5 top-5"
         }
      });
   });

</script>



<style type="text/css">
label {
	/*  display: inline-block;
   width: 5em; */
	
}

button {
	size: 10cm;
}

fieldset .help {
	margin-top: 2em;
	display: inline-block;
}

.ui-tooltip {
	width: 200px;
}

#header {
	background-image: url(images/main.jpg);
}
<<<<<<< HEAD
=======


	input[type="button"],
	input[type="submit"],
	input[type="text"],
	
	input[type="mail"]{
	font-family:'Jeju Gothic', serif;
	color: black;
	
	}
>>>>>>> branch 'master' of https://github.com/Sohn-/Bistro
</style>

</head>

<body background="#323232" style="background-color: #323232;">
	<c:url value="<%=request.getContextPath()%>" var="cp"></c:url>
	<div id="header-wrapper">
		<div id="header" class="container">
		<h1 id="logo"><a href="<%=request.getContextPath()%>">JooJooclub</a></h1>
		<p>Welcom To JooJooClub</p>
			<div align="right">
			<nav id="nav">
			<ul>
				<c:if test="${empty loginUser }">
				<li><a class="icon fa-home"	href="<%=request.getContextPath()%>/"><span>Home</span></a></li>
				<li><a class="icon fa-bar-chart-o"	href="<%=request.getContextPath()%>/login"><span>Login</span></a>
				<li><a class="icon fa-cog"	href="<%=request.getContextPath()%>/join"><span>Join</span></a></li>			   
				<li><a class="icon fa-retweet"	href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap"	href="<%=request.getContextPath()%>/review"><span>ReviewBoard</span></a></li>					
				</c:if>			
		
				<c:if test="${!empty loginUser }">
				<li><span>${loginUser.userId}님 [찬스:${loginUser.chance }]</span>
				<li><a class="icon fa-home"	href="<%=request.getContextPath()%>/"><span>Home</span></a></li>			   
				<li><a class="icon fa-retweet"	href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap"	href="<%=request.getContextPath()%>/review"><span>ReviewBoard</span></a></li>				
				<li><a class="icon fa-bar-chart-o"	href="<%=request.getContextPath()%>/logout"><span>Logout</span></a>				
				</c:if>
			</ul>
			</nav>
			</div>
		</div>	
	</div>     
     
   <img src="images/bar.png" style="width: 100%">

	<div class="container" style="background-color: #323232;">
		<section id="features"> 	
		
		<div id="tabs" style="font-family:'Jeju Gothic', serif; ">
		
		<ul>
		   <li><a href="#tab1">일반회원 가입하기</a></li>
		   <li><a href="#tab2">업주회원 가입하기</a></li>		
		</ul>
		
		<div id="tab1" style="background-color:#f6f6f6;">	
			<c:url value="/join/result/user" var="action"></c:url> 
			<form:form modelAttribute="joinUser" method="post" action="${action} " id="form"> 			

				<h2 align="left" style="color:black;">&nbsp;&nbsp;&nbsp;일 반 회 원 가 입</h2>		

				<div align="center">		
					<table align="center" background="" style="color:black">
					<tr>
					<td>
						<form:input path="userId" id="joinId" placeholder="아이디" required="true" size="20" /><br> 
						<form:input path="userPassword" id="pass" type="password"	required="true" placeholder="비밀번호" /><br>   
						<input type="password"  id="pass2" name="pass2" required="true"	placeholder="비밀번호 재확인" /><br> 
						      	
						<form:input path="userName" id="joinName" required="true" placeholder="이름" />   <br> 			
						<form:input path="userMail" id="joinMail" type="email" required="true"	placeholder="e-mail" /><br>
						<form:input path="userPhone" required="true" placeholder="휴대전화번호" /><br>   
						<form:input type="hidden" value="5" path="chance" required="true" /><br>
						<input type="submit" value="가입하기" align="left" size="15cm" class="btn btn-primary btn-lg btn-block">
					</td>
					<td>     
						&nbsp;				   
						<!-- 모달들어가는 부분  -->
						<input type="button" value="v" id="idDupCheck"	class="btn btn-primary btn-xs" /><br>            
						<input type="hidden" name="checked" id="checked" /><br>
						
						&nbsp;<br><br><br><br><br><br> <br>&nbsp;
						<!-- 모달들어가는 부분  -->
						<input type="button" value="v" id="mailDupCheck" class="btn btn-primary btn-xs" />
						<input type="hidden" name="checked2" id="checked2" />
					</td>
					</tr>
					</table>   
					
					
					
					<%-- <c:url value="/join/result/owner" var="action"></c:url> --%>

					
					
					
					
					 
				</div> 			
			</form:form>
	
					
	    </div>
	    
	    <div id="tab2" style="background-color:#f6f6f6;">
<<<<<<< HEAD
	    <h1 align="center" >업 주 회 원 가 입</h1>
=======
	    <h2 align="left" style="color:black;"> &nbsp;&nbsp;&nbsp;업 주 회 원 가 입</h2>
>>>>>>> branch 'master' of https://github.com/Sohn-/Bistro
			<c:url value="/join/join_o2" var="action"></c:url> 
			
			<!-- <table align="center" background="">
				<tr>
			<td> -->
			
			<form:form modelAttribute="joinOwner" method="post"	action="${action} " id="form2" > 
			
			<div align="center">
				<table align="center" background="">
				<tr>
				<td>
					<form:input path="ownerId" id="joinId2" placeholder="아이디" required="true" />	<br>			
					<form:input path="ownerPassword" id="pass" type="password"	required="true"  placeholder="비밀번호"/><br>			
					<input type="password" id="pass2" name="pass2" required="true"  placeholder="비밀번호 재확인"/>	<br>		
					<form:input path="ownerName" required="true"  placeholder="이름"/>	<br>	
					<form:input path="ownerMail" id="joinMail2" type="email" required="true"  placeholder="이메일"/>	<br>					
					<form:input path="ownerPhone" required="true"  placeholder="휴대전화번호"/><br>
					<form:input path="licenseNumber" id="joinLicense" required="true"  placeholder="사업자등록번호" /><br>					
					<input type="submit" value="업주등록(다음단계로)" class="btn btn-primary btn-lg btn-block"/><br>
					<br>
			<%-- <form:input path="storeName"  placeholder="상호명" required="true"/><br>
			<form:input path="storePhone"  placeholder="전화번호" required="true"/><br>
			<form:select path="regionName"  items="${regionNames }" required="true"/><br>
			<form:input path="storeAdress"  placeholder="상세주소" required="true"/><br>
			<form:select path="typeName"  items="${typeNames }" required="true"/><br>
			<form:input type="hidden" value="${joinOwner.ownerId}" path="ownerId"/><br>			
			<input type="submit" id="next" value="업주 및 상점 등록 확인" class="btn btn-primary btn-lg btn-block"/> --%>
			
			 		
				</td>
				<td>
					&nbsp;		
					<input type="button" style="font-size: 14px;" value="V" id="idDupCheck2" class="btn btn-primary btn-xs" /><br>
					<input type="hidden" name="checked" id="checked" /><br>
					
					<br><br><br><br><br><br> <br>&nbsp;
					<input type="button" value="V" id="mailDupCheck2"  class="btn btn-primary btn-xs"/>	<br>
					<input type="hidden" name="checked2" id="checked2" />	<br>
					
					<br><br>&nbsp;
					<input type="button" value="V" id="licenseDupCheck"  class="btn btn-primary btn-xs"/><br>
					<input type="hidden" name="checked3" id="checked3" /><br> 
				</td>
				</tr>
				</table>  	             
			</div>
			</form:form> <!-- </td><td> -->
			<%-- 
			<form:form  modelAttribute="joinStore" method="post" action="${action} "  id="form2" >
			
			
			</form:form> --%>
      		<!-- </td>
			</tr>
			</table>  -->
	
			
		</div>




</div>
</section> 
</div>

<!-- Footer -->
	<div >
		<div id="footer" class="container">
			<div align="center">
				<br> <br> <a href="<%=request.getContextPath()%>/footer/servicePolicy">이용약관</a>	&nbsp; &nbsp; 
				<a href="<%=request.getContextPath()%>/footer/privacyPolicy">개인정보보호방침</a>		&nbsp; &nbsp; 
				<a href="<%=request.getContextPath()%>/footer/youthPolicy">청소년보호정책</a>			&nbsp; &nbsp; 
				<a href="<%=request.getContextPath()%>/footer/helpCenter">고객센터</a> <br>	<br>
				<div style="font-size: 12px;">
					사업자등록번호:130-50-61004 (주)주주총회 대표이사: 정주주 주소: 이클립시 디비구 자바동 123-45 <br>
					주주총회앱의 모든 콘텐츠는 저작권법의 보호를 받으므로, 무단 전재, 복사, 배포 등을 금합니다. <br>
					Copyright (c) JooJooClub All Rights Reserved.
				</div>
				<br>
			</div>
		</div>
	</div>

</body>



</html>
