<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>마이페이지 입니다.</h1>

	${loginUser.userId }님 반갑습니다.
	${loginOwner.ownerId }님 반갑습니다.
	<c:if test="${!empty loginUser }">
		${loginUser.userId }님 반갑습니다.
			<c:url value="/info/userInfo" var="url"></c:url>
			<a href="${url }"><input type="button" value="정보수정 및 탈퇴"> </a>
			
			<c:url value="/info/userInfo/coupon" var="url"></c:url>
			<a href="${url }"><input type="button" value="쿠폰 보기"> </a>
		
	</c:if>
	
	<c:if test="${!empty loginOwner}">
		
		${loginOwner.ownerId }님 반갑습니다.
		업주 정보 보기...
		<%-- <a href = "<%=request.getContextPath()%>/FrontServlet?cmd=AllTComment">게시판으로 이동가능</a><br><br> --%>
	</c:if>
	
	<c:if test="${empty loginUser }">
			<c:if test="${empty loginOwner }">
		로그인 해 주세요!
		<%-- <a href = "<%=request.getContextPath()%>/FrontServlet?cmd=AllTComment">게시판으로 이동가능</a><br><br> --%>
	
	</c:if>
	</c:if>
	

</body>
</html>