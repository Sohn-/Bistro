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

<c:url value="/join/user" var="url"></c:url>
<a href="${url }"><button>일반회원 가입하기</button> </a>

<c:url value="/join/owner" var="url"></c:url>
<a href="${url }"><button>업주회원 가입하기</button> </a>

</body>
</html>