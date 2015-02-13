<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>CSS Tutorial | Layout - Responsive</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/joinlayout.css" />
 
  </head>
  <body>
    <div id="jb-container">
      <div id="jb-header">
       <!--  <h2 align="center"><b> 가입방식을선택해 주세요</b></h2> -->
       <h2 style="color:#E0E0E0; font-family: 'Nanum Barun Gothic';">가입 방식 선택</h2>
       
      </div>
      <div id="jb-content" class="join">
       <p align="left"> Register</p>
        <p> <a href="joinimpl.jsp"> <input type="button" name="button" value="일반회원가입"></a></p>
         <p>  <a href="joinimpl.jsp"><input type="button" name="button" value="업주회원가입"></a></p>
      </div>

      <div id="jb-footer">
        <p>Copyright</p>
      </div>
    </div>
  </body>
</html>