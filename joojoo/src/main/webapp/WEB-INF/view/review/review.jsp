<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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




<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<script type="text/javascript">

function deleteChk(){
	if($("#deleteChk").val()=="true"){
	
		if (confirm("정말 삭제하시겠습니까??") == true){    //확인
		    document.form.submit();
		}else{   //취소
		    return;
		}

	
	 }
	else{
		alert("삭제 권한이 없습니다.");
	}
	}


</script>



</head>

<c:if test="${ loginUser.userId == rviewComment.userId }">
	<input type="hidden" id="deleteChk" value="true"/> 

</c:if>


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
    <table>
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
      <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td>
      <td>내 용</td>
      <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td>
     </tr>
    </table>
   <table width="413">
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">글번호</td>
      <td width="319">
      <c:out value="${rviewComment.commentCode}"></c:out>
      </td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">작성일</td>
      <td width="319"> <c:out value="${rviewComment.regDate}"></c:out></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">작성자</td>
      <td width="319"> <c:out value="${rviewComment.userId}"></c:out></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">가게 이름</td>
      <td width="319"> <c:out value="${rviewComment.storeName}"></c:out></td>
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">제목</td>
      <td width="319"> <c:out value="${rviewComment.title}"></c:out></td>
      <td width="0">&nbsp;</td>
     </tr>
     
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">평점</td>
      <td width="319"> <c:out value="${rviewComment.starPoint}"></c:out></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
                <tr>
      <td width="0"></td>
                   <td width="399" colspan="2" height="200"><c:out value="${rviewComment.content}"></c:out>

                </tr>




			<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4" width="407"></td></tr>
     <tr align="center">
      <td width="0">&nbsp;</td>
      <td colspan="2" width="800">
     
	<input type=button value="목록" OnClick="window.location='review'">
	<input type=button value="수정" OnClick="window.location='review/modify?commentCode=${rviewComment.commentCode}'" >
	<input type=button value="삭제" onclick="deleteChk()">
      <td width="0"></td>
     </tr>
    </table>
   </td>
  </tr>
			


    </table>
   </td>
  </tr>
 </table>
    
    <!--가자! 본론으로-->
  

</body> 


</html>
