<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="joojoo.entity.RviewComment" %>
<%@ page import="joojoo.entity.All" %>
<%@ page import="java.util.*"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
            "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
    <title>게시판 목록</title>
    <style type="text/css">
        * {font-size: 9pt;}
        p {width: 600px; text-align: right;}
        table thead tr th {background-color: gray;}
    #header{
     background-image: url(images/main.jpg);
   }

    </style>
 
     <link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"  href="css/style-1000px.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-desktop.css">

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
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

    </head>
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
    </div>
    
   <img  src="images/bar.png" style="width: 100%"></img>
 <div id="features-wrapper">
      <section id="features" class="container"> 
   
       <!-- 검색 폼 영역 -->

       <form  id="reviewlist" name="searchForm" action="" method="get">
       <p>
           <select name="searchType" style="width: 40%">
               <option value="ALL">전체검색</option>
               <option value="SUBJECT">제목</option>
               <option value="WRITER">작성자</option>
               <option value="CONTENTS">내용</option>
           </select>
           <input type="text" name="searchText" value="" style="width: 40%"/>
           <input type="submit" value="검색" align="left" />
       </p>
       </form>

       <!-- //검색 폼 영역 -->
       <!-- 게시판 목록 영역 -->

   
      <% List<All> list = (List<All>)request.getAttribute("rviews"); %>
      <h4> 총 글 갯수 : <%=list.size() %> </h4>
      <div id="accordion-resizer" class="container" align="center" style="background-color: gray">  
      
       <table width="80%" align="center" cellpadding="5" cellspacing="0"   border="1"  align="center" style="border-collapse: collapse; border: 1px gray solid; background-color: #323232;">
          <tr align="center">            
             <td style="border: 1px gray solid;"><h4>글번호</h4></td>
             <td style="border: 1px gray solid;"><h4>작성자</h4></td>
             <td style="border: 1px gray solid;"><h4>글제목</h4></td>
             <td style="border: 1px gray solid;"><h4>작성시간</h4><td>
             <td style="border: 1px gray solid;"><h4>가게이름</h4></td>
             <td style="border: 1px gray solid;"><h4>평균별점</h4></td>
          </tr>
       </table> <!-- 카테고리 구분 테이블 끝 -->        
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
                         
              <!-- 아코디언 상세내용 바디 -->            
               
              
<%--             <!-- 상점 select 결과 가져오는 부분 끝 -->                        
      </div><!-- 바디 상점 결과 아코디언 끝 -->     
      
      
      
      
      
      
      
      <div id="listtable">
       <table border="1" summary="게시판 목록" style="border-color: white">
      <h4> 총 글 갯수 : <%=list.size() %> </h4>
      
       
   
          <tr><th>글번호</th>  <th>작성자 ID</th><th>글 제목</th><th>글 작성 시간</th><th>가게 이름</th><th>별점</th></tr>
         <c:forEach items="${rviews }" var="rview">
   
      <tr>
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
      
         </c:forEach>
           <tfoot>
               <tr>
                    <td align="center" colspan="6">1</td>
               </tr>
           </tfoot> --%>
    <!--    </table> -->
       </div>
       </div>
       <br>
<%--        <p>

         
           <c:url value="/review/write" var="url"></c:url>
         <a href="${url }"> <input type="button" value="글쓰기" align="left" /></a>
       </p> --%>
       </section>
       </div>
       </div>
       
       
       
       
       
    </body>

    </html>

