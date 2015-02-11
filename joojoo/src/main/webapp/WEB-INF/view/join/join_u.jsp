<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="joojoo.entity.Owners" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


      
 
	<h1>유저 회원가입 페이지</h1>
	<c:url value="/join/result/user" var="action"></c:url>
	 
      
 <form:form  modelAttribute="joinUser" method="post" action="${action} ">
   
      <label>아이디 </label> : <form:input path="userId"/><br>
     <label>비밀번호 </label> : <form:input path="userPassword"/><br>
     <label>이름</label> : <form:input path="userName"/><br>
     <label>메일</label> : <form:input path="userMail"/><br>
     <label>폰</label> : <form:input path="userPhone"/><br>
     <form:input type="hidden" value="5" path="chance"/><br>
     
     <button type ="submit" name="proceed">다음</button>
      

</form:form>


</body>
</html>