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
			opener.$("#joinLicense").val("${joinLicense}");
			opener.$("#checked3").val("checked3");
			self.close();
		});
	});
</script>
</head>
<body>
	<h2>사업자 등록번호 중복 확인</h2>
	<c:if test="${!empty (result) }">
		${joinLicense}는 이미 등록된 번호입니다.<br>
	</c:if>
	<c:if test="${empty(result) }">
		${joinLicense}는 등록 가능합니다.<br>
		<input type="button" value="사용" id="use"><br>
	</c:if>
	<c:url value="/join/licenseCheck" var="licensechk"></c:url>
	다른 번호로 시도하려면 새로 중복 체크를 하세요.
	<form action="${licensechk}">
		<label for="joinLicense">메일</label>
		<input type="text" id="joinLicense" name="joinLicense">
		<input type="submit" value="전송"/>
	</form>
</body>
</html>