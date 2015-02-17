<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>LoginPage</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!-- 버튼부트스트랩 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"  href="css/style-1000px.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-desktop.css">


<link rel="stylesheet" href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>


 <script>
	function Check_user(f){ 
		if (document.form1.userPassword.value == "" || document.form1.userId.value == "") 
		{ 
			$("#dialog").dialog({
				autoOpen : false,
				show : {
					effect : "blind",
					duration : 1000
				},
				hide : {
					effect : "explode",
					duration : 1000
				}
			});

			$("#opener1").click(function() {
				$("#dialog").dialog("open");
			});
		document.form1.userId.focus(); 
		return false; 
		} 
	<%-- 	else{
			var xhr = new XMLHttpRequest();
			
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4 && xhr.status==200){
					 document.querySelector("#drophere")
					.innerHTML=""; 
					document.querySelector("#drophere")
					.innerHTML=xhr.responseText;
				}
			}
			var url = "<%=request.getContextPath()%>/check_user";
			xhr.open("post", url, true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			/* var msg = "흠흠흠...";
			
			xhr.send("msg="+msg); */
			xhr.send();
			
			return true;
			
		} --%>
		return true;
	}

	
	function Check_owner(f){ 
		if (document.form2.ownerPassword.value == "" || document.form2.ownerId.value == "") 
		{ 
			$("#dialog").dialog({
				autoOpen : false,
				show : {
					effect : "blind",
					duration : 1000
				},
				hide : {
					effect : "explode",
					duration : 1000
				}
			});

			$("#opener2").click(function() {
				$("#dialog").dialog("open");
			});
		document.form2.ownerId.focus(); 
		return false; 
		} 
		return true;
	}
		
	
	
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
	   
	   window.onload=function (){
			var xhr = new XMLHttpRequest();
			
			document.querySelector("#opener1")
			.addEventListener("click", function(){
				xhr.onreadystatechange=function(){
					if(xhr.readyState==4 && xhr.status==200){
						 document.querySelector("#drophere")
						.innerHTML=""; 
						document.querySelector("#drophere")
						.innerHTML=xhr.responseText;
					}
				}
				var url = "<%=request.getContextPath()%>/login_fail";
				xhr.open("post", url, true);
				xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
				/* var msg = "흠흠흠...";
				
				xhr.send("msg="+msg); */
				xhr.send();
			}, false);
		}
	</script>





<link rel="stylesheet"   href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

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
<%-- <script>

   window.onload=function(){
		var xhr = new XMLHttpRequest();
		
		document.querySelector("#send")
		.addEventListener("click", function(){
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4 && xhr.status==200){
					document.querySelector("#drophere")
					.innerHTML+=xhr.responseText+"<br>";
				}
			}
			var url = "<%=request.getContextPath()%>/ajax";
			xhr.open("post", url, true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			var msg = document.querySelector("#comment").value;
			
			xhr.send("msg="+msg);
		}, false);
	}
</script> --%>
</head>
<c:url value="<%=request.getContextPath() %>" var="path"></c:url>
<body class="homepage" bgcolor=#333323>
   <div id="header-wrapper" style= "background-image: url(images/main.jpg)">

      <div id="header" class="container">

         <!-- Logo -->
         <h1 id="logo">
            <a href="<%=request.getContextPath() %>/main">JooJooclub</a>
         </h1>
         <p>Welcom To JooJooClub</p>
         <div align="right">
            <nav id="nav">
            <ul>
               <li><a class="icon fa-home" href="<%=request.getContextPath() %>/main"><span>Home</span></a></li>
               <li><a class="icon fa-bar-chart-o" href="<%=request.getContextPath() %>/login"><span>Login</span></a>
               <li><a class="icon fa-cog" href="<%=request.getContextPath() %>/join"><span>Join</span></a></li>
               <li><a class="icon fa-retweet" href="<%=request.getContextPath() %>/info/member"><span>MyPage</span></a></li>
               <li><a class="icon fa-sitemap" href="<%=request.getContextPath() %>/info/cart"><span>Cart</span></a></li>
            </ul>
            </nav>
         </div>
      </div>
   </div>
   <img  src="images/bar.png" style="width: 100%">
 <div id="features-wrapper">
      <section id="features" class="container"> 
   <div id="tabs">
      <ul>
         <li><a href="#tab1">일반회원</a></li>
         <li><a href="#tab2">업주회원 </a></li>

      </ul>
      <div id="tab1">
         <div id="footer" class="container" align="left">
            <div class="row">
				<c:url value="/login/check_user" var="action"></c:url>
               	<form:form  id="form1" name="form1" modelAttribute="user" method="post" action="${action}" onsubmit="return Check_user(this);">
                  <div class="row 90%">
                     <div>
                        <form:input path="userId" id="userId" name="userId" placeholder="ID 입력 " type="text" /> 
                        <form:input path="userPassword" id="userPassword" name="userPassword" placeholder="PASSWD 입력  " type="password" />
                     </div>
                  </div>                 
                      
                  <ul>
                     <li><a id="idlabel" class="icon fa-home" href="find"><span>아이디/비밀번호찾기</span></a></li>
                     <li><a class="icon fa-bar-chart-o" href="join"><span>회원가입</span></a>
                     <div id="drophere"></div><input type="button" value="ajax" id="send">
                  </ul>
                                   
                  <div class="row 80%">
                     <div class="12u">
                     <input id="opener1" name="opener1" type="submit" value="Login"/>
                        <!-- <button id="send" type="submit" class="form-button-submit button icon fa-envelope">Login</button> -->
                       <!--  <button type="button" onclick="loadXMLDoc()">Change Content..</button> -->

                     </div>
                  </div>
              	</form:form>         
            </div>
         </div>
      </div>
      <div id="tab2">
         <div id="footer" class="container" align="left">
            <div class="row">

               <c:url value="/login/check_owner" var="action"></c:url>
               	<form:form id="form2" name="form2" modelAttribute="owner" method="post" action="${action}" onsubmit="return Check_owner(this);">
                  <div class="row 90%">
                     <div>
                         <form:input path= "ownerId" id = "ownerId" name="ownerId" placeholder="ID 입력 " type="text"  />
                         <form:input path= "ownerPassword" id="ownerPassword" name="ownerPassword" placeholder="PASSWD 입력  " type="password" /> 
                     </div>
                  </div>
 				<ul>
                     <li><a id="idlabel" class="icon fa-home" href="find"><span>아이디/비밀번호찾기</span></a></li>
                     <li><a class="icon fa-bar-chart-o" href="join"><span>회원가입</span></a>
                     <div id="drophere"></div>
                  </ul>

                  <div class="row 80%">
                     <div class="12u">
                     <input id="opener2" name="opener2" type="submit" value="Login"/>
                        <!-- <button id="send" type="submit" class="form-button-submit button icon fa-envelope">Login</button> -->
                       <!--  <button type="button" onclick="loadXMLDoc()">Change Content..</button> -->

                     </div>
                  </div>
               </form:form>
               
                  
				<div id="dialog">
				  <p>아이디와 비밀번호를 입력하세요.</p>
				</div>
 

            </div>
         </div>
      </div>
   </div>
   </section>
   </div>
   

   
   
</body>
</html>
