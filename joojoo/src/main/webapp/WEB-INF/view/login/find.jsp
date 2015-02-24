<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>FindPage</title>

<link type="text/css" rel="stylesheet" href="/css/design.css" media="all" />
<script type="text/javascript" src="/js/design.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-1000px.css">
<link rel="stylesheet" href="css/style-desktop.css">
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<style type="text/css">
.searchButton {
	-moz-box-shadow:inset 0px 0px 50px -50px #fceaca;
	-webkit-box-shadow:inset 0px 0px 50px -50px #fceaca;
	box-shadow:inset 0px 0px 50px -50px #fceaca;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ffce79), color-stop(1, #eeaf41) );
	background:-moz-linear-gradient( center top, #ffce79 5%, #eeaf41 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffce79', endColorstr='#eeaf41');
	background-color:#ffce79;
	-webkit-border-top-left-radius:42px;
	-moz-border-radius-topleft:42px;
	border-top-left-radius:42px;
	-webkit-border-top-right-radius:42px;
	-moz-border-radius-topright:42px;
	border-top-right-radius:42px;
	-webkit-border-bottom-right-radius:42px;
	-moz-border-radius-bottomright:42px;
	border-bottom-right-radius:42px;
	-webkit-border-bottom-left-radius:42px;
	-moz-border-radius-bottomleft:42px;
	border-bottom-left-radius:42px;
	text-indent:2.62px;
	border:8px solid #eeb44f;
	display:inline-block;
	color:#ffffff;
	font-family:Verdana;
	font-size:35px;
	font-weight:bold;
	font-style:normal;
	height:84px;
	line-height:84px;
	width:200px;
	text-decoration:none;
	text-align:center;
	text-shadow:0px 0px 50px #ce8e28;
}
.searchButton:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #eeaf41), color-stop(1, #ffce79) );
	background:-moz-linear-gradient( center top, #eeaf41 5%, #ffce79 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#eeaf41', endColorstr='#ffce79');
	background-color:#eeaf41;
}.searchButton:active {
	position:relative;
	top:1px;
}</style>
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

<body class="homepage" bgcolor=#f7efff>

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

   <div class="container" id="header-wrapper" style="position:static; padding-left: 100px; padding-right: 100px">
     <br><br><br><br><br>
      <div class="row">  
      
       	<a href="findform?who=user">          
         <button class="searchButton" id="user" value="" type="button"  >일반찾기</button>
         </a>
              
      	 <a href="findform?who=owner">          
         <button class="searchButton" id="owner" value="" type="button"  >업주찾기</button>
         </a>        
        
      </div>
       <br><br><br><br><br>
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