<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>event_detail</title>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet"  href="css/style-1000px.css">
<link rel="stylesheet"  href="css/style.css">
<link rel="stylesheet"  href="css/style-desktop.css">
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
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
</script>


<style type="text/css">
html, body {
	width: 100%;
	height: 100%;
	margin: 0px;
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
	input[type="button"],
	input[type="submit"],
	input[type="text"],
	input[type="password"],
	input[type="mail"]{
	font-family:'Jeju Gothic', serif;
	color: black;
	
	}
</style>
</head>

<c:url value="<%=request.getContextPath()%>" var="path"></c:url>
<body class="homepage" bgcolor=#333323 >
	<div id="header-wrapper" >
		<div id="header" class="container">
			<h1 id="logo"><a href="<%=request.getContextPath()%>/">JooJooclub</a></h1>
			<p>Welcom To JooJooClub</p>
			<div align="right">
				<nav id="nav">
				<ul>
					<li><a class="icon fa-home"			href="<%=request.getContextPath()%>/"><span>Home</span></a></li>
					<li><a class="icon fa-bar-chart-o"	href="<%=request.getContextPath()%>/login"><span>Login</span></a>
					<li><a class="icon fa-cog"			href="<%=request.getContextPath()%>/join"><span>Join</span></a></li>
					<li><a class="icon fa-retweet"		href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
					<%-- <li><a class="icon fa-sitemap"		href="<%=request.getContextPath()%>/info/cart"><span>Cart</span></a></li> --%>
					<li><a class="icon fa-sitemap"		href="<%=request.getContextPath()%>/review"><span>ReviewBoard</span></a></li>
				</ul>
				</nav>
			</div>
		</div>
	</div>
	
	 <img  src="images/bar.png" style="width: 100%">
 <div id="features-wrapper">
      <section id="features" class="container"> 

	<div align="center" class="container">
		<br><br>
		<div style="background-color: #f1f1c1;color: black; ">
			<h2>${eventDetail.title}</h2>
		</div>
		<div id="carousel-example-generic" class="carousel slide"	data-ride="carousel">
			
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0"	class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox"  style="background-color: white;color: black; ">
				<div class="item active">
					<img src="images/pic01.jpg" align="bottom">
					<div class="carousel-caption">${eventDetail.title}</div>
				</div>
				<div class="item">
					<img src="images/pic01.jpg" align="bottom">
					<div class="carousel-caption">${eventDetail.title}</div>
				</div>
				<div class="item">
					<img src="images/pic01.jpg" align="bottom">
					<div class="carousel-caption">${eventDetail.title}</div>
				</div>
				${eventDetail.title}
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> 
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> 
			<a class="right carousel-control" href="#carousel-example-generic"	role="button" data-slide="next"> 
				<span	class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<br>
		
		<div align="right">
		<c:if test="${!empty loginUser  && leftCouponNo !='0'}">
		
		<button type="button" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#myModalCart">장바구니담기</button>
		
		<%-- <c:url value="/buy_check?eventCommentCode=${eventDetail.commentCode}" var="action"></c:url> 
		<a href="${action }"> --%>
			<button type="button" class="btn btn-warning btn-lg" data-toggle="modal" data-target="#myModalBuyCoupon">구매하기</button>
		</c:if>
			
			
			<c:if test="${leftCouponNo =='0'}">
				<h3>무폰이 모두 판매되었습니다. ㅠ_ㅠ</h3>
			</c:if>
			
		<!-- </a> -->
		
		
		
		<c:if test="${!empty loginOwner || (empty loginUser && empty loginOwner)}">
		비회원 및 업주회원은 구매 및 장바구니를 이용할 수 없습니다.
		</c:if>
		</div>	
		<br>		
		<div>
			<h4>남은 쿠폰 갯수 : ${leftCouponNo }/ ${publishedCouponNo } </h4>
			${eventDetail.content}
		</div>
	</div>	
	</section>
	</div>	
	
	
	
	<%-- <div class="modal fade" id="myModalCart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title">장바구니담기 성공</h4>
					</div>
					<div class="modal-body">
						장바구니 담기에 성공하였습니다. <br> 이벤트 페이지로 돌아가려면 [OK] 버튼을,<br>
						장바구니를 확인 하려면 [장바구니확인] 버튼을 누르세요.
					</div>
					<c:url value="/info" var="action"></c:url>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
						<a href="${action }"><button type="button"	class="btn btn-primary">장바구니 확인</button></a>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal --> --%>
		
		<c:url value="/buy_coupon?ecommentCode=${eventDetail.commentCode }" var="url"></c:url>
		<div class="modal fade" id="myModalBuyCoupon" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog"><div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header">
					
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"	id="modal_title">쿠폰 구매</h4>
				</div>
				<!-- 모달 바디 -->
				<div class="modal-body">
				<form method="get" action="${url}">
				${eventDetail.commentCode }번 글
				 <input type="hidden" name="ecommentCode" value="${eventDetail.commentCode }" />
					쿠폰을 구매하시겠습니까?<br>
					<button type="submit" class="btn btn-warning btn-sm" >구매하기</button>
				</form>
				</div>
				
					<!-- 모달 푸터 -->
				<div class="modal-footer">
					<button type="button" class="btn btn-warning btn-sm" data-dismiss="modal">닫기</button>
				</div>
					
				</div>	<!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div>
		
		
		<c:url value="/info/user/cart/add?ecommentCode=${eventDetail.commentCode }" var="url"></c:url>
		<div class="modal fade" id="myModalCart" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"	aria-hidden="true">
			<div class="modal-dialog"><div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header">
					
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"	id="modal_title">위시리스트 담기</h4>
				</div>
				<!-- 모달 바디 -->
				<div class="modal-body">
				<form method="get" action="${url}">
				${eventDetail.commentCode }번 글
				 <input type="hidden" name="ecommentCode" value="${eventDetail.commentCode }" />
					위시리스트에 추가하시겠습니까?<br>
					<button type="submit" class="btn btn-warning btn-sm" >추가하기</button>
				</form>
				</div>
				
					<!-- 모달 푸터 -->
				<div class="modal-footer">
					<button type="button" class="btn btn-warning btn-sm" data-dismiss="modal">닫기</button>
				</div>
					
				</div>	<!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div>
		
		
		
		
		<div class="modal fade" id="myModalBuyCouponSucess" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		        <h4 class="modal-title">구매 성공</h4>
		      </div>
		      <div class="modal-body">
		        구매에 성공하였습니다. <br>
		        이벤트 페이지로 돌아가려면 [OK] 버튼을,<br>
		        마이페이지 쿠폰관리에서 쿠폰을 확인 하려면 [쿠폰확인] 버튼을 누르세요.
		      </div>
		      <c:url value="/info#tab4" var="action"></c:url>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">OK</button>
		        <a href="${action }"><button type="button" class="btn btn-primary">쿠폰확인</button></a>
		      </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		
		
		
		
		<div>
		<div id="footer" class="container">
			<div align="center">
				<br> <br> <a
					href="<%=request.getContextPath()%>/footer/servicePolicy">이용약관</a>
				&nbsp; &nbsp; <a
					href="<%=request.getContextPath()%>/footer/privacyPolicy">개인정보보호방침</a>
				&nbsp; &nbsp; <a
					href="<%=request.getContextPath()%>/footer/youthPolicy">청소년보호정책</a>
				&nbsp; &nbsp; <a
					href="<%=request.getContextPath()%>/footer/helpCenter">고객센터</a> <br>
				<br>
				<div style="font-size: 12px;">
					사업자등록번호:130-50-61004 (주)주주총회 대표이사: 정주주 주소: 이클립시 디비구 자바동 123-45 <br>
					주주총회앱의 모든 콘텐츠는 저작권법의 보호를 받으므로, 무단 전재, 복사, 배포 등을 금합니다. <br>
					Copyright (c) JooJooClub All Rights Reserved.
				</div>
				<br>
			</div>
		</div>
	</div>
</body>
</html>
