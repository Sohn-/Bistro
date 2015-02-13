<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Strongly Typed by HTML5 UP</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
 <link rel="stylesheet" href="../css/style1.css" />
<style type="text/css">


</style>
</head>
<body>

<%@include file="header.jsp"%>
<div id="features-wrapper" style="background-color:black";>
       <section id="features" class="container"> 
 			<div id="joinform" class="joinform"> 
				<%@include file="joinform.jsp"%>
 			</div>
      </section>
</div>
<%@include file="footer.jsp"%>

</body>
</html>