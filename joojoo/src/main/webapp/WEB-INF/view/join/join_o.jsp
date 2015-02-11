<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="joojoo.entity.Users" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


      
 
	<h1>업주 회원가입 페이지</h1>
	<c:url value="/join/join_o2" var="action"></c:url>
	 
      
 <form:form  modelAttribute="joinOwner" method="post" action="${action} ">
   
      <label>아이디 </label> : <form:input path="ownerId"/><br>
     <label>비밀번호 </label> : <form:input path="ownerPassword"/><br>
     <label>이름</label> : <form:input path="ownerName"/><br>
     <label>메일</label> : <form:input path="ownerMail"/><br>
     <label>폰</label> : <form:input path="ownerPhone"/><br>
     <label>사업자등록번호</label> : <form:input path="licenseNumber"/><br>
     
     <button type ="submit" name="proceed">다음</button>
      

</form:form>


</body>
</html>