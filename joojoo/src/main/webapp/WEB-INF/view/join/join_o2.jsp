<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="joojoo.entity.Stores" %>
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

</script>


</head>
<body>

	<c:url value="/join/result/owner" var="action"></c:url>
 <form:form  modelAttribute="joinStore" method="post" action="${action} "  id="form" class="form-4">
   	<h1>가게를 등록 해 주세요!</h1>
   	<h3>가게 이름</h3><form:input path="storeName"  placeholder="상호명" required="true"/>
    <h3>가게 전화</h3><form:input path="storePhone"  placeholder="전화번호" required="true"/>
    <h3>위치 선택</h3><form:select path="regionName"  items="${regionNames }" required="true"/>
    
   
    
    <h3>가게 주소</h3><form:input path="storeAdress"  placeholder="상세주소" required="true"/>
    <h3>위치 선택</h3><form:select path="typeName"  items="${typeNames }" required="true"/>
    <form:input type="hidden" value="${joinOwner.ownerId}" path="ownerId"/><br>
    
   
     <input type="submit" value="등록완료" />
      

</form:form>


</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JoinPage</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!-- 버튼부트스트랩 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"  href="../css/style-1000px.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/style-desktop.css">


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
input[type="button"],
	input[type="submit"],
	input[type="text"],
	input[type="password"],
	input[type="mail"]{
	font-family:'Jeju Gothic', serif;
		font-size: 14px;
	}
	input[type="submit"]{
	font-family:'Jeju Gothic', serif;
		font-size: 14px;
	
	}
	
	select{
	font-family:'Jeju Gothic', serif;
		font-size: 14px;
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
<c:url value="<%=request.getContextPath() %>" var="path"></c:url>
<body class="homepage" style="background-color:#323232;">
   <div id="header-wrapper" style= "background-image: url(../images/main.jpg)">

      <div id="header" class="container">

         <!-- Logo -->
         <h1 id="logo">
            <a href="<%=request.getContextPath() %>/main">JooJooclub</a>
         </h1>
         <p>Welcom To JooJooClub</p>
         <div align="right">
            <nav id="nav">
            <ul>
               <li><a class="icon fa-home" href="<%=request.getContextPath() %>/main"><span>Home</span></a></li>
               <li><a class="icon fa-bar-chart-o" href="<%=request.getContextPath() %>/login"><span>Login</span></a>
               <li><a class="icon fa-cog" href="<%=request.getContextPath() %>/join"><span>Join</span></a></li>
               <li><a class="icon fa-retweet" href="<%=request.getContextPath() %>/info/member"><span>MyPage</span></a></li>
               <li><a class="icon fa-sitemap" href="<%=request.getContextPath() %>/info/cart"><span>Cart</span></a></li>
            </ul>
            </nav>
         </div>
      </div>
   </div>
   <img  src="../images/bar.png" style="width: 100%">
 	
 	<div class="container" style="background-color: #323232;">
    <section id="features" class="container" style="background-color: #323232;"> 
   <div id="tabs" style="font-family:'Jeju Gothic', serif;">
      <ul>
        <!--  <li><a href="#tab1">일반회원 가입하기</a></li> -->
         <li><a href="#tab2" >업주회원 가입하기</a></li>

      </ul>
<%--         <div id="tab1">
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
      </div> --%>
      <div id="tab2" style=" background-color:#323232 ">
          <div id="footer" class="container" align="left">
            <div class="row2">

       <c:url value="/join/result/owner" var="action"></c:url>
 <form:form  modelAttribute="joinStore" method="post" action="${action} "  id="form" class="form-2">
			
			<!-- <table align="center" background="">
				<tr>
			<td> -->
			
		<%-- 	<form:form modelAttribute="joinOwner" method="post"	action="${action} " id="form2" >  --%>
			
			<div align="center">
				<table align="center" background="">
				<tr>
				<td>
					<%-- <form:input path="ownerId" id="joinId2" placeholder="아이디" required="true" />	<br>			
					<form:input path="ownerPassword" id="pass" type="password"	required="true"  placeholder="비밀번호"/><br>			
					<input type="password" id="pass2" name="pass2" required="true"  placeholder="비밀번호 재확인"/>	<br>		
					<form:input path="ownerName" required="true"  placeholder="이름"/>	<br>	
					<form:input path="ownerMail" id="joinMail2" type="email" required="true"  placeholder="이메일"/>	<br>					
					<form:input path="ownerPhone" required="true"  placeholder="휴대전화번호"/><br>
					<form:input path="licenseNumber" id="joinLicense" required="true"  placeholder="사업자등록번호" /><br>					
					<input type="submit" value="업주등록(다음단계로)" class="btn btn-primary btn-lg btn-block"/><br> --%>
			<div style="width: 20cm; font-size: 14px; font-family:'Jeju Gothic', serif;" >		<!-- <br> -->
			 <form:input path="storeName"  placeholder="상호명" required="true" type="text" /><br>
			<form:input path="storePhone"  placeholder="전화번호" required="true" type="text" /><br>
			<form:select path="regionName" type="text" items="${regionNames }" required="true"/><br>
			<form:input path="storeAdress"  placeholder="상세주소" required="true"/><br>
			<form:select path="typeName"  items="${typeNames }" required="true" type="text"/><br>
			<form:input type="hidden" value="${joinOwner.ownerId}" path="ownerId"/><br>			
			<input type="submit" id="next" value="업주 및 상점 등록 확인" class="btn btn-primary btn-lg btn-block"style="width:20cm"/> 
			</div>
			 		
				</td>
				<td>
					<!-- &nbsp;		
					<input type="button" value="V" id="idDupCheck2" class="btn btn-primary btn-xs" /><br>
					<input type="hidden" name="checked" id="checked" /><br>
					
					<br><br><br><br><br><br><br> <br>&nbsp;
					<input type="button" value="V" id="mailDupCheck2"  class="btn btn-primary btn-xs"/>	<br>
					<input type="hidden" name="checked2" id="checked2" />	<br>
					
					<br><br><br>&nbsp;
					<input type="button" value="V" id="licenseDupCheck"  class="btn btn-primary btn-xs"/><br>
					<input type="hidden" name="checked3" id="checked3" /><br>  -->
				</td>
				</tr>
				</table>  	             
			</div>
			</form:form>
               
                  
            

            </div>
         </div>
      </div>
   </div>
   </section>
   </div>
   
   <!-- Footer -->
	<div>
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


