<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ page import="joojoo.entity.RviewComment" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>후기 게시판입니다.</h1>

<table border ="1">

	<tr><th>글번호</th>  <th>작성자 ID</th><th>글 제목</th><th>글 작성 시간</th><th>스토어 코드</th><th>별점</th></tr>
	<c:forEach items="${rviews }" var="rview">
	
	<tr>
		<td><c:out value="${rview.commentCode}"></c:out></td>
		<td><c:out value="${rview.userId}"></c:out></td>
		<td><c:out value="${rview.title}"></c:out></td>
			
		<td><c:out value="${rview.regDate}"></c:out></td>
		<td><c:out value="${rview.storeCode}"></c:out></td>
		<td><c:out value="${rview.starPoint}"></c:out></td>
		
		</tr>
	</c:forEach>

		

</table>

<c:url value="/review/write" var="url"></c:url>
<a href="${url }"><button>후기 작성하기</button> </a>

</body>
</html>