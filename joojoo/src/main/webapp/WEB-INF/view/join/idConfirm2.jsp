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
<title>회원 가입</title>


<script src="http://code.jquery.com/jquery-latest.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
	window.$("#use").click(function(){
			opener.$("#joinId2").val("${joinId2}");
			opener.$("#checked").val("checked");
			self.close();
		});
	});
</script>
</head>
<body>
	<h2>아이디 중복 확인</h2>
	<c:if test="${!empty (result) }">
		${joinId2}는 이미 사용중인 아이디입니다.<br>
	</c:if>
	<c:if test="${empty(result) }">
		${joinId2 }는 사용가능한 아이디입니다.<br>
		<input type="button" value="사용" id="use"><br>
	</c:if>
	<c:url value="/join/idCheck2" var="idchk"></c:url>
	다른 ID로 시도하려면 새로 중복 체크를 하세요.
	<form action="${idchk}">
		<label for="joinId2">아이디</label>
		<input type="text" id="joinId2" name="joinId2" style="width: 40%">
		<input type="submit" value="전송"/>
	</form>
</body>
</html>