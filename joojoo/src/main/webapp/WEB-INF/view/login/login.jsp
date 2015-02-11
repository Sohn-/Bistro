<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>LoginForm</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<style type="text/css">
label {
   display: inline-block;
   width: 5em;
}

fieldset .help {
   margin-top: 2em;
   display: inline-block;
}

.ui-tooltip {
   width: 200px;
}
</style>
<script>
   $(function() {
      $("#tabs").tabs();
   });

   $(function() {
      var tooltips = $("[title]").tooltip({
         position : {
            my : "left top",
            at : "right+5 top-5"
         }
      });
   });
</script>

</head>
<body bgcolor=#333323>

   <div id="tabs">
      <ul>
         <li><a href="#tab1">일반회원</a></li>
         <li><a href="#tab2">업주회원 </a></li>

      </ul>
      <div id="tab1">
      	<c:url value="/login/check_user" var="action"></c:url>
         <form:form modelAttribute="user" method="post" action="${action}">
            <fieldset>
              <div>
                  <label for="id">아이디</label>
                  <form:input path= "userId"/> 
                  <!--id = "userid"  title="아이디를 입력하세요." -->
               </div>
               <div>
                  <label for="passwd">패스워드</label>
                   <form:input path= "userPassword" id = "userpasswd" title="비밀번호를 입력하세요."/> 
               </div>


            </fieldset>
            <div align="center">
            	<button type="submit" name="proceed" align="middle">Login</button>
            </div>
         </form:form>
      </div>
      
      
      
      <div id="tab2">
      	 <c:url value="/login/check_owner" var="action"></c:url>
         <form:form modelAttribute="owner" method="post" action="${action}">
            <fieldset>
               <div>
                  <label for="id">아이디</label>
                  <form:input path= "ownerId" id = "ownerid" title="아이디를 입력하세요."/> 
               </div>
               <div>
                  <label for="passwd">패스워드</label>
                   <form:input path= "ownerPassword" id = "ownerpasswd" title="비밀번호를 입력하세요."/> 
               </div>
            </fieldset>
            <div align="center">
            	<button type="submit" name="proceed" align="middle">Login</button>
            </div>
         </form:form>
      </div>

   </div>


</body>
</html>
