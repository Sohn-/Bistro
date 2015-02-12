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
			opener.$("#joinMail").val("${joinMail}");
			opener.$("#checked2").val("checked2");
			self.close();
		});
	});
</script>
</head>
<body>
	<h2>아이디 중복 확인</h2>
	<c:if test="${!empty (result) }">
		${joinMail}는 이미 등록된 메일입니다.<br>
	</c:if>
	<c:if test="${empty(result) }">
		${joinMail }는 사용가능한 메일입니다.<br>
		<input type="button" value="사용" id="use"><br>
	</c:if>
	<c:url value="/join/mailCheck" var="mailchk"></c:url>
	다른 메일로 시도하려면 새로 중복 체크를 하세요.
	<form action="${mailchk}">
		<label for="joinMail">메일</label>
		<input type="text" id="joinMail" name="joinMail">
		<input type="submit" value="전송"/>
	</form>
</body>
</html>