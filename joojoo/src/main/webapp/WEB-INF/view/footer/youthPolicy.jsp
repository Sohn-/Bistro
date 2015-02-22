<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link type="text/css" rel="stylesheet" href="/css/design.css" media="all" />
<script type="text/javascript" src="/js/design.js"></script>


<title>LoginPage</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />


<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">


<!-- 버튼부트스트랩 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
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

#accordion-resizer {
	padding: 5px;
	width: 100%;
	height: 700px;
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

	$(function() {
		$("#accordion").accordion({
			event : "click hoverintent"
		});
	});

	$.event.special.hoverintent = {
		setup : function() {
			$(this).bind("mouseover", jQuery.event.special.hoverintent.handler);
		},
		teardown : function() {
			$(this).unbind("mouseover",
					jQuery.event.special.hoverintent.handler);
		},
		handler : function(event) {
			var currentX, currentY, timeout, args = arguments, target = $(event.target), previousX = event.pageX, previousY = event.pageY;

			function track(event) {
				currentX = event.pageX;
				currentY = event.pageY;
			}
			;

			function clear() {
				target.unbind("mousemove", track).unbind("mouseout", clear);
				clearTimeout(timeout);
			}

			function handler() {
				var prop, orig = event;

				if ((Math.abs(previousX - currentX) + Math.abs(previousY
						- currentY)) < 7) {
					clear();

					event = $.Event("hoverintent");
					for (prop in orig) {
						if (!(prop in event)) {
							event[prop] = orig[prop];
						}
					}
					// Prevent accessing the original event since the new event
					// is fired asynchronously and the old event is no longer
					// usable (#6028)
					delete event.originalEvent;

					target.trigger(event);
				} else {
					previousX = currentX;
					previousY = currentY;
					timeout = setTimeout(handler, 100);
				}
			}

			timeout = setTimeout(handler, 100);
			target.bind({
				mousemove : track,
				mouseout : clear
			});
		}
	};
</script>
</head>

<body class="homepage" bgcolor=#f7efff>

	<div id="header-wrapper">
		<div id="header" class="container"
			style="background-image: url(images/main.jpg)">
			<!-- Logo -->
			<h1 id="logo">
				<a href="index.html">JooJooclub</a>
			</h1>
			<p>Welcom To JooJooClub</p>
			<div align="right">
				<nav id="nav">
				<ul>
					<li><a class="icon fa-home" href="index.html"><span>Home</span></a></li>
					<li><a href="" class="icon fa-bar-chart-o"><span>Login</span></a>
					<li><a class="icon fa-cog" href="left-sidebar.html"><span>Join</span></a></li>
					<li><a class="icon fa-retweet" href="right-sidebar.html"><span>MyPage</span></a></li>
					<li><a class="icon fa-sitemap" href="no-sidebar.html"><span>Cart</span></a></li>
				</ul>
				</nav>
			</div>
		</div>		
	</div>


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

	<!-- Footer -->
	<div id="footer-wrapper">
		<div id="footer" class="container">
			<div align="center">
				<a href="">이용약관</a> &nbsp; &nbsp; 
				<a href="">개인정보보호방침</a> &nbsp;	&nbsp; 
				<a href="">청소년보호정책</a> &nbsp; &nbsp; 
				<a href="">고객센터</a>
			</div>
		</div>
	</div>
	

</body>
</html>