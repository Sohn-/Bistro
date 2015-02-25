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
<!-- <link rel="stylesheet"  href="../../css/style-1000px.css">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/style-desktop.css"> -->

<link type="text/css" rel="stylesheet" href="<c:url value="/css/style-1000px.css"/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value="/css/style.css"/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value="/css/style-desktop.css"/>"/>

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


<%--  <script>

 
 
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
      else{
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
   </script> --%>





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
	background-image: url(../images/main.jpg);
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
<body class="homepage" bgcolor=#333323>
   <div id="header-wrapper">

      <div id="header" class="container">

         <!-- Logo -->
         <h1 id="logo">
            <a href="<%=request.getContextPath() %>/main">JooJooclub</a>
         </h1>
         <p>Welcom To JooJooClub</p>
         <div align="right">
           <nav id="nav">
			<ul>			
			<c:if test="${!empty loginUser }">
				<li><span>${loginUser.userId}님 [찬스:${loginUser.chance }]</span></li>
			</c:if>
			
			<c:if test="${!empty loginOwner }">
				<li><span>${loginOwner.ownerId}님</span></li>
			</c:if>

			<c:if test="${!empty loginUser || !empty loginOwner }">
				<li><a class="icon fa-home"			href="<%=request.getContextPath()%>/"><span>Home</span></a></li>
				<li><a class="icon fa-retweet"		href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap"		href="<%=request.getContextPath()%>/review"><span>ReviewBoard</span></a></li>
				<li><a class="icon fa-bar-chart-o"	href="<%=request.getContextPath()%>/logout"><span>Logout</span></a>
			</c:if>
			
			<c:if test="${empty loginOwner && empty loginUser }">
				<li><a class="icon fa-home"			href="<%=request.getContextPath()%>/"><span>Home</span></a></li>
				<li><a class="icon fa-bar-chart-o"	href="<%=request.getContextPath()%>/login"><span>Login</span></a>
				<li><a class="icon fa-cog"			href="<%=request.getContextPath()%>/join"><span>Join</span></a></li>
				<li><a class="icon fa-retweet"		href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap"		href="<%=request.getContextPath()%>/review"><span>ReviewBoard</span></a></li>
			</c:if>
			</ul>
		</nav>
         </div>
      </div>
   </div>
   <!-- <img  src="/images/bar.png" style="width: 100%"> -->
   
    <div id="features-wrapper">
      <section id="features" class="container"> 
   
   
     가입을 축하드립니다. 마이페이지에서 사용가능한 별을 확인하세요 
   <c:url value="/info" var="url"></c:url>
<a href="${url }"><input type="button" value="마이페이지가기"> </a>
</section>
</div>

<!--  <div id="features-wrapper">
      <section id="features" class="container"> 
   
   </section> -->
   <!-- </div> -->
   

   
   
</body>
</html>


