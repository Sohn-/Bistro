<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="joojoo.entity.RviewComment" %>
<%@ page import="joojoo.entity.All" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>게시판</title>


<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!-- 버튼부트스트랩 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- <link rel="stylesheet"  href="css/style-1000px.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-desktop.css"> -->

<link type="text/css" rel="stylesheet" href="<c:url value="/css/style-1000px.css"/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value="/css/style.css"/>"/>
<link type="text/css" rel="stylesheet" href="<c:url value="/css/style-desktop.css"/>"/>


<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<!--   <link rel="stylesheet" href="css/joinform.css" /> -->

<style type="text/css">

#header {
	background-image: url(../images/main.jpg);
}

</style>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<script language = "javascript"> // 자바 스크립트 시작
function writeCheck()
  {
   var form = document.writeform;
   
   if( !form.title.value )
   {
    alert( "제목을 적어주세요" );
    form.title.focus();
    return;
   }
   
    if( !form.starPoint.value )
   {
    alert( "비밀번호를 적어주세요" );
    form.starPoint.focus();
    return;
   } 
  
  if( !form.content.value )
   {
    alert( "내용을 적어주세요" );
    form.content.focus();
    return;
   }
 
  form.submit();
  }
 </script>

<% request.setCharacterEncoding("euc-kr");  %>

</head>

 <body>
 <div id="header-wrapper">                        
	<div id="header" class="container"> 
 <c:url value="<%=request.getContextPath() %>" var="cp"></c:url>
	
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
    </div>
     <img  src="../images/bar.png" style="width: 100%">
     
 	<!-- <div id="features-wrapper"> -->
      <section id="features" class="container"> 
    
    <!--가자! 본론으로-->
    <c:url value="/review/written" var="action"></c:url> 
	<form:form method="post" action="${action}" name="writeform"> 
     <%-- <form name=writeform method=post action="../review/written"> --%>
	
	
    <table>
   
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('../img/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="../img/table_left.gif" width="5" height="30" /></td>
      <td>글쓰기</td>
      <td width="5"><img src="../img/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
   <table>
     <tr>
      <td>&nbsp;</td>
      <td align="center">제목</td>
      <td><input name="title" size="50" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     
     
     
     <tr>
      <td>&nbsp;</td>
      <td align="center">가게 이름</td>
      <td><input name="storeName" size="50" maxlength="100" value="${storeName }" readonly /></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
   <input type="hidden" name="storeCode" size="50" maxlength="100" value="${storeCode }" />
    <tr>
      <td>&nbsp;</td>
      <td align="center">ID</td>
      <td><input name="userId" size="50" maxlength="50" value="${loginUser.userId }" readonly /></td>
      <td>&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
   <!--  <tr>
      <td>&nbsp;</td>
      <td align="center">비밀번호</td>
      <td><input name="password" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
      -->
     <tr>
      <td>&nbsp;</td>
      <td align="center">평점</td>
      <td><input name="starPoint" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     
    <!-- <tr>
      <td>&nbsp;</td>
      <td align="center">사진 업로드</td>
      <td><input type="file" name="uploadFile" size="50" maxlength="100"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr> -->
     
     <!-- <tr>
      <td>&nbsp;</td>
      <td align="center">등록일</td>
      <td><input type="date" name="regDate" size="50" maxlength="50"></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr> -->
     
     <tr>
      <td>&nbsp;</td>
      <td align="center">내용</td>
      <td><textarea name="content" cols="50" rows="13"></textarea></td>
      <td>&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
     <tr align="center">
      <td>&nbsp;</td>
      <td colspan="2">
      <input type=button value="등록" OnClick="javascript:writeCheck();"> 
		<input type=button value="취소" OnClick="javascript:history.back(-1)">
     
      <td>&nbsp;</td>
     </tr>
    
    </table>
   </td>
  </tr>
   
 </table>
 
    
   </form:form>
   </section>
   <!-- </div> -->
   
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
