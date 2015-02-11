<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="joojoo.entity.Stores" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


      
 
	<h1>업주 가게등록 페이지</h1>
	<c:url value="/join/result/owner" var="action"></c:url>
	 
      
 <form:form  modelAttribute="joinStore" method="post" action="${action} ">
   
      <label>가게이름 </label> : <form:input path="storeName"/><br>
     <label>가게주소</label> : <form:input path="storeAdress"/><br>
     <label>가게전화번호</label> : <form:input path="storePhone"/><br>
     <label>region_code</label> : <form:input path="regionCode"/><br>
     <label>type_code</label> : <form:input path="typeCode"/><br>
   	 <form:input type="hidden" value="${joinOwner.ownerId}" path="ownerId"/><br>	
   	 
     <button type ="submit" name="proceed">가입하기</button>
      

</form:form>


</body>
</html>