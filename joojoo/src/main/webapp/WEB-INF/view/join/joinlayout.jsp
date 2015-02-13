<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <head>
   
 
  </head>
  <body>
   
         	<c:url value="/join/user" var="url"></c:url>
			<a href="${url }"><input type="button" value="일반회원 가입하기"> </a>

			<c:url value="/join/owner" var="url"></c:url>
			<a href="${url }"><input type="button" value="업주회원 가입하기"> </a>
     
  </body>
</html>