<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link type="text/css" rel="stylesheet" href="/css/design.css" media="all" />
<script type="text/javascript" src="/js/design.js"></script>

<title>LoginPage</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<link rel="stylesheet"   href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>


<!-- 버튼부트스트랩 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"  href="css/style-1000px.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-desktop.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
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

#accordion-resizer {
   padding: 5px;
   width: 100%;
   height: 700px;
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

 $(function() {
    $("#accordion").accordion({
       event : "click hoverintent"
    });
 });

 $.event.special.hoverintent = {
    setup : function() {
       $(this).bind("mouseover", jQuery.event.special.hoverintent.handler);
    },
    teardown : function() {
       $(this).unbind("mouseover",
             jQuery.event.special.hoverintent.handler);
    },
    handler : function(event) {
       var currentX, currentY, timeout, args = arguments, target = $(event.target), previousX = event.pageX, previousY = event.pageY;

       function track(event) {
          currentX = event.pageX;
          currentY = event.pageY;
       }
       ;

       function clear() {
          target.unbind("mousemove", track).unbind("mouseout", clear);
          clearTimeout(timeout);
       }

       function handler() {
          var prop, orig = event;

          if ((Math.abs(previousX - currentX) + Math.abs(previousY
                - currentY)) < 7) {
             clear();

             event = $.Event("hoverintent");
             for (prop in orig) {
                if (!(prop in event)) {
                   event[prop] = orig[prop];
                }
             }
             // Prevent accessing the original event since the new event
             // is fired asynchronously and the old event is no longer
             // usable (#6028)
             delete event.originalEvent;

             target.trigger(event);
          } else {
             previousX = currentX;
             previousY = currentY;
             timeout = setTimeout(handler, 100);
          }
       }

       timeout = setTimeout(handler, 100);
       target.bind({
          mousemove : track,
          mouseout : clear
       });
    }
 };
</script>
</head>

<body class="homepage" bgcolor=#333323>
   <div id="header-wrapper">
      <div id="header" class="container"  style= "background-image: url(images/main.jpg)">        
         <h1 id="logo"><a href="index.html">JooJooclub</a></h1>
         <p>Welcom To JooJooClub</p>
         <div align="right">
            <nav id="nav">
            <ul>
               <li><a class="icon fa-home" href="main"><span>Home</span></a></li>
               <li><a class="icon fa-bar-chart-o" href="login"><span>Login</span></a>
               <li><a class="icon fa-cog" href="join"><span>Join</span></a></li>
               <li><a class="icon fa-retweet" href="info/member"><span>MyPage</span></a></li>
               <li><a class="icon fa-sitemap" href="info/cart"><span>Cart</span></a></li>
            </ul>
            </nav>
         </div>
      </div>      
   </div>

   <div id="tabs">
      <ul>
      <br>
         <li><a href="#tab1">아이디찾기</a></li>
         <li><a href="#tab2">비밀번호찾기</a></li>
      </ul>
      <div id="tab1">
         <div id="footer" class="container" align="left">
            <div class="row">

              <c:url value="/findprocess" var="action"></c:url>
               	 <form:form modelAttribute="user" method="post" action="${action}">                  
                  <div class="row 90%">
                     <div>              
                       
                        <form:input path="userName" name="userName" 	placeholder="이름"  			type="text" />
                      	<form:input path="userMail" name="userMail" 	placeholder="e-mail"  		type="text" />                     
                     </div>
                  </div>   
                  
                  <div class="row 80%">
                     <div class="12u">
                        <a href="#" class="form-button-submit button icon fa-envelope">Search</a>
                     </div>
                  </div>
               </form:form>
            </div>
         </div>
      </div>
      
      <div id="tab2">
         <div id="footer" class="container" align="left">
            <div class="row">

              <c:url value="/findprocess" var="action"></c:url>
               	 <form:form modelAttribute="user" method="post" action="${action}">                  
                  <div class="row 90%">
                     <div>              
                        <form:input path="userId" name="userId" 	placeholder="id "  			type="text"/> 
                        <form:input path="userName" name="userName" 	placeholder="이름"  			type="text" />          
                        <form:input path="userMail" name="userMail" 	placeholder="e-mail"  		type="text" />                     
                     </div>
                  </div>   
                  
                  <div class="row 80%">
                     <div class="12u">
                        <a href="#" class="form-button-submit button icon fa-envelope">Search</a>
                     </div>
                  </div>
               </form:form>
            </div>
         </div>
      </div>
      
   </div>
     <div id="footer-wrapper">
      <div id="footer" class="container">
         <div align="center">
            <a href="">이용약관</a> &nbsp; &nbsp; 
            <a href="">개인정보보호방침</a> &nbsp;   &nbsp; 
            <a href="">청소년보호정책</a> &nbsp; &nbsp; 
            <a href="">고객센터</a>
         </div>
      </div>
   </div>  
   
</body>
</html>