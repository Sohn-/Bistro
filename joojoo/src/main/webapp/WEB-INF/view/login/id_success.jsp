<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Object userIdObj = session.getAttribute("findUserId");
	Object ownerIdObj = session.getAttribute("findOwnerId");
	String userId = null;
	String ownerId = null;
	
	if(userIdObj != null){
		userId = (String)userIdObj;
	}
	else if(ownerIdObj != null){
		ownerId = (String)ownerIdObj;
	}
	if(userId != null){
		out.println("당신의 아이디는 \'"+userId+"\'입니다.");
	}
	else if(ownerId != null){
		out.println("당신의 아이디는 \'"+ownerId+"\'입니다.");
	}
%>
</body>
</html>