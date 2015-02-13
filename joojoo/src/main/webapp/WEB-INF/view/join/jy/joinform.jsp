<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/joinform.css" />
<link rel="stylesheet" href="css/joinlayout.css" />

<style type="text/css">
  #jb-contain {
        background-color: #2E2E2E;
        width: auto;
        margin: 0px auto;
       /*  padding: 20px; */
  
        font-family: 'Nanum Barun Gothic';
      }
      
       #jb-joincontent {
      font-family: 'Nanum Barun Gothic';
      color: #E0E0E0;
      background-color:#353535;
       width: 400px;
       margin: 0px auto 0px;
        padding: 0px;

      }
      #jb-joinlogo {
      font-family: 'Nanum Barun Gothic';
      color: #E0E0E0;
      background-color:#848484;
       width: 400px;
       height:60pxpx;
       margin: 0px auto 0px;
        padding: 0px;

      }
         @media screen and (max-width:500px) {
        #jb-contain {
          width: auto;
        }
         }

</style>


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
<div id="jb-contain">
<div id="jb-joinlogo">
<!-- <img src="css/images/logo1.png" align="left"><br><br>
<h1 align="center">회원가입</h1> -->
</div>
<div id="jb-joincontent">
<img src="css/images/logo1.png" align="left"><br><br>
<h2 align="left">  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 회원가입</h2>
<form class="form-4">
    <p>
        <label for="login">Id</label>
        <input type="text" name="login" placeholder="Username or email" required>
        <input type="submit" name="submit" value="아이디 중복체크">
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
<div class="join">
    <p>
        <a href="joinsuccess.jsp"><input type="button" name="button" value="가입"></a>
    </p>       
    </div>
</form>
</div>
</div>
</body>
</html>