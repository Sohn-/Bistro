<%@ page import="joojoo.entity.All"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>MyPage</title>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style-1000px.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/style-desktop.css">
<link rel="stylesheet"	href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<script>

$(document).ready(function() {
	$(":checked").wrap("<span style='background-color:red'>");
});
function Check_user(f) {
	if (document.form1.userPassword.value == ""	|| document.form1.userId.value == "") 
	{
		$("#dialog").dialog({autoOpen : false,show : {effect : "blind",duration : 1000}, hide : {effect : "explode",	duration : 1000	}});
		$("#opener1").click(function() 
		{
			$("#dialog").dialog("open");});
			document.form1.userId.focus();
			return false;
	}
	return true;
}

function Check_owner(f) {
	if (document.form2.ownerPassword.value == ""|| document.form2.ownerId.value == "") 
	{
		$("#dialog").dialog({autoOpen : false,	show : {effect : "blind",duration : 1000},hide : {	effect : "explode",	duration : 1000}});
		$("#opener2").click(function() 
		{
			$("#dialog").dialog("open");
		});
		document.form2.ownerId.focus();
		return false;
	}
	return true;
}

$(function() {$("#tabs").tabs();});

$(function() {
	var tooltips = $("[title]").tooltip({
		position : {
			my : "left top",
			at : "right+5 top-5"
		}
	});
});
</script>


<style type="text/css">
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
	text-align: left;
}

table#t01 {
	width: 100%;
	background-color: #f1f1c1;
}

label {
	display: inline-block;
	width: 5em;
}

fieldset .help {
	margin-top: 2em;
	display: inline-block;
}

#header {
	background-image: url(images/main.jpg);
}
label {
	display: inline-block;
	width: 5em;
}

fieldset div {
	margin-bottom: 2em;
}

fieldset .help {
	display: inline-block;
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

function Open_event(f) {
	if (document.form1.userPassword.value == ""
			|| document.form1.userId.value == "") {
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
	return true;
}
</script>
</head>
<c:url value="<%=request.getContextPath()%>" var="path"></c:url>
<body class="homepage" bgcolor=#333323>
	<div id="header-wrapper" style="background-image: url(images/main.jpg)">

		<div id="header" class="container">

			<!-- Logo -->
			<h1 id="logo">
				<a href="<%=request.getContextPath()%>/main">JooJooclub</a>
			</h1>
			<p>Welcom To JooJooClub</p>
			<div align="right">
				<nav id="nav">
				<ul>
					<li><a class="icon fa-home"
						href="<%=request.getContextPath()%>/main"><span>Home</span></a></li>
					<li><a class="icon fa-bar-chart-o"
						href="<%=request.getContextPath()%>/login"><span>Login</span></a>
					<li><a class="icon fa-cog"
						href="<%=request.getContextPath()%>/join"><span>Join</span></a></li>
					<li><a class="icon fa-retweet"
						href="<%=request.getContextPath()%>/info/member"><span>MyPage</span></a></li>
					<li><a class="icon fa-sitemap"
						href="<%=request.getContextPath()%>/info/cart"><span>Cart</span></a></li>
				</ul>
				</nav>
			</div>
		</div>
	</div>

	<div id="tabs">
		<ul>
			
			<li><a href="#tab2">위시 리스트</a></li>
			
		</ul>

	


				<div id="tab2">


					<table style="width: 100%">
						<tr>
							<td>글제목</td>
							<td>요약</td>
							<td>글관리</td>
						</tr>
						<tr>
							<td>주주비어</td>
							<td>서비스팍팍</td>
							<td><input type="checkbox" name="vehicle" value="Car"/></td>
						</tr>
						<tr>
							<td>주주비어</td>
							<td>서비스팍팍</td>
							<td><input type="checkbox" name="vehicle" value="Car"/></td>
						</tr>
						<tr>
							<td>주주비어</td>
							<td>서비스팍팍</td>
							<td><input type="checkbox" name="vehicle" value="Car"/></td>
							<!-- <td><input type="checkbox" name="vehicle" value="Car" checked="checked"></td> -->
						</tr>
					</table>

					
					<a href="update_u.jsp"><input type="button" name="button"	value="새로운 이벤트 등록"> </a> 
					
					
				


				</div>

				

			
</body>
</html>
