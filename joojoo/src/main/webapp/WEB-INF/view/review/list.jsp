<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="joojoo.entity.RviewComment" %>
<%@ page import="joojoo.entity.All" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
            
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>게시판 목록</title>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />


<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-1000px.css" />
<link rel="stylesheet" href="css/style-desktop.css" />
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" />
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
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
<script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<script>


$(document).ready(function() {
	$('div#accordion').accordion({
		event : "click hoverintent",collapsible : true,});
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

* {font-size: 9pt;}
p {width: 600px; text-align: right;}


/* table thead tr th {background-color: gray;}
 */
#header{
background-image: url(images/main.jpg);
}
form { /* 
width: 10cm;  */
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
     
     td{
     color: black;
     }
</style>

</head>
<body>
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
            <li><a class="icon fa-bar-chart-o" href="<%=request.getContextPath() %>/login"><span>Login</span></a></li>
             <li><a class="icon fa-cog" href="<%=request.getContextPath() %>/join"><span>Join</span></a></li>            
             <li><a class="icon fa-retweet" href="<%=request.getContextPath() %>/info"><span>MyPage</span></a></li>
            <li><a class="icon fa-sitemap" href="<%=request.getContextPath() %>/review"><span>ReviewBoard</span></a></li>
            
            </c:if>         
            <c:if test="${!empty loginUser }">
            <li><span>${loginUser.userId}님 [찬스:${loginUser.chance }]</span></li>
            <li><a class="icon fa-home" href="<%=request.getContextPath() %>/"><span>Home</span></a></li>            
             <li><a class="icon fa-retweet" href="<%=request.getContextPath() %>/info"><span>MyPage</span></a></li>
            <li><a class="icon fa-sitemap" href="<%=request.getContextPath() %>/review"><span>ReviewBoard</span></a></li>            
            <li><a class="icon fa-bar-chart-o" href="<%=request.getContextPath() %>/logout"><span>Logout</span></a></li>         
            </c:if>
          </ul>
       </nav>
    </div><!-- 헤더 메뉴 끝 --> 
    </div>
    
   <img  src="images/bar.png" style="width: 100%"></img>
 	<div class="container" style="background-color: #323232;">
		<section id="features"> 
     
   
       <!-- 검색 폼 영역 -->
<%-- 
<<<<<<< HEAD
      	<form  id="reviewlist" name="searchForm" action="" method="get" style="font-family:'Jeju Gothic', serif; ">
       <!--  <table bgcolor="red" ><tr>      
      	<td align="right"> -->
      	<nav style="outline-width: 10cm; width: 20%">
           <select name="searchType" style="font-family:'Jeju Gothic', serif; color: black;">
======= --%>
       <form  id="reviewlist" name="searchForm" action="" method="get" style="font-family:'Jeju Gothic', serif; ">
       
       <div style="width: 10cm">
       <!-- <table>
       	<tr>
	       	<td style="width: 10cm">   <select name="searchType" style="width: 80%;font-family:'Jeju Gothic', serif; color: black;">
	               <option value="ALL">전체검색</option>
	               <option value="SUBJECT">제목</option>
	               <option value="WRITER">작성자</option>
	               <option value="CONTENTS">내용</option>
	               </select>
       		
       		</td>
       		<td style="width: 10cm">
       		 	<input type="text" name="searchText" value="" style="width: 80%"/>
       		</td style="width: 10cm">
       		<td>
       			<input type="submit" value="검색" align="middle" style="width: 80%" />
       		</td>
       	</tr>
       
       </table> -->
       </div>
       <!-- <p>
  
       </tr> </table>  
       -->
<!-- ======= -->
   
<!-- >>>>>>> branch 'master' of https://github.com/Sohn-/Bistro -->
       </form>

	

       <!-- //검색 폼 영역 -->
      
       <!-- 게시판 목록 영역 -->

   
      <% List<All> list = (List<All>)request.getAttribute("rviews"); %>
      <h4> 총 글 갯수 : <%=list.size() %> </h4>
      
      <div id="accordion-resizer" align="center"
				style="background-color: #323232; "   >

				<!-- 카테고리 구분 테이블 -->
				<table width="75%" align="center" cellpadding="0" cellspacing="0"
					border="1" align="center"
					style="border-collapse: collapse; border: 1px gray solid; background-color: #323232; font-family:'Jeju Gothic', serif;">
					<tr align="center">
						 <td align="center" style="border: 1px gray solid;background-color: #F2CB61; color: black;"><h4>글번호</h4></td>
             <td style="border: 1px gray solid; background-color: #F2CB61; color: black;"><h4>작성자</h4></td>
             <td style="border: 1px gray solid; background-color: #F2CB61; color: black;"><h4>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    글제목     &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</h4></td>
             <!-- <td style="border: 1px gray solid;"><h4>작성시간</h4></td> -->
             <td style="border: 1px gray solid; background-color: #F2CB61; color: black;"><h4>가게이름</h4></td>
             <td style="border: 1px gray solid; background-color: #F2CB61; color: black;"><h4>평균별점</h4></td>

					</tr>
					<c:forEach items="${rviews }" var="rview">
					<tr>
					
					 <td align="center" style="border: 1px black solid; background-color: white"><c:out value="${rview.commentCode }"/></td>
					 <td align="center" style="border: 1px black solid; background-color: white"><c:out	value="${rview.userId}" /></td>
					 <td align="center" style="border: 1px black solid; background-color: white"><c:url value="/review?commentCode=${rview.commentCode}" var="url"></c:url>
                        <a href="${url }" style=" color: black;">${rview.title }</a></td>
					 <td align="center" style="border: 1px black solid; background-color: white"><c:out value="${rview.storeName}" /></td>
            		 <td align="center" style="border: 1px black solid; background-color: white"><c:out	value="${rview.starPoint}" /></td>
					
					</tr>
					 </c:forEach>
					
				</table>
				
				</div>
				
				   <input type="button" value="후기쓰기" class="writeBt" onclick="moveAction(1)"/>	
				<!-- 카테고리 구분 테이블 끝 -->

				<!-- 바디 상점 결과 아코디언 시작 -->
				<%-- <div id="accordion" style="font-family:'Jeju Gothic', serif; ">
					<!-- 상점 select 결과 가져오는 부분 시작 -->
					<c:forEach items="${rviews }" var="rview">

						<!-- 아코디언 카테고리 헤더 -->
						<div align="center" style="height: 1cm;">
							<table width="80%" height="1cm" align="center">
								<tr align="center" height="1cm">
									<td style="padding-right: 2cm; width: 15cm"><c:out value="${rview.commentCode }"/></td>
									
									
									<td style="padding-right: 2cm; width: 15cm"><c:out	value="${rview.userId}" /></td>
									<td style="padding-right: 2cm; width: 15cm"><c:out	value="${rview.title }" /></td>
									<td style="padding-right: 2cm; width: 15cm"><c:out	value="${rview.regDate}" /></td>
									<td style="padding-right: 2cm; width: 15cm; font-size: 12px" ><c:out value="${rview.storeName}" /></td>
									<td style="padding-right: 2cm; width: 15cm"><c:out	value="${rview.starPoint}" /></td>
								</tr>
							</table>
						</div>

						<!-- 아코디언 상세내용 바디 -->
						<div>
							<p align="left">상점 이름:	<c:out value="${rview.storeName}"/></p>
							<p align="left">평 점 :	<c:out value="${rview.starPoint}"/></p>
							
							
							<c:url value="/review?commentCode=${rview.commentCode}" var="url"></c:url>
									<td style="padding-right: 2cm; width: 15cm"> <a href="${url }"> <input type="submit" value="후기보기" align="left" /></a></td>
						
						</div>
						
					</c:forEach>
					<!-- 상점 select 결과 가져오는 부분 끝 -->
				</div>
				<!-- 바디 상점 결과 아코디언 끝 -->
			</div> --%>
      
      
      
      
<%--       <div id="accordion-resizer" class="container" align="center" style="background-color: gray">  
      
       <table width="80%" align="center" cellpadding="5" cellspacing="0"   border="1"  align="center" style="border-collapse: collapse; border: 1px gray solid; background-color: #323232;">
          <tr align="center">            
             <td style="border: 1px gray solid;"><h4>글번호</h4></td>
             <td style="border: 1px gray solid;"><h4>작성자</h4></td>
             <td style="border: 1px gray solid;"><h4>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    글제목     &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;</h4></td>
             <td style="border: 1px gray solid;"><h4>작성시간</h4><td>
             <td style="border: 1px gray solid;"><h4>가게이름</h4></td>
             <td style="border: 1px gray solid;"><h4>평균별점</h4></td>
          </tr>
       </table> <!-- 카테고리 구분 테이블 끝 -->        
<<<<<<< HEAD
       <div id="accordion" class="container">         
           <!-- 상점 select 결과 가져오는 부분 시작 -->
           
           
           <c:forEach items="${rviews }" var="rview">
           
              <!-- 아코디언 카테고리 헤더 -->
              <div >
                 <table width="90%" >
                    <tr align="center">
                    
                       <td><c:out value="${rview.commentCode}"></c:out></td>
                     <td><c:out value="${rview.userId}"></c:out></td>
                     <td>
                        <c:url value="/review?commentCode=${rview.commentCode}" var="url"></c:url>
                        <a href="${url }">${rview.title }</a>
                     </td>
                     <td><c:out value="${rview.regDate}"></c:out></td>
                     <td><c:out value="${rview.storeName}"></c:out></td>
                     <td><c:out value="${rview.starPoint}"></c:out></td>
                    </tr>
                 </table>
              </div>
              </c:forEach>
  
       </div>
       </div>
     
       </section>
       </div>
       </div>
=======


       
       
       <div id="accordion">
					<!-- 상점 select 결과 가져오는 부분 시작 -->
					<c:forEach items="${rviews }" var="rview">

						<!-- 아코디언 카테고리 헤더 -->
						<div align="center" style="height: 1cm;">
							<table width="80%" height="1cm" align="center">
								<tr align="center" height="1cm">
									<td style="padding-right: 2cm; width: 15cm"><c:url value="/review?commentCode=${rview.commentCode}" var="url"></c:url>
                        														<a href="${url }">${rview.title }</a></td>
									<td style="padding-right: 2cm; width: 15cm"><c:out	value="${rview.userId}" /></td>
									<td style="padding-right: 2cm; width: 15cm"><c:out	value="${rview.title }" /></td>
									<td style="padding-right: 2cm; width: 15cm"><c:out	value="${rview.regDate}" /></td>
									<td style="padding-right: 2cm; width: 15cm"><c:out	value="${rview.storeName}" /></td>
									<td style="padding-right: 2cm; width: 15cm"><c:out	value="${rview.starPoint}" /></td>
								</tr>
							</table>
						</div>

						<!-- 아코디언 상세내용 바디 -->
						<div>
							<p align="left">상점 이름:	<c:out value="${store.storeName}" />
							</p>
							<p align="left">상점 주소:	<c:out value="${store.storeAdress}" />
							</p>
							<p align="left">상점 위치:	<c:out value="${store.regionName}" />
							</p>
							<p align="left">상점 업종:	<c:out value="${store.typeName}" />
							</p>
							<p align="left">상점 전화번호:	<c:out value="${store.storePhone}" />
							</p>
						</div>
						
					</c:forEach>
					<!-- 상점 select 결과 가져오는 부분 끝 -->
				</div>
				</div> --%>
				</section>
				</div>
				</div>
		



				

       	<!-- Footer -->
	<div>
		<div id="footer" class="container">
			<div align="center">
				<br> <br> <a
					href="<%=request.getContextPath()%>/footer/servicePolicy">이용약관</a>
				&nbsp; &nbsp; <a
					href="<%=request.getContextPath()%>/footer/privacyPolicy">개인정보보호방침</a>
				&nbsp; &nbsp; <a
					href="<%=request.getContextPath()%>/footer/youthPolicy">청소년보호정책</a>
				&nbsp; &nbsp; <a
					href="<%=request.getContextPath()%>/footer/helpCenter">고객센터</a> <br>
				<br>
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

