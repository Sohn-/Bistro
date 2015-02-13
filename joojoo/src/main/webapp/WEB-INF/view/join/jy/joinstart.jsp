<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Strongly Typed by HTML5 UP</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<!-- <link rel="stylesheet" href="css/style.css" /> -->
<style type="text/css">


</style>
</head>
<body>
<!-- <body class="homepage"> -->
<!--    <div id="header-wrapper">
      
      
         <div id="header" class="container" style="background-image: url('css/images/back100.jpg');">

            Logo
            <h1 id="logo">
               <a href="index.html" style="color:#FFBB00; font-family:'Nanum Barun Gothic';">Joo Joo club</a>
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
   </div> -->
   
   <%@include file="header.jsp"%>
   <!-- Features -->
   <div id="features-wrapper" style="background-color:black";>
       <section id="features" class="container"> 

   
 <div id="joinform" class="joinform"> 
<%@include file="joinlayout.jsp"%>
 </div>
      </section>
   </div>
   


   <!-- Footer -->
   <div id="footer-wrapper">
	<%@include file="footer.jsp"%>
   </div>
</body>
</html>