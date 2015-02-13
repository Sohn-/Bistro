<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>
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


<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" href="css/style.css">


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
	<c:url value="<%=request.getContextPath() %>" var="cp"></c:url>
   <div id="header-wrapper">
      <div id="header" class="container">
         <!-- Logo -->
         <h1 id="logo"><a href="main">JooJooclub</a></h1>
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
         
         
         
         
         
          <!--  고친부분 -->
         <div>      
         <c:url value="/main/keyword" var="action"></c:url>
               	 <form:form modelAttribute="category" method="post" action="${action}">
                  <div class="row 90%">                    
                        <form:input path="keyword" name="keyword" placeholder="keyWord" type="text" />     
                  </div>    
                  
                  <div class="row 80%">
                     <div class="12u">                        
                        <button type="submit" class="form-button-submit button icon fa-envelope">Search</button>
                     </div>
                  </div>
              	</form:form>
         </div>
         


         
      </div>
   </div>

   <!-- Features -->
   <div id="features-wrapper">
      <section id="features" class="container"> 
      <nav id="nav">
      <ul>
         <li><a href=""><span>Region</span></a>
            <ul>
               <li><a href="#">강남</a></li>
               <li><a href="#">홍대</a></li>
               <li><a href="#">이태원</a></li>
               <li><a href="#">건대</a></li>
               <li><a href="#">신촌</a></li>
            </ul>
         </li>

         <li><a href=""><span>Type</span></a>
            <ul>
               <li><a href="#">호프</a></li>
               <li><a href="#">고기집</a></li>
               <li><a href="#">룸주점</a></li>
               <li><a href="#">포장마차</a>
               <li><a href="#">일식</a></li>
            </ul>
         </li>

         <li><a href=""><span>Number</span></a>
            <ul>
               <li><a href="#">4인이하</a></li>
               <li><a href="#">5~10인 </a></li>
               <li><a href="#">10~20인</a></li>
               <li><a href="#">20인이상</a>
            </ul>
         </li>

         <li><a href=""><span>Service</span></a>
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
         <div class="4u">
            <!-- Feature -->
            <section> 
               <a href="#" class="image featured"> 
                  <img src="images/pic01.jpg" alt="" />
               </a> 
               
                  <h3>JooJooClub1</h3>
               
               <p>JooJooClub1 is best club</p>
            </section>
         </div>
         
         <div class="4u">
            <!-- Feature -->
            <section> 
               <a href="#" class="image featured"> 
                  <img src="images/pic02.jpg" alt="" />
               </a>                
                  <h3>JooJooClub1</h3>
               <p>JooJooClub1 is best club</p>
            </section>
         </div>
         
         <div class="4u">
            <!-- Feature -->
            <section> 
               <a href="#" class="image featured"> 
                  <img src="images/pic03.jpg" alt="" />
               </a>                
                  <h3>JooJooClub1</h3>
               <p>JooJooClub1 is best club</p>
            </section>
         </div>         
      </div>
      
      <br>
      
      <h3 class="docs" align="center">검색결과</h3>

      <div id="accordion-resizer" class="ui-widget-content">
		
         <table width="80%" align="center" cellpadding="5" cellspacing="0"   border="1" bgcolor="gray" align="center" style="border-collapse: collapse; border: 1px gray solid;">
            <tr align="center">
            	<td style="border: 1px gray solid;"></td>
               <td style="border: 1px gray solid;">상호명</td>
               <td style="border: 1px gray solid;">지역</td>
               <td style="border: 1px gray solid;">업종</td>
               <td style="border: 1px gray solid;">인원<td>
               <td style="border: 1px gray solid;">이벤트</td>
            </tr>
         </table>
         
         

<%-- 
      <c:forEach items="${depts}" var="dept">
			<tr>
				<td><c:out value="${dept.departmentId}" /></td>
				<td><c:out value="${dept.departmentName}" /></td>
				<td><c:out value="${dept.managerId}" /></td>
				<td><c:out value="${dept.locationId} " /></td>				
				<td>
					<c:url value="/dept?departmentId=${dept.departmentId}" var="url" /> 
					<a href="${url}"><button>상세</button></a> 
					<c:url value="/dept/edit?departmentId=${dept.departmentId}" var="url" /> 
					<a href="${url}"><button>편집</button></a>
				</td>			
			</tr>
		</c:forEach>
          --%>
<!-- 
	private int storeCode;
	private String storeName;
	private String storeAdress;
	private String storePhone;
	private String ownerId;
	private int regionCode;
	private int typeCode;
	private int starPoint; -->
	
         <div id="accordion">         
         
          <c:forEach items="${stores}" var="store">
            <div>
               <table width="90%" align="center" cellpadding="5" cellspacing="0"   border="1" align="center"   style="border-collapse: collapse; border: 1px gray solid;">
                  <tr align="center">
                     <td style="border: 1px gray solid;"><c:out value="${store.storeName}" /></td>
                     <td style="border: 1px gray solid;"><c:out value="${store.regionName}" /></td>
                     <td style="border: 1px gray solid;"><c:out value="${store.typeName}" /></td>   
                     
                  </tr>
               </table>
            </div>            
            <div>
            <p><c:out value="${store.storeAdress}"/> </p>
            </div>    
            </c:forEach>    
                     
         </div>      
         
         
         
         
         
         
      </div>
      </div>
</body>
</html>
