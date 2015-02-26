<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>

<title>PASSWDFAIL</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />

<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-1000px.css">
<link rel="stylesheet" href="css/style-desktop.css">
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>

<style type="text/css">
body, input, textarea, select {
	line-height: 1.75em;
	font-size: 12pt;
	background-color: #323232;
}

table {
	border-color: red;
	border-bottom-style: 3px solid;
}

form {
	width: 10cm;
}

label {
	display: inline-block;
	width: 5em;
}

fieldset .help {
	margin-top: 2em;
	display: inline-block;
}

.gwd-page-container {
	position: relative;
	width: 100%;
	height: 100%;
}

.gwd-page-content {
	-webkit-transform: perspective(1400px)
		matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
	-webkit-transform-style: preserve-3d;
	position: absolute;
	background-color: transparent;
}

.gwd-page-wrapper {
	position: absolute;
	-webkit-transform: translateZ(0px);
	background-color: rgb(255, 255, 255);
}

.gwd-page-size {
	width: 1080px;
	height: 800px;
}

.gwd-div-ohx1 {
	background-image: none;
	background-color: rgb(255, 255, 255);
}

.gwd-div-ahnf {
	position: absolute;
	width: 695px;
	height: 93px;
	border-image-source: none;
	left: 199px;
	top: 80px;
	background-image: none;
	background-color: rgb(255, 195, 185);
}

.gwd-div-ego1 {
	position: absolute;
	width: 516px;
	height: 352px;
	left: 199px;
	top: 206px;
	border-image-source: none;
	background-image: none;
	background-color: rgb(255, 214, 93);
}

.gwd-div-cie2 {
	position: absolute;
	width: 162px;
	height: 352px;
	left: 733px;
	top: 206px;
	border-image-source: none;
	background-image: none;
	background-color: rgb(218, 255, 162);
}

.gwd-btutton-csd1 {
	position: absolute;
	width: 147px;
	height: 48px;
	left: 739.5px;
	top: 389px;
	background-image: none;
	background-color: rgb(255, 139, 181);
}

.gwd-btutton-kskc {
	position: absolute;
	width: 147px;
	height: 47px;
	left: 741px;
	top: 478px;
	background-image: none;
	background-color: rgb(255, 116, 150);
}

.ui-tooltip {
	width: 200px;
}

#accordion-resizer {
	padding: 0px;
	width: 100%;
}

#accordion {
	padding: 0px;
	width: 100%;
	background-color: gray;
	border-color: gray;
}

#header {
	background-image: url(images/main.jpg);
}
a:link {
    text-decoration: none;
}

a:visited {
    text-decoration: none;
}

a:hover {
    text-decoration: underline;
}

a:active {
    text-decoration: underline;
}

</style>

</head>

<body class="homepage" bgcolor=#333323>

	<c:url value="<%=request.getContextPath()%>" var="cp"></c:url>

	<div id="header-wrapper" style="background-color: #323232;">
		<div id="header" class="container">
			<h1 id="logo">
				<a href="<%=request.getContextPath()%>">JooJooclub</a>
			</h1>
			<p>Welcom To JooJooClub</p>
			<!-- 헤더 메뉴 -->
			<div align="right">
				
				<nav id="nav">
					<ul>
						<c:if test="${!empty loginUser }">
							<li><span>${loginUser.userId}님 [찬스:${loginUser.chance }]</span></li>
						</c:if>

						<c:if test="${!empty loginOwner }">
							<li><span>${loginOwner.ownerId}님</span></li>
						</c:if>

						<c:if test="${!empty loginUser || !empty loginOwner }">
							<li><a class="icon fa-home"
								href="<%=request.getContextPath()%>/"><span>Home</span></a></li>
							<li><a class="icon fa-retweet"
								href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
							<li><a class="icon fa-sitemap"
								href="<%=request.getContextPath()%>/review"><span>ReviewBoard</span></a></li>
							<li><a class="icon fa-bar-chart-o"
								href="<%=request.getContextPath()%>/logout"><span>Logout</span></a>
						</c:if>

						<c:if test="${empty loginOwner && empty loginUser }">
							<li><a class="icon fa-home"
								href="<%=request.getContextPath()%>/"><span>Home</span></a></li>
							<li><a class="icon fa-bar-chart-o"
								href="<%=request.getContextPath()%>/login"><span>Login</span></a>
							<li><a class="icon fa-cog"
								href="<%=request.getContextPath()%>/join"><span>Join</span></a></li>
							<li><a class="icon fa-retweet"
								href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
							<li><a class="icon fa-sitemap"
								href="<%=request.getContextPath()%>/review"><span>ReviewBoard</span></a></li>
						</c:if>
					</ul>
				</nav>
			</div>
			<!-- 헤더 메뉴 끝 -->
		</div>
		<!-- 헤더 끝 -->


	</div>
	<!-- 헤더 래퍼 끝 -->


	<!-- 헤더 바디 구분 띠 -->
	<img src="images/bar.png" style="width: 100%">


	<div id="header-wrapper" style="background-color: #323232; font: white;">
		<br>
		<h1 style="font: red;"><font color="white">SORRY [ Password찾기 결과 ]</font></h1>
		<br>

		<div style="padding-left: 1cm; text-align: left;">
		<!-- 	<label  style="width: 6cm; " >
				<img alt="" src="images/jj.png"  >
				class="img-circle"
			</label>
			<label  style="width: 20cm; padding-left: 10cm;">
					<font color="white" size="5px">
					존재하지 않는 페이지거나<br>				
					오류로 인하여 현재 페이지를 볼 수 없습니다.<br>				
					이용에 불편을 드려서 죄송합니다.<br>				
					잠시 후 다시 시도해 주십시오.<br>				
					현재 서비스되는 페이지인지<br> 다시 한번 확인해 주시기 바랍니다.</font>
				<br>
			</label> -->
			
			 <div style="padding-left: 1cm; text-align: center;">	
				<!-- <img alt="" src="images/jj.png"  > -->
			<br>
			<br>
					<font color="white" size="5px">
					회원가입시 입력 하셨던 이메일주소로 비밀번호가 발송되었습니다.<br>				
					* 이메일 주소가 기억이 나지 않으실 때 고객센터로 전화주세요.<br>				
					</font>
				<br>
			</div>

		</div>
<br><br><br>
		&nbsp; &nbsp;
		&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
		&nbsp; &nbsp;<button class="btn btn-primary btn-lg">이전 페이지로</button>
		&nbsp; &nbsp;<button class="btn btn-success btn-lg">홈페이지 이용하기</button>
		&nbsp; &nbsp;<button class="btn btn-danger btn-lg">담당자 문의하기</button>
<br><br>
	</div>

	<!-- 바디 끝 -->
	<!-- Footer -->
	<br>	<img src="images/bar.png" style="width: 100%">
<br>
	<div  >
		<div align="center"><br>
		<font color="white" size="3px">	 <a	href="<%=request.getContextPath()%>/footer/servicePolicy">이용약관</a>
			&nbsp; &nbsp; 
			<a href="<%=request.getContextPath()%>/footer/privacyPolicy">개인정보보호방침</a>
			&nbsp; &nbsp; 
			<a	href="<%=request.getContextPath()%>/footer/youthPolicy">청소년보호정책</a>
			&nbsp; &nbsp; 
			<a	style="" href="<%=request.getContextPath()%>/footer/helpCenter">고객센터</a> <br>
		</font>	
			
			<br>
			<div style="font-size: 12px;"><font color="white" size="2px">
				사업자등록번호:130-50-61004 (주)주주총회 대표이사: 정주주 주소: 이클립시 디비구 자바동 123-45 <br>
				주주총회앱의 모든 콘텐츠는 저작권법의 보호를 받으므로, 무단 전재, 복사, 배포 등을 금합니다. <br>
				Copyright (c) JooJooClub All Rights Reserved.</font>
			</div>
			
		</div>
	</div>

</body>
</html>


