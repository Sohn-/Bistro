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

.policy {
    background-color:white;
    /* color:white; */
    margin:50px;
    padding:50px;
    azimuth: left;
	text-align: left;
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
			<td width="800px"><form:input path="keyword" name="keyword"	placeholder="keyWord" type="text" maxlength="30" /></td>	
			<td><button type="submit" class="form-button-submit button "style="height: 45px">Search</button></td>
			</tr></table>
		</form:form>
		</div><!-- 키워드 검색 부분 끝 -->			
	</div><!-- 헤더 끝 -->



<!-- 헤더 바디 구분 띠 -->
<img src="images/bar.png" style="width: 100%">

<div   class="policy" style="position: static; padding-left: 100px; padding-right: 100px">
	<div align="left">
		<div align="center"><h1>개인정보처리방침</h1></div>				
		
		<p align="left">			
		
		<div align="left">
		<p align="left">	<em class="emphasis">('http://www.joojoo.com'이하'JooJooCllub')</em>
			은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한
			이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.</p>
		</div>
		
		
		<p align="left">
			<em class="emphasis"><Bistro>('JooJooCllub')</em> 
			은(는) 회사는	개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.
		</p>
		
		<p class="ls2" align="left">
			○ 본 방침은부터 
			<em class="emphasis">2015</em>년 
			<em class="emphasis">2</em>월
			<em class="emphasis">20</em>일부터 시행됩니다.
		</p>		
		<br>
		
		<p class='lh6 bs4'>
			<strong>
			1. 개인정보의 처리 목적 
			<em class="emphasis">('http://www.joojoo.com'이하'JooJooCllub')</em>
			은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의
			용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.
			</strong>
		</p>
		
		<p class="ls2">가. 홈페이지 회원가입 및 관리</p>
		<p class="ls2">회원 가입의사 확인, 회원자격 유지·관리, 분쟁 조정을 위한 기록 보존 등을 목적으로개인정보를 처리합니다.</p>
		<br>
		
		<p class="ls2">나. 민원사무 처리</p>
		<p class="ls2">사실조사를 위한 연락·통지 등을 목적으로 개인정보를 처리합니다.</p>
		<br>
		
		<p class="ls2">다. 재화 또는 서비스 제공</p>
		<p class="ls2">서비스 제공, 콘텐츠 제공 등을 목적으로 개인정보를 처리합니다.</p>
		<br>
		
		<p class="ls2">라. 마케팅 및 광고에의 활용</p>
		<p class="ls2">서비스의 유효성 확인 등을 목적으로 개인정보를 처리합니다.</p>
		<br>
		
		<p class='lh6 bs4'>	<strong>2. 개인정보 파일 현황<br>
			</strong>	
		</p>
		
		<p class='ls2'>
			1. 개인정보 파일명 : UserDB<br> 
			- 개인정보 항목 : 비밀번호, 로그인ID, 휴대전화번호, 이름, 이메일, 서비스 이용 기록, 접속 로그<br> 
			- 수집방법 : 홈페이지<br> 
			- 보유근거 : Service제공<br> 
			- 보유기간 : 준영구<br> 
			- 관련법령 :
		</p>
		
		<br>
		<br>
		<p class='lh6 bs4'>
		<strong>3. 개인정보처리 위탁</strong><br>
		① <em class="emphasis">('JooJooCllub')</em>
		은(는) 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
		</p>
		② <em class="emphasis">('http://www.joojoo.com'이하'JooJooCllub')</em>
		은(는) 위탁계약 체결시 개인정보 보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지,	기술적․관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리․감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에	명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.<br>
		<br>
		③ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.
		<br>
		<p class='lh6 bs4'>
		<strong>4. 정보주체의 권리,의무 및 그 행사방법 이용자는 개인정보주체로서 다음과 같은 권리를	행사할 수 있습니다.</strong>
		</p>
		
		<p class='ls2'>
		① 정보주체는 Bistro(‘http://www.joojoo.com’이하 ‘JooJooCllub) 에 대해 언제든지 다음 	각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.<br>
			1. 개인정보 열람요구<br>
			2. 오류 등이 있을 경우 정정 요구<br>
			3. 삭제요구<br>
			4. 처리정지 요구<br>
		
		② 제1항에 따른 권리 행사는Bistro(‘http://www.joojoo.com’이하	‘JooJooCllub) 에 대해 개인정보 보호법 시행규칙 별지 제8호 서식에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며
			<기관 /회사명>(‘사이트URL’이하 ‘사이트명) 은(는) 이에 대해 지체 없이 조치하겠습니다.<br>
		③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 <기관 /회사명>(‘사이트URL’이하‘사이트명) 은(는) 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.<br>
		④ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우	개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.
		</p>
		<br>
		
		<p class='lh6 bs4'>
			<strong>5. 처리하는 개인정보의 항목 작성 </strong><br> 
			① <em class="emphasis">('http://www.joojoo.com'이하'JooJooCllub')</em>
			은(는) 다음의 개인정보 항목을 처리하고 있습니다.
		</p>
		
		<p class='ls2'>
			1
			<홈페이지 회원가입 및 관리>
			<br>
			- 필수항목 : 비밀번호, 로그인ID, 휴대전화번호, 이름, 이메일, 쿠키, 접속 로그<br>
			- 선택항목 : 
		</p>
		<br>
		
		<p class='lh6 bs4'>
			<strong>
			6. 개인정보의 파기
			<em class="emphasis">('JooJooCllub')</em>
			은(는) 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.
			</strong>
		</p>
		
		<p class='ls2'>
			-파기절차<br>
			이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련
			법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는
			다른 목적으로 이용되지 않습니다.</br>-파기기한</br>이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터
			5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는
			개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.
		</p>
		
		<p class='ls2'>
			-파기방법<br>
			전자적 파일 형태의 정보는 기록을 재생할 수 없는 기술적 방법을 사용합니다.
		</p>
		<br>
		
		
		<p class='lh6 bs4'>
			<strong>7. 개인정보의 안전성 확보 조치 
			<em class="emphasis">('JooJooCllub')</em>
			은(는) 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.
			</strong>
		</p>
		
		<p class='ls2'>
			1. 개인정보 취급 직원의 최소화 및 교육<br> 
			개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.<br><br>
			2. 개인정보의 암호화<br> 
			이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한	데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.<br><br>
			3. 개인정보에 대한 접근 제한<br> 
			개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.<br><br>
		</p>	
		</div>		
	</div>
</div>
</div>
</body>

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
 