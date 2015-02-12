<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	window.$("#use").click(function(){
			opener.$("#joinId").val("${joinId}");
			opener.$("#checked").val("checked");
			self.close();
		});
	});
</script>
</head>
<body>
	<h2>아이디 중복 확인</h2>
	<c:if test="${!empty (result) }">
		${joinId}는 이미 사용중인 아이디입니다.<br>
	</c:if>
	<c:if test="${empty(result) }">
		${joinId }는 사용가능한 아이디입니다.<br>
		<input type="button" value="사용" id="use"><br>
	</c:if>
	<c:url value="/join/idCheck" var="idchk"></c:url>
	다른 ID로 시도하려면 새로 중복 체크를 하세요.
	<form action="${idchk}">
		<label for="joinId">아이디</label>
		<input type="text" id="joinId" name="joinId">
		<input type="submit" value="전송"/>
	</form>
</body>
</html>