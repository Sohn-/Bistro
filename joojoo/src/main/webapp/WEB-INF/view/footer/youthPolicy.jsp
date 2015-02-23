<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>mainPage</title>

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

	$(document).ready(function() {
		$('div#accordion').accordion({
			event : "click hoverintent",collapsible : true,});
	});

	$(function() {
		//scrollpane parts
		var scrollPane = $(".scroll-pane"), scrollContent = $(".scroll-content");
		//build slider
		var scrollbar = $(".scroll-bar").slider({slide : function(event, ui) {
			if (scrollContent.width() > scrollPane.width()) {
				scrollContent.css(
				"margin-left",	Math.round(ui.value/ 100* (scrollPane.width() - scrollContent.width()))	+ "px");
			} else 
			{
				scrollContent.css("margin-left", 0);
			}
		}
	});

	//append icon to handle
	var handleHelper = scrollbar.find(".ui-slider-handle").mousedown(
			function() {
				scrollbar.width(handleHelper.width());	}).mouseup(
						function() {
							scrollbar.width("100%");}).append("<span class='ui-icon ui-icon-grip-dotted-vertical'></span>")	
							.wrap("<div class='ui-handle-helper-parent'></div>").parent();

	//change overflow to hidden now that slider handles the scrolling
	scrollPane.css("overflow", "hidden");

	//size scrollbar and handle proportionally to scroll distance
	function sizeScrollbar() {
		var remainder = scrollContent.width() - scrollPane.width();
		var proportion = remainder / scrollContent.width();
		var handleSize = scrollPane.width()- (proportion * scrollPane.width());
		scrollbar.find(".ui-slider-handle").css({
			width : handleSize,	"margin-left" : -handleSize / 2
		});
		handleHelper.width("").width(scrollbar.width() - handleSize);
	}

	//reset slider value based on scroll content position
	function resetValue() {
		var remainder = scrollPane.width() - scrollContent.width();
		var leftVal = scrollContent.css("margin-left") === "auto" ? 0: parseInt(scrollContent.css("margin-left"));
		var percentage = Math.round(leftVal / remainder * 100);
		scrollbar.slider("value", percentage);
	}

	//if the slider is 100% and window gets larger, reveal content
	function reflowContent() {
		var showing = scrollContent.width()+ parseInt(scrollContent.css("margin-left"), 10);
		var gap = scrollPane.width() - showing;
		if (gap > 0) {
			scrollContent.css("margin-left", parseInt(scrollContent.css("margin-left"), 10));
		}
	}
	//change handle position on window resize
	$(window).resize(function() {
		resetValue();
		sizeScrollbar();
		reflowContent();
	});
	//init scrollbar size
	setTimeout(sizeScrollbar, 10);//safari wants a timeout
});

function Open_modal(commentCode, title, content, storeName) {
	document.querySelector("#modal_title" + commentCode).innerHTML = storeName+ "(" + title + ")";
	document.querySelector("#here" + commentCode).innerHTML = content;
}
</script>
<style type="text/css">
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
	-webkit-transform: perspective(1400px)	matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1);
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

#header {
	background-image: url(images/main.jpg);
}

.scroll-pane {
	overflow: auto;
	width: 100%;
	float: left;
}

.scroll-content {
	width: 6000px;
	float: left;
	background-color: none;
	border-color: none;
}

.scroll-content-item {
	width: 300px;
	height: 300px;
	float: left;
	margin: 0;
	font-size: 2em;
	text-align: center;
	background: gray;
}
/* 스크롤위치위아래 */
.scroll-bar-wrap {
	background: #323232;
	clear: left;
	padding: 0 0 0 0;
	margin: 0 -1px -1px -1px;
}

.scroll-bar-wrap .ui-slider {
	background: #323232;
	border: 0;
	height: 2em;
	margin: 0 auto;
}
/* 스크롤 위치 */
.scroll-bar-wrap .ui-handle-helper-parent {
	position: relative;
	width: 100%;
	height: 100%;
	margin: 0 auto;
	background: #323232;
}

.scroll-bar-wrap .ui-slider-handle {
	top: .2em;
	height: 1.5em;
	background: gray;
	border-color: gray;
}

.scroll-bar-wrap .ui-slider-handle .ui-icon {
	margin: 0 auto 0;
	position: relative;
	top: 50%;
	background: none;
}
</style>

</head>

<body class="homepage" bgcolor=#333323>

<c:url value="<%=request.getContextPath()%>" var="cp"></c:url>

<div id="header-wrapper">
	<div id="header" class="container">
		<h1 id="logo"><a href="<%=request.getContextPath()%>">JooJooclub</a></h1>
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
				<li><a class="icon fa-home"			href="<%=request.getContextPath()%>/"><span>Home</span></a></li>
				<li><a class="icon fa-retweet"		href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap"		href="<%=request.getContextPath()%>/review"><span>ReviewBoard</span></a></li>
				<li><a class="icon fa-bar-chart-o"	href="<%=request.getContextPath()%>/logout"><span>Logout</span></a>
			</c:if>
			
			<c:if test="${empty loginOwner && empty loginUser }">
				<li><a class="icon fa-home"			href="<%=request.getContextPath()%>/"><span>Home</span></a></li>
				<li><a class="icon fa-bar-chart-o"	href="<%=request.getContextPath()%>/login"><span>Login</span></a>
				<li><a class="icon fa-cog"			href="<%=request.getContextPath()%>/join"><span>Join</span></a></li>
				<li><a class="icon fa-retweet"		href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap"		href="<%=request.getContextPath()%>/review"><span>ReviewBoard</span></a></li>
			</c:if>
			</ul>
		</nav>
		</div><!-- 헤더 메뉴 끝 -->

		<!-- 키워드 검색 부분 -->
		<div align="center">
		<c:url value="/main/keyword" var="action"></c:url>
		<form:form modelAttribute="category" method="post"	action="${action}">
			<table><tr>			
			<td width="800px"><form:input path="keyword" name="keyword"	placeholder="keyWord" type="search" maxlength="30" /></td>	
			<td><button type="submit" class="form-button-submit button "style="height: 45px">Search</button></td>
			</tr></table>
		</form:form>
		</div><!-- 키워드 검색 부분 끝 -->			
	</div><!-- 헤더 끝 -->
</div><!-- 헤더 래퍼 끝 -->


<!-- 헤더 바디 구분 띠 -->
<img src="images/bar.png" style="width: 100%">

<!-- 바디 시작 -->
<div id="features-wrapper">


<div id="content" class="container" style="background-color: #efefff">
		<div class="title"	style="margin: 0px; padding: 0px 0px 25px 41px; color: rgb(102, 102, 102); line-height: normal; overflow: visible; font-family: 돋움, Dotum; border-bottom-color: rgb(229, 229, 229); border-bottom-width: 1px; border-bottom-style: solid; position: relative; background-color: rgb(255, 255, 255);">
			<h2	style="margin: -11px 0px -6px; padding: 0px; font-size: 12px; position: relative;">
				<a name="skip_to_content"	style="margin: 0px; padding: 0px; color: rgb(65, 124, 1);">
				<img width="370" height="80" title="주주총회 청소년 보호정책"	style="margin: 0px; padding: 0px; 
				border: currentColor; border-image: none; color: rgb(102, 102, 102);"
				alt="주주총회 청소년 보호정책. 주주총회는 청소년 보호정책을 수립, 시행하고 있습니다."
				src="images/youth.png"></a>
			</h2>
			
		</div>
		<div 
			style="margin: 0px; padding: 40px 40px 45px; text-align: justify; color: rgb(102, 102, 102); line-height: normal; font-family: 돋움, Dotum; background-color: rgb(255, 255, 255);">
			<h3
				style="margin: 0px; padding: 0px; color: rgb(51, 51, 51); letter-spacing: -1px; font-family: 돋움, Dotum; font-size: 14px;">주주총회
				청소년 보호정책</h3>
			<p class="mt20"
				style="line-height: 18px; margin-top: 10px; position: relative;">
				주주총회는 청소년이 건전한 인격체로 성장할 수 있도록 하기 위하여 청소년
				보호정책을 수립, 시행하고 있습니다.<br>회사는 청소년들이 유해정보에 접근할 수 없도록 방지하고 있는 바, 본
				청소년 보호정책을 통하여 회사가 청소년보호를 위해 어떠한 조치를 취하고 있는지 알려드립니다.
			</p>
			<h4
				style="margin: 20px 0px 0px; padding: 0px; color: rgb(51, 51, 51); letter-spacing: -1px; font-weight: normal;">
				<span class="first_letter"
					style="margin: 0px; padding: 0px; font-weight: bold;">1.</span>&nbsp;유해정보에
				대한&nbsp;<strong style="margin: 0px; padding: 0px;">청소년접근제한
					및 관리조치</strong>
			</h4>
			<p class="depth1"
				style="line-height: 18px; margin-top: 10px; margin-left: 16px; position: relative;">회사는
				청소년이 아무런 제한장치 없이 청소년 유해정보에 노출되지 않도록 별도의 인증장치를 마련, 적용하며 청소년 유해정보가
				노출되지 않기 위한 예방차원의 조치를 강구합니다.</p>
			<h4
				style="margin: 20px 0px 0px; padding: 0px; color: rgb(51, 51, 51); letter-spacing: -1px; font-weight: normal;">
				<span class="first_letter"
					style="margin: 0px; padding: 0px; font-weight: bold;">2.</span>&nbsp;유해정보로부터의
				청소년보호를 위한&nbsp;<strong style="margin: 0px; padding: 0px;">업무
					담당자 교육 시행</strong>
			</h4>
			<p class="depth1"
				style="line-height: 18px; margin-top: 10px; margin-left: 16px; position: relative;">회사는
				정보통신업무 종사자를 대상으로 청소년보호 관련 법령 및 제재기준, 유해정보 발견시 대처방법, 위반사항 처리에 대한 보고절차
				등을 교육하고 있습니다.</p>
			<h4
				style="margin: 20px 0px 0px; padding: 0px; color: rgb(51, 51, 51); letter-spacing: -1px; font-weight: normal;">
				<span class="first_letter"
					style="margin: 0px; padding: 0px; font-weight: bold;">3.</span>&nbsp;유해정보로
				인한&nbsp;<strong style="margin: 0px; padding: 0px;">피해상담 및
					고충처리</strong>
			</h4>
			<p class="depth1"
				style="line-height: 18px; margin-top: 10px; margin-left: 16px; position: relative;">
				회사는 청소년 유해정보로 인한 피해상담 및 고충처리를 위한 전문인력을 배치하여 그 피해가 확산되지 않도록 하고
				있습니다.&nbsp;<br>이용자 분들께서는 하단에 명시한 "4. 주주총회 청소년보호 책임자 및 담당자의 소속,
				성명 및 연락처" 항을 참고하여 전화나 메일을 통하여 피해상담 및 고충처리를 요청할 수 있습니다.
			</p>
			<h4
				style="margin: 20px 0px 0px; padding: 0px; color: rgb(51, 51, 51); letter-spacing: -1px; font-weight: normal;">
				<span class="first_letter"
					style="margin: 0px; padding: 0px; font-weight: bold;">4.</span>&nbsp;주주총회
				청소년보호 책임자 및 담당자의 소속, 성명 및&nbsp;<strong
					style="margin: 0px; padding: 0px;">연락처</strong>
			</h4>
			<p class="depth1"
				style="line-height: 18px; margin-top: 10px; margin-left: 16px; position: relative;">주주총회는
				청소년들이 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다.</p>
			
		</div>
		<input type="hidden" id="policyCategory" value="youth_policy">
	</div>
</div>
<!-- 바디 끝 -->


<!-- Footer -->
<div>
	<div id="footer" class="container">
		<div align="center">
		<br> <br> 
		<a	href="<%=request.getContextPath()%>/footer/servicePolicy">이용약관</a> &nbsp; &nbsp; 
		<a	href="<%=request.getContextPath()%>/footer/privacyPolicy">개인정보보호방침</a>	&nbsp; &nbsp; 
		<a	href="<%=request.getContextPath()%>/footer/youthPolicy">청소년보호정책</a>	&nbsp; &nbsp; 
		<a	href="<%=request.getContextPath()%>/footer/helpCenter">고객센터</a> <br>
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
