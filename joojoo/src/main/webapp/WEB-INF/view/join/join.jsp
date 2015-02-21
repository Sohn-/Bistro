<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>LoginPage</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!-- 버튼부트스트랩 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"  href="css/style-1000px.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-desktop.css">


<link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<!--   <link rel="stylesheet" href="css/joinform.css" /> -->




<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>


 <script>

 
 
   
   $(document).ready(function(){
	   
	   $("#idDupCheck2").click(function(){
			if($("#joinId2").val()==""){
				alert("아이디를 입력해주세요.");
				$("#joinId2").focus();		
			}
				<c:url value="/join/idCheck2" var="idchk"></c:url>
				var url = "${idchk}?joinId2="+$("#joinId2").val();
				window.open(url, "_blank", "width=600, height=300, toolbar=no, menubar=no, resizable=no")
			
		});
		
		$("#mailDupCheck2").click(function(){
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
	           // updateErrorMessage();
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

/*        var updateErrorMessage = function() {
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
   <%--    else{
         var xhr = new XMLHttpRequest();
         
         xhr.onreadystatechange=function(){
            if(xhr.readyState==4 && xhr.status==200){
                document.querySelector("#drophere")
               .innerHTML=""; 
               document.querySelector("#drophere")
               .innerHTML=xhr.responseText;
            }
         }
         var url = "<%=request.getContextPath()%>/check_user";
         xhr.open("post", url, true);
         xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
         /* var msg = "흠흠흠...";
         
         xhr.send("msg="+msg); */
         xhr.send();
         
         return true;
         
      } --%>
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
      
      window.onload=function (){
         var xhr = new XMLHttpRequest();
         
         document.querySelector("#opener1")
         .addEventListener("click", function(){
            xhr.onreadystatechange=function(){
               if(xhr.readyState==4 && xhr.status==200){
                   document.querySelector("#drophere")
                  .innerHTML=""; 
                  document.querySelector("#drophere")
                  .innerHTML=xhr.responseText;
               }
            }
            var url = "<%=request.getContextPath()%>/login_fail";
            xhr.open("post", url, true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            /* var msg = "흠흠흠...";
            
            xhr.send("msg="+msg); */
            xhr.send();
         }, false);
      }
   </script>





<link rel="stylesheet"   href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

<style type="text/css">
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
#header{
	background-image: url(images/main.jpg);
}
</style>
<%-- <script>

   window.onload=function(){
      var xhr = new XMLHttpRequest();
      
      document.querySelector("#send")
      .addEventListener("click", function(){
         xhr.onreadystatechange=function(){
            if(xhr.readyState==4 && xhr.status==200){
               document.querySelector("#drophere")
               .innerHTML+=xhr.responseText+"<br>";
            }
         }
         var url = "<%=request.getContextPath()%>/ajax";
         xhr.open("post", url, true);
         xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
         var msg = document.querySelector("#comment").value;
         
         xhr.send("msg="+msg);
      }, false);
   }
</script> --%>
</head>
<c:url value="<%=request.getContextPath() %>" var="cp"></c:url>
	<div id="header-wrapper">                        
	<div id="header" class="container"> 
	<h1 id="logo"><a href="<%=request.getContextPath()%>">JooJooclub</a></h1>
	<p>Welcom To JooJooClub</p>
	
	<!-- 헤더 메뉴 -->
	<div align="right">
		<nav id="nav">
			<ul>				
				<c:if test="${empty loginUser }">
				
				<li><a class="icon fa-home" href="<%=request.getContextPath() %>/"><span>Home</span></a></li>
				<li><a class="icon fa-bar-chart-o" href="<%=request.getContextPath() %>/login"><span>Login</span></a>
			    <li><a class="icon fa-cog" href="<%=request.getContextPath() %>/join"><span>Join</span></a></li>			   
			    <li><a class="icon fa-retweet" href="<%=request.getContextPath() %>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap" href="<%=request.getContextPath() %>/review"><span>ReviewBoard</span></a></li>
				
				</c:if>			
				<c:if test="${!empty loginUser }">
				<li><span>${loginUser.userId}님 [찬스:${loginUser.chance }]</span>
				<li><a class="icon fa-home" href="<%=request.getContextPath() %>/"><span>Home</span></a></li>			   
			    <li><a class="icon fa-retweet" href="<%=request.getContextPath() %>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap" href="<%=request.getContextPath() %>/review"><span>ReviewBoard</span></a></li>				
				<li><a class="icon fa-bar-chart-o" href="<%=request.getContextPath() %>/logout"><span>Logout</span></a>				
				</c:if>
		    </ul>
	    </nav>
    </div><!-- 헤더 메뉴 끝 --> 
    </div>
   <img  src="images/bar.png" style="width: 100%">
 <div id="features-wrapper">
      <section id="features" class="container"> 
   <div id="tabs">
      <ul>
         <li><a href="#tab1">일반회원 가입하기</a></li>
         <li><a href="#tab2">업주회원 가입하기</a></li>

      </ul>
      <div id="tab1">
         <div id="footer" class="container" align="left">
            <div class="row">
            <c:url value="/join/result/user" var="action"></c:url> 
			<form:form  modelAttribute="joinUser" method="post" action="${action} " id="form" class="form-4" > 

    <h1 align="center">일 반 회 원 가 입</h1>
    
    
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
      </div>
      <div id="tab2">
          <div id="footer" class="container" align="left">
            <div class="row2">

              <c:url value="/join/join_o2" var="action"></c:url> 
          <form:form  modelAttribute="joinOwner" method="post" action="${action} " id="form2" class="form-4"> 

     <h1 align="center">업 주 회 원 가 입</h1>
         <h3>아이디</h3><form:input path="ownerId" id="joinId2" placeholder="Id" required="true"/>
        
        <input type="button" value="중복확인" id="idDupCheck2"/><br>
       <input type="hidden" name="checked" id="checked"/><br>
       <h3>비밀번호 </h3><form:input path="ownerPassword" id="pass" type="password" required="true" /><br>
   
   
        <h3>비밀번호 확인</h3>
      <input type="password" id="pass2" name="pass2" required="true" /><br>
   
        <h3>이름</h3> <form:input path="ownerName" required="true" /><br>
       
    
        <h3>메일</h3><form:input path="ownerMail" id="joinMail2" type="email" required="true"/><br>
        <input type="button" value="중복확인" id="mailDupCheck2"/><br>
         <input type="hidden" name="checked2" id="checked2"/><br>
        <h3>휴대전화</h3><form:input path="ownerPhone" required="true"/><br>
         <h3>사업자등록번호</h3><form:input path="licenseNumber" id="joinLicense" required="true"/><br>
      <input type="button" value="중복확인" id="licenseDupCheck"/><br>
         <input type="hidden" name="checked3" id="checked3"/><br> 
   
       <input type="submit" id="next" value="다음" />
                  </div>
                </form:form> 
               
                  
            

            </div>
         </div>
      </div>
   </div>
   </section>
   </div>
   

   
   
</body>
</html>
