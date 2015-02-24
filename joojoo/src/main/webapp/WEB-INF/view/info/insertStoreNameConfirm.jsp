<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게등록</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	window.$("#use").click(function(){
			opener.$("#insertStoreName").val("${insertStoreName}");
			opener.$("#insertStorechecked ").val("insertStorechecked");
			self.close();
		});
	});
</script>
</head>
<body>
	<h2>아이디 중복 확인</h2>
	<c:if test="${result ne null }" >
		${insertStoreName}은 기존의 상호명입니다.<br>
	</c:if>

	<c:if test="${result eq null }">
		${insertStoreName }은 사용가능한 상호명입니다.<br>
		<input type="button" value="사용하기" id="use"><br>
	</c:if>
	
	<c:url value="/info/insertStoreNameCheck" var="insertStoreNamechk"></c:url>
	다른 상호명을 시도하려면 새로 중복 체크를 하세요.
	<form action="${insertStoreNamechk}">
		<label for="insertStoreName">상호명</label>
		<input type="text" id="insertStoreName" name="insertStoreName">
		<input type="submit" value="중복체크"/>
	</form>
</body>
</html>