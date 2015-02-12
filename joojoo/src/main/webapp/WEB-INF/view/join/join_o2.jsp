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

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/joinfont.css"/>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

</script>


<img src="<%=request.getContextPath()%>/css/Penguins.jpg">
</head>
<body>

	<c:url value="/join/result/owner" var="action"></c:url>
 <form:form  modelAttribute="joinStore" method="post" action="${action} ">
   	<h1>가게를 등록 해 주세요!</h1>
   	<h3>가게 이름</h3><form:input path="storeName"  placeholder="상호명" required="true"/>
    <h3>가게 전화</h3><form:input path="storePhone"  placeholder="전화번호" required="true"/>
    <h3>region_code</h3><form:input path="regionName" required="true"/>
    <h3>가게 주소</h3><form:input path="storeAdress"  placeholder="상세주소" required="true"/>
    <h3>업종 선택</h3><form:input path="typeName" required="true"/>
    <form:input type="hidden" value="${joinOwner.ownerId}" path="ownerId"/><br>
    
       <h3>비밀번호 확인</h3>
		<input type="password" id="pass2" name="pass2" required="true" /><br>
    
    
 
   
     <input type="submit" value="등록완료" />
      

</form:form>


</body>
</html>