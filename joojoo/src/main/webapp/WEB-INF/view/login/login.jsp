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
<link rel="stylesheet"   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<script   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>

<link rel="stylesheet"   href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

<link rel="stylesheet" href="/resources/demos/style.css">
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
</style>
<script>
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
</head>

<body class="homepage" bgcolor=#333323>
   <div id="header-wrapper" style="background-image: url(images/main.jpg)">

      <div id="header" class="container">

         <!-- Logo -->
         <h1 id="logo">
            <a href="index.html">JooJooclub</a>
         </h1>
         <p>Welcom To JooJooClub</p>
         <div align="right">
            <nav id="nav">
            <ul>
               <li><a class="icon fa-home" href="index.html"><span>Home</span></a></li>
               <li><a href="" class="icon fa-bar-chart-o"><span>Login</span></a>
               <li><a class="icon fa-cog" href="left-sidebar.html"><span>Join</span></a></li>
               <li><a class="icon fa-retweet" href="right-sidebar.html"><span>MyPage</span></a></li>
               <li><a class="icon fa-sitemap" href="no-sidebar.html"><span>Cart</span></a></li>
            </ul>
            </nav>
         </div>
      </div>
   </div>

   <div id="tabs">
      <ul>
         <li><a href="#tab1">일반회원</a></li>
         <li><a href="#tab2">업주회원 </a></li>

      </ul>
      <div id="tab1">
         <div id="footer" class="container" align="left">
            <div class="row">
				<c:url value="/login/check_user" var="action"></c:url>
               	 <form:form modelAttribute="user" method="post" action="${action}">
                  <div class="row 90%">
                     <div>
                        <form:input path="userId" name="id" placeholder="ID 입력 " type="text" /> 
                        <form:input path="userPassword" name="passwd" placeholder="PASSWD 입력  " type="password" />
                     </div>
                  </div>
                  
                      
                  <ul>
                     <li><a class="icon fa-home" href="index.html"><span>아이디/비밀번호찾기</span></a></li>
                     <li><a href="" class="icon fa-bar-chart-o"><span>회원가입</span></a>
                  </ul>
                  
                  
                  <div class="row 80%">
                     <div class="12u">
                        <%-- <a href="${action }" class="form-button-submit button icon fa-envelope">Login</a> --%>
                        <button type="submit" class="form-button-submit button icon fa-envelope">Login</button>
                     </div>
                  </div>
              	</form:form>
            </div>
         </div>
      </div>
      <div id="tab2">
         <div id="footer" class="container" align="left">
            <div class="row">

               <c:url value="/login/check_owner" var="action"></c:url>
               	<form:form modelAttribute="owner" method="post" action="${action}">
                  <div class="row 90%">
                     <div>
                         <form:input path= "ownerId" id = "ownerid" title="아이디를 입력하세요."/>
                         <form:input type = "password" path= "ownerPassword" id = "ownerpasswd" title="비밀번호를 입력하세요."/> 
                     </div>
                  </div>


                  <ul>
                     <li><a class="icon fa-home" href="index.html"><span>아이디/비밀번호찾기</span></a></li>
                     <li><a href="" class="icon fa-bar-chart-o"><span>회원가입</span></a>
                  </ul>

                  <div class="row 80%">

                     <div class="12u">
                        <%-- <a href="${action }" class="form-button-submit button icon fa-envelope">Login</a> --%>
                        <button type="submit" class="form-button-submit button icon fa-envelope">Login</button>
                     </div>
                  </div>
               </form:form>
            </div>
         </div>
      </div>
   </div>
</body>
</html>