<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>


<title>mainPage</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />




<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="stylesheet" href="/css/style-1000px.css">
<link rel="stylesheet" href="/css/style-desktop.css">


<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>


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

<link rel="stylesheet"   href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>


<style type="text/css">

form { 
width: 10cm; 
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
   
    $('#myModal').on('shown.bs.modal', function () {
    	alert("땡땡");
	   document.document.querySelector("#here")
		.innerHTML="${store.storeName}";
	 }) 
</script>
</head>

<body class="homepage" bgcolor=#333323>
	<c:url value="<%=request.getContextPath() %>" var="cp"></c:url>
   <div id="header-wrapper">
      <div id="header" class="container">
         <!-- Logo -->
         <h1 id="logo"><a href="<%=request.getContextPath()%>">JooJooclub</a></h1>
         <p>Welcom To JooJooClub</p>
         <div align="right">
            <nav id="nav">
            <ul>
            
           
               <li><a class="icon fa-home" href="<%=request.getContextPath() %>/"><span>Home</span></a></li>
               <li><a class="icon fa-bar-chart-o" href="<%=request.getContextPath() %>/login"><span>Login</span></a>
               <li><a class="icon fa-cog" href="<%=request.getContextPath() %>/join"><span>Join</span></a></li>
               <li><a class="icon fa-retweet" href="<%=request.getContextPath() %>/info/member"><span>MyPage</span></a></li>
              <%--  <li><a class="icon fa-sitemap" href="<%=request.getContextPath() %>/info/cart"><span>Cart</span></a></li> --%>
				<li><a class="icon fa-sitemap" href="<%=request.getContextPath() %>/review"><span>ReviewBoard</span></a></li>
            </ul>
            </nav>
         </div>
         
         
         
         
              <div>      
         	<c:url value="/main/keyword" var="action"></c:url>
            
            
            <form:form modelAttribute="category" method="post" action="${action}" >
              
                    <form:input path="keyword" name="keyword" placeholder="keyWord" type="text" maxlength="20" />       
                   
                     <button type="submit" class="form-button-submit button icon fa-envelope">Search</button>
       		
       		
       		 </form:form> 
       
         </div>
              
         
         
         
<%--          <div>      
         	<c:url value="/main/keyword" var="action"></c:url>
            <form:form modelAttribute="category" method="post" action="${action}">
              <div class="row 90%">                    
                  <form:input path="keyword" name="keyword" placeholder="keyWord" type="text"/>     
              </div>    
                  
              <div class="row 80%">
                  <div class="12u">                        
                     <button type="submit" class="form-button-submit button icon fa-envelope">Search</button>
                  </div>
              </div>
            </form:form>
         </div> --%>
         
     
         
            
             
         </div>
         
         
         
  
         
         
       </div>
 
   
   		<!-- 	헤더구분띠 -->
      <img  src="images/bar.png" style="width: 100%">

   <!-- Features -->
   <div id="features-wrapper">
      <section id="features" class="container"> 
      <nav id="nav">
      <ul>
         <li ><a href=""><button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><span>Region</span></button></a>
            <ul>
               <li><a href="#">강남</a></li>
               <li><a href="#">홍대</a></li>
               <li><a href="#">이태원</a></li>
               <li><a href="#">건대</a></li>
               <li><a href="#">신촌</a></li>
            </ul>
         </li>

         <li><a href=""><button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><span>Type</span></button></a>
            <ul>
               <li><a href="#">호프</a></li>
               <li><a href="#">고기집</a></li>
               <li><a href="#">룸주점</a></li>
               <li><a href="#">포장마차</a>
               <li><a href="#">일식</a></li>
            </ul>
         </li>

         <li><a href=""><button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><span>Number</span></button></a>
            <ul>
               <li><a href="#">4인이하</a></li>
               <li><a href="#">5~10인 </a></li>
               <li><a href="#">10~20인</a></li>
               <li><a href="#">20인이상</a>
            </ul>
         </li>
         
         <li><a href=""><button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><span>Service</span></button></a>
            <ul>
               <li><a href="#">서비스추가</a></li>
               <li><a href="#">할인</a></li>
            </ul>
         </li>

         <!-- <li><input type="submit" value="Search"/></li> -->
         <li>
            <button type="button" class="btn btn-warning btn-sm">Search</button>
         </li>
      </ul>
      </nav>
      </section> 
      <br>
      
      <div class="row" >    
      <div class="scroll-pane ui-widget ui-widget-header ui-corner-all" style="background-color: gray">
  			<div class="scroll-content" style="background-color: gray" >
   
      <div>       
 <%--    <c:forEach items="${stores}" var="store">
    	<c:forEach begin="0" end="${imageCount }" step="1"  varStatus="status">
            <div class="scroll-content-item ui-widget-header"><img src="images/${store.licenseNumber }_${status.current }.jpg" alt="" width="300px"/><br> <c:out value="${store.storeName}" /></div>         
         </c:forEach>    
    </c:forEach>   --%>  
      
    	
    <c:forEach items="${stores}" var="store">
    <div class="scroll-content-item ui-widget-header" id="scroll" name="scroll">
    <button data-toggle="modal" data-target="#myModal">
        <img src="images/pic01.jpg" alt="" width="300px"/><br> <c:out value="${store.storeName}" />
          </button>
          </div>
          
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">	
	 <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title"><c:out value="${store.storeName}" /></h4>
      </div>
      <div class="modal-body" id="here">
        <c:out value="${store.storeAdress }"/>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
       <a href="<%=request.getContextPath()%>/event_detail "><button id="perchase" type="button" class="btn btn-warning btn-sm">구매하기</button></a>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
 
    </c:forEach>
    
   
    
 
    
  </div>
  <div class="scroll-bar-wrap ui-widget-content ui-corner-bottom">
    <div class="scroll-bar"></div>
  </div>
</div>
 
   </div>      
       
      
      <br>
      
      <h3 class="docs" align="center">검색결과</h3>

      <div id="accordion-resizer" class="ui-widget-content" class="container" align="center" style="background-color: gray">
		
         <table width="80%" align="center" cellpadding="5" cellspacing="0"   border="1" bgcolor="gray" align="center" style="border-collapse: collapse; border: 1px gray solid; background-color: orange;">
            <tr align="center">
            	<td style="border: 1px gray solid;"></td>
               <td style="border: 1px gray solid;">상호명</td>
               <td style="border: 1px gray solid;">지역</td>
               <td style="border: 1px gray solid;">업종</td>
               <td style="border: 1px gray solid;">인원<td>
               <td style="border: 1px gray solid;">이벤트</td>
            </tr>
         </table>
         
         

        <div id="accordion" class="container" align="center" style="background-color: gray" >         
         
          <c:forEach items="${stores}" var="store">
            <div style="background-color: gray">
               <table width="90%" align="center" cellpadding="5" cellspacing="0"   border="1" align="center"   style="border-collapse: collapse; border: 1px gray solid; background-color: pink;">
                  <tr align="center">
                     <td style="border: 1px gray solid;"><c:out value="${store.storeName}" /></td>
                     <td style="border: 1px gray solid;"><c:out value="${store.regionName}" /></td>
                     <td style="border: 1px gray solid;"><c:out value="${store.typeName}" /></td>   
                     
                  </tr>
               </table>
            </div>            
            <div  style="background-color: gray">
            <p><c:out value="${store.storeAdress}"/> </p>
            </div>    
            </c:forEach>    
                     
        </div>          
      </div>
      </div>
</body>
</html>
