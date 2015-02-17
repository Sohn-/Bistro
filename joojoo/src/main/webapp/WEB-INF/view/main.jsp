<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<title>mainPage</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-1000px.css">
<link rel="stylesheet" href="css/style-desktop.css">
<link rel="stylesheet"   href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"   href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
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
	    $("#accordion").accordion();
	});
   
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
  
   function Open_modal(commentCode, title, content, storeName){
  		 document.querySelector("#modal_title"+commentCode).innerHTML=storeName+"("+title+")";
	   document.querySelector("#here"+commentCode).innerHTML=content;
   }
</script>
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
}
#header{
	background-image: url(images/main.jpg);
}
  	.scroll-pane { overflow: auto; width: 100%; float:left;}
  	.scroll-content { width: 6600px; float: left; }
  	.scroll-content-item { width: 300px; height: 300px; float: left; margin: 10px; font-size: 2em; line-height: 96px; text-align: center; }
 	.scroll-bar-wrap { clear: left; padding: 0 4px 0 2px; margin: 0 -1px -1px -1px; }
  	.scroll-bar-wrap .ui-slider { background: none; border:0; height: 2em; margin: 0 auto;  }
  	.scroll-bar-wrap .ui-handle-helper-parent { position: relative; width: 100%; height: 100%; margin: 0 auto; }
  	.scroll-bar-wrap .ui-slider-handle { top:.2em; height: 1.5em; }
  	.scroll-bar-wrap .ui-slider-handle .ui-icon { margin: -8px auto 0; position: relative; top: 50%; }  
</style>

</head>

<body class="homepage" bgcolor=#333323>
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
    
    <!-- 키워드 검색 부분 -->
    <div>      
	    <c:url value="/main/keyword" var="action"></c:url>
	    <form:form modelAttribute="category" method="get" action="${action}" >
	    <form:input path="keyword" name="keyword" placeholder="keyWord" type="text" maxlength="20" />       
	    <button type="submit" class="form-button-submit button icon fa-envelope">Search</button>
	    </form:form> 
    </div><!-- 키워드 검색 부분 끝 -->             
	</div><!-- 헤더 끝 -->       
	</div><!-- 헤더 래퍼 끝 -->
 
   
   	<!-- 헤더 바디 구분 띠 -->
    <img  src="images/bar.png" style="width: 100%">

   	
   	<!-- 바디 시작 -->   
	<div id="features-wrapper">
		<!-- 바디 카테고리 시작 -->     
		
 		<section id="features" class="container">  
 		<c:url var="action" value="/category"></c:url>
         		<form:form action="${action}" modelAttribute="category">     
		<nav id="nav">      	
      	<ul>
      	 <!-- 지역 카테고리 -->
         <li ><a href=""><button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><span>Region</span></button></a>
            <ul>            
            <li><form:input path="regionName" value="강남"/>강남</li>
            <li><form:input path="regionName" value="건대"/>건대</li>            
            <li><form:input path="regionName" value="신림"/>신림</li>
            <li><form:input path="regionName" value="신촌"/>신촌</li>          
            <li><form:input path="regionName" value="이태원"/>이태원</li>            
            <li><form:input path="regionName" value="종로"/>종로</li>  
            </ul>
         </li>        


		<!-- 업종 카테고리 -->
         <li><a href=""><button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><span>Type</span></button></a>
            <ul>
            <li><form:button path="typeName" value="바"/>바</li>
            <li><form:button path="typeName" value="룸"/>룸</li>
            <li><form:button path="typeName" value="고기집"/>고기집</li>            
            <li><form:button path="typeName" value="횟집"/>횟집</li>
            <li><form:button path="typeName" value="포차"/>포차</li>
            <li><form:input path="typeName" value="호프"/>호프</li>  
            <%--  <li><form:input path="typeName" value="4명이하"/>양식</li>
            <li><form:input path="typeName" value="4명이하"/>일식</li>
            <li><form:input path="typeName" value="4명이하"/>중식</li>
            <li><form:input path="typeName" value="4명이하"/>치킨</li>
            <li><form:input path="typeName" value="4명이하"/>퓨전술집</li>
            <li><form:input path="typeName" value="4명이하"/>한식</li>
            --%>
            </ul>
         </li>



		<!-- 인원 카테고리 -->
         <li><a href=""><button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><span>Number</span></button></a>
            <ul>
               <li><form:button path="personsLevel" value="4명이하"/>4명이하</li>
               <li><form:button path="personsLevel" value="5~10명"/>5~10명</li>
               <li><form:button path="personsLevel" value="10명이상"/>10명이상</li>
            </ul>
         </li>
         
         <!-- 서비스 카테고리 -->
         <li><a href=""><button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><span>Service</span></button></a>
            <ul>
               <li><form:button path="serviceTypeName" value="금액 할인"/>금액 할인</li>
               <li><form:button path="serviceTypeName" value="서비스 메뉴 제공"/>서비스 메뉴 제공</li>
            </ul>
         </li>

		<!-- 카테고리 검색 버튼 -->
         <!-- <li><input type="submit" value="Search"/></li> -->
         <li>
         		
         		<input type ="submit" class="btn btn-warning btn-sm"  value="Search"/>           
       			
        </li>
        	
                 
      </ul>      
     
      </nav>
     </form:form> 
      <!-- 바디 카테고리 끝 -->     
         
      <br>   
      
	<div class="row" > 
	<!-- 바디 이벤트 스크롤 시작 -->   
	<div class="scroll-pane ui-widget ui-widget-header ui-corner-all" style="background-color: gray">
		<!-- 이벤트 창 -->
		<div class="scroll-content" style="background-color: gray" ><!-- 이벤트 스크롤 부분 배경색 지정 가능 -->		   
		    <!-- 이벤트 사진 및 상점이름 시작-->
		    <c:forEach items="${events}" var="event" varStatus="status">
			    <div class="scroll-content-item ui-widget-header" id="scroll" name="scroll">
			    <c:set var="commentCode" value="${status.current.commentCode }"/>
			    <!-- 이벤트 상세 페이지로 가기 위한 버튼 -->
			    <button id="event${status.current.commentCode }" data-toggle="modal" data-target="#myModal${status.current.commentCode }" onclick="Open_modal('${status.current.commentCode }','${status.current.title }', '${status.current.content }', '${status.current.storeName }');">
				    <!-- 이벤트 이미지와 이벤트 상점이름 -->
				    <img src="images/pic01.jpg" alt="" width="300px"/><br> 
				    <c:out value="${event.storeName}" />
			    	<!-- ${status.current.licenseNumber }로 이미지 변경해야 할 것 -->
			    </button>
			    </div> 
		    </c:forEach>
		    <!-- 이벤트 사진 및 상점이름 끝-->  		    
		    
		    <!-- 이벤트 클릭 시 모달 시작 -->  
		    <c:forEach items="${events}" var="event" varStatus="status">
		    <c:url value="/eventProcess?eventCommentCode=${status.current.commentCode }" var="action"></c:url> 
			    <div class="modal fade" id="myModal${status.current.commentCode }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">	
					<div class="modal-dialog">
					    <div class="modal-content">
						    <!-- 모달 헤더 -->
						    <div class="modal-header">
							    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							    <h4 class="modal-title" id="modal_title${status.current.commentCode }"></h4>
						    </div>
						    <!-- 모달 바디 -->
						    <div class="modal-body" id="here${status.current.commentCode }">
						    	<%-- <c:out value="${event.storeAdress }"/> --%>
							</div>
							<!-- 모달 푸터 -->
						    <div class="modal-footer">
						    	<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
						    <a href="${action }"><button class="btn btn-warning btn-sm" >이벤트상세보기</button></a>
						    </div>
					    </div><!-- /.modal-content -->
				  	</div><!-- /.modal-dialog -->
				</div><!-- /.modal -->
		    </c:forEach>  <!-- 이벤트 클릭 시 모달 끝 -->   
		        
		  	</div>
		  	<div class="scroll-bar-wrap ui-widget-content ui-corner-bottom">
		    <div class="scroll-bar"></div>		  	
		</div><!-- 이벤트 창 끝 --> 
   	</div><!-- 바디 이벤트 스크롤 끝 -->    
   	
   	<!-- 바디 상점 검색 부분 시작 -->   	
   	<div align="center">
   		<br><h2 class="docs">검색결과</h2>
	</div>
	
	<!-- 바디 상점 검색 시작 -->
	<div id="accordion-resizer" class="container" align="center" style="background-color: gray">    
    
    	<!-- 카테고리 구분 테이블 -->
	    <table width="80%" align="center" cellpadding="5" cellspacing="0"   border="1"  align="center" style="border-collapse: collapse; border: 1px gray solid; background-color: #323232;">
		    <tr align="center">			   
			    <td style="border: 1px gray solid;"><h4>상호명</h4></td>
			    <td style="border: 1px gray solid;"><h4>지역</h4></td>
			    <td style="border: 1px gray solid;"><h4>업종</h4></td>
			    <td style="border: 1px gray solid;"><h4>인원</h4><td>
			    <td style="border: 1px gray solid;"><h4>이벤트</h4></td>
		    </tr>
	    </table> <!-- 카테고리 구분 테이블 끝 --> 

		<!-- 바디 상점 결과 아코디언 시작 -->
        <div id="accordion" class="container">         
	        <!-- 상점 select 결과 가져오는 부분 시작 -->
	        <c:forEach items="${stores}" var="store">
	        
		        <!-- 아코디언 카테고리 헤더 -->
		        <div >
			        <table width="90%" >
				        <tr align="center">
					        <td ><c:out value="${store.storeName}" /></td>
					        <td ><c:out value="${store.regionName}" /></td>
					        <td ><c:out value="${store.typeName}" /></td>   
				        </tr>
			        </table>
		        </div>
		        	        
		        <!-- 아코디언 상세내용 바디 -->            
		        <div >		        	
		        	<p align="left">상점 이름: <c:out value="${store.storeName}"/> </p>
		        	<p align="left">상점 주소:<c:out value="${store.storeAdress}"/> </p>
		        	<p align="left">상점 위치:<c:out value="${store.regionName}"/> </p>
		        	<p align="left">상점 업종:<c:out value="${store.typeName}"/> </p>
		        	<p align="left">상점 전화번호:<c:out value="${store.storePhone}"/> </p>
		        </div>    
		        
	        </c:forEach>  <!-- 상점 select 결과 가져오는 부분 끝 -->                        
		</div><!-- 바디 상점 결과 아코디언 끝 -->     
      	</div>
      	</div>   
      	</section>   	
     	</div><!-- 바디 끝 -->
</body>
</html>
