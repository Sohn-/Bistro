<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/joinfont.css" />



</head>
<body>

<%-- <form:form  modelAttribute="joinUser" method="post" action="${action} ">
   
      <label>아이디 </label> : <form:input path="userId"/><br>
     <label>비밀번호 </label> : <form:input path="userPassword"/><br>
     <label>이름</label> : <form:input path="userName"/><br>
     <label>메일</label> : <form:input path="userMail"/><br>
     <label>폰</label> : <form:input path="userPhone"/><br>
     <form:input type="hidden" value="5" path="chance"/><br>
     
     <button type ="submit" name="proceed">다음</button>
      

</form:form> --%>

<form class="form-4">
    <h1 align="center">회 원 가 입</h1>
    <p>
        <label for="login">Id</label>
        <input type="text" name="login" placeholder="Username or email" required>
        <input type="submit" name="submit" value="중복체크">
    </p>
    <p>
        <label for="password">Password</label>
        <input type="password" name='password' placeholder="Password" required> 
    </p>
    <p>
        <label for="passwordconfirm">Passwordconfirm</label>
        <input type="password" name='passwordconfirm' placeholder="passwordconfirm" required> 
    </p>
        <p>
        <label for="Username">Username</label>
        <input type="text" name='Username' placeholder="Username" required> 
       
    </p>
            <p>
        <label for="Username">Usermail</label>
        <input type="email" name='Usermail' placeholder="Usermail" required> 
    </p>
          <p>
        <label for="Userphone">Userphone</label>
        <input type="text" name='Userphone' placeholder="Userphone" required> 
    </p>
             <p>
        <label for="Licensenumber">Userphone</label>
        <input type="text" name='Licensenumber' placeholder="Licensenumber" required> 
    </p>

    <p>
        <input type="submit" name="submit" value="가입">
    </p>       
</form>

</body>
</html>