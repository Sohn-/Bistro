<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가게정보수정</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
	window.$("#use").click(function(){
			opener.$("#storeName").val("${storeName}");
			opener.$("#storechecked ").val("storechecked");
			self.close();
		});
	var change = <%=request.getParameter("change")%>;
	if(change == false){
		opener.$("#storeName").val("${storeName}");
		opener.$("#storechecked ").val("storechecked");
	}
	});
</script>
</head>
<body>
	<h2>아이디 중복 확인</h2>
	<c:if test="${storeNameResult ne null }" >
	<c:if test="${change eq true }">
		${storeName}은 이미 등록된 상호명입니다.<br>
	</c:if>
	</c:if>
	<c:if test="${storeNameResult eq null }">
	<c:if test="${change eq true }">
		${storeName }은 사용가능한 상호명입니다.<br>
		<input type="button" value="사용하기" id="use"><br>
	</c:if>
	</c:if>
	<c:if test="${change eq false }">
		${storeName }은 기존의 상호명입니다.<br>
		<input type="hidden" id="already">
		<input type="button" value="기존 상호명 사용" id="use"><br>
	</c:if>
	<c:url value="/info/storeNameCheck" var="storeNamechk"></c:url>
	다른 상호명을 시도하려면 새로 중복 체크를 하세요.
	<form action="${storeNamechk}">
		<label for="storeName">상호명</label>
		<input type="text" id="storeName" name="storeName">
		${storeCode }:스토어코드
		<input type="hidden" name="storeCode" value="${storeCode }">
		<input type="submit" value="중복체크"/>
	</form>
</body>
</html>