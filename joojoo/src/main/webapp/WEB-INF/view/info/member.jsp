<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MyPage</title>


<!--  //if empty 그거 써서...userId 가 empty가 아니면 인클루드... 유저면 member_u
            업주면 member_o -->


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

<script   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>

<link rel="stylesheet"   href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

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

#accordion-resizer {
   padding: 5px;
   width: 100%;
   height: 700px;
}
#header{
	background-image: url(images/main.jpg);
}

  .scroll-pane { overflow: auto; width: 99%; float:left; }
  .scroll-content { width: 6600px; float: left; }
  .scroll-content-item { width: 300px; height: 300px; float: left; margin: 10px; font-size: 3em; line-height: 96px; text-align: center; }
  .scroll-bar-wrap { clear: left; padding: 0 4px 0 2px; margin: 0 -1px -1px -1px; }
  .scroll-bar-wrap .ui-slider { background: none; border:0; height: 2em; margin: 0 auto;  }
  .scroll-bar-wrap .ui-handle-helper-parent { position: relative; width: 100%; height: 100%; margin: 0 auto; }
  .scroll-bar-wrap .ui-slider-handle { top:.2em; height: 1.5em; }
  .scroll-bar-wrap .ui-slider-handle .ui-icon { margin: -8px auto 0; position: relative; top: 50%; }
  
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
   
   
   $(function() {
	    //scrollpane parts
	    var scrollPane = $( ".scroll-pane" ),
	      scrollContent = $( ".scroll-content" );
	 
	    //build slider
	    var scrollbar = $( ".scroll-bar" ).slider({
	      slide: function( event, ui ) {
	        if ( scrollContent.width() > scrollPane.width() ) {
	          scrollContent.css( "margin-left", Math.round(
	            ui.value / 100 * ( scrollPane.width() - scrollContent.width() )
	          ) + "px" );
	        } else {
	          scrollContent.css( "margin-left", 0 );
	        }
	      }
	    });
	 
	    //append icon to handle
	    var handleHelper = scrollbar.find( ".ui-slider-handle" )
	    .mousedown(function() {
	      scrollbar.width( handleHelper.width() );
	    })
	    .mouseup(function() {
	      scrollbar.width( "100%" );
	    })
	    .append( "<span class='ui-icon ui-icon-grip-dotted-vertical'></span>" )
	    .wrap( "<div class='ui-handle-helper-parent'></div>" ).parent();
	 
	    //change overflow to hidden now that slider handles the scrolling
	    scrollPane.css( "overflow", "hidden" );
	 
	    //size scrollbar and handle proportionally to scroll distance
	    function sizeScrollbar() {
	      var remainder = scrollContent.width() - scrollPane.width();
	      var proportion = remainder / scrollContent.width();
	      var handleSize = scrollPane.width() - ( proportion * scrollPane.width() );
	      scrollbar.find( ".ui-slider-handle" ).css({
	        width: handleSize,
	        "margin-left": -handleSize / 2
	      });
	      handleHelper.width( "" ).width( scrollbar.width() - handleSize );
	    }
	 
	    //reset slider value based on scroll content position
	    function resetValue() {
	      var remainder = scrollPane.width() - scrollContent.width();
	      var leftVal = scrollContent.css( "margin-left" ) === "auto" ? 0 :
	        parseInt( scrollContent.css( "margin-left" ) );
	      var percentage = Math.round( leftVal / remainder * 100 );
	      scrollbar.slider( "value", percentage );
	    }
	 
	    //if the slider is 100% and window gets larger, reveal content
	    function reflowContent() {
	        var showing = scrollContent.width() + parseInt( scrollContent.css( "margin-left" ), 10 );
	        var gap = scrollPane.width() - showing;
	        if ( gap > 0 ) {
	          scrollContent.css( "margin-left", parseInt( scrollContent.css( "margin-left" ), 10 ) + gap );
	        }
	    }
	 
	    //change handle position on window resize
	    $( window ).resize(function() {
	      resetValue();
	      sizeScrollbar();
	      reflowContent();
	    });
	    //init scrollbar size
	    setTimeout( sizeScrollbar, 10 );//safari wants a timeout
	  });
   
   function Open_event(f){ 
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
</script>
</head>
<c:url value="<%=request.getContextPath() %>" var="path"></c:url>
<body class="homepage" bgcolor=#333323>
   <div id="header-wrapper" style= "background-image: url(images/main.jpg)">

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

   <div id="tabs">
      <ul>
         <li><a href="#tab1">일반회원</a></li>
         <li><a href="#tab2">업주회원 </a></li>

      </ul>
      <div id="tab1">
         <div id="footer" class="container" align="left">
            <%-- <div class="row">
				<c:url value="/login/check_user" var="action"></c:url>
               	<form:form  id="form1" name="form1" modelAttribute="user" method="post" action="${action}" onsubmit="return Check_user(this);">
                  <div class="row 90%">
                     <div>
                        <form:input path="userId" id="userId" name="userId" placeholder="ID 입력 " type="text" /> 
                        <form:input path="userPassword" id="userPassword" name="userPassword" placeholder="PASSWD 입력  " type="password" />
                     </div>
                  </div>                 
                      
                  <ul>
                     <li><a id="idlabel" class="icon fa-home" href="find"><span>아이디/비밀번호찾기</span></a></li>
                     <li><a class="icon fa-bar-chart-o" href="join"><span>회원가입</span></a>
                     <div id="drophere"></div>
                  </ul>
                                   
                  <div class="row 80%">
                     <div class="12u">
                     <input id="opener1" name="opener1" type="submit"/>
                        <!-- <button id="send" type="submit" class="form-button-submit button icon fa-envelope">Login</button> -->
                       <!--  <button type="button" onclick="loadXMLDoc()">Change Content..</button> -->

                     </div>
                  </div>
              	</form:form>         
            </div>
 --%>
          </div>
      </div>
      <div id="tab2">
        <%--  <div id="footer" class="container" align="left">
            <div class="row">

               <c:url value="/login/check_owner" var="action"></c:url>
               	<form:form id="form2" name="form2" modelAttribute="owner" method="post" action="${action}" onsubmit="return Check_owner(this);">
                  <div class="row 90%">
                     <div>
                         <form:input path= "ownerId" id = "ownerId" name="ownerId" placeholder="ID 입력 " type="text"  />
                         <form:input path= "ownerPassword" id="ownerPassword" name="ownerPassword" placeholder="PASSWD 입력  " type="password" /> 
                     </div>
                  </div>
 				<ul>
                     <li><a id="idlabel" class="icon fa-home" href="find"><span>아이디/비밀번호찾기</span></a></li>
                     <li><a class="icon fa-bar-chart-o" href="join"><span>회원가입</span></a>
                     <div id="drophere"></div>
                  </ul>

                  <div class="row 80%">
                     <div class="12u">
                     <input id="opener2" name="opener2" type="submit"/>
                        <!-- <button id="send" type="submit" class="form-button-submit button icon fa-envelope">Login</button> -->
                       <!--  <button type="button" onclick="loadXMLDoc()">Change Content..</button> -->

                     </div>
                  </div>
               </form:form>
               
                  
				<div id="dialog" title="경고">
				  <p>아이디와 비밀번호를 입력하세요.</p>
				</div>
 

            </div>
         </div> --%>
      </div>

</body>
</html>