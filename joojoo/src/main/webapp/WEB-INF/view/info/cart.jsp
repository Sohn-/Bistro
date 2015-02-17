<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>
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
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
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

<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

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

.ui-tooltip {
	width: 200px;
}

#accordion-resizer {
	padding: 5px;
	width: 100%;
	height: 700px;
}

#header {
	background-image: url(images/main.jpg);
}

.scroll-pane {
	overflow: auto;
	width: 99%;
	float: left;
}

.scroll-content {
	width: 6600px;
	float: left;
}

.scroll-content-item {
	width: 300px;
	height: 300px;
	float: left;
	margin: 10px;
	font-size: 3em;
	line-height: 96px;
	text-align: center;
}

.scroll-bar-wrap {
	clear: left;
	padding: 0 4px 0 2px;
	margin: 0 -1px -1px -1px;
}

.scroll-bar-wrap .ui-slider {
	background: none;
	border: 0;
	height: 2em;
	margin: 0 auto;
}

.scroll-bar-wrap .ui-handle-helper-parent {
	position: relative;
	width: 100%;
	height: 100%;
	margin: 0 auto;
}

.scroll-bar-wrap .ui-slider-handle {
	top: .2em;
	height: 1.5em;
}

.scroll-bar-wrap .ui-slider-handle .ui-icon {
	margin: -8px auto 0;
	position: relative;
	top: 50%;
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

.ui-tooltip {
	width: 210px;
}
</style>
<script>
	$(function() {
		var tooltips = $("[title]").tooltip({
			position : {
				my : "left top",
				at : "right+5 top-5"
			}
		});

	});
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

	$(function() {
		//scrollpane parts
		var scrollPane = $(".scroll-pane"), scrollContent = $(".scroll-content");

		//build slider
		var scrollbar = $(".scroll-bar")
				.slider(
						{
							slide : function(event, ui) {
								if (scrollContent.width() > scrollPane.width()) {
									scrollContent
											.css(
													"margin-left",
													Math
															.round(ui.value
																	/ 100
																	* (scrollPane
																			.width() - scrollContent
																			.width()))
															+ "px");
								} else {
									scrollContent.css("margin-left", 0);
								}
							}
						});

		//append icon to handle
		var handleHelper = scrollbar.find(".ui-slider-handle").mousedown(
				function() {
					scrollbar.width(handleHelper.width());
				}).mouseup(function() {
			scrollbar.width("100%");
		}).append("<span class='ui-icon ui-icon-grip-dotted-vertical'></span>")
				.wrap("<div class='ui-handle-helper-parent'></div>").parent();

		//change overflow to hidden now that slider handles the scrolling
		scrollPane.css("overflow", "hidden");

		//size scrollbar and handle proportionally to scroll distance
		function sizeScrollbar() {
			var remainder = scrollContent.width() - scrollPane.width();
			var proportion = remainder / scrollContent.width();
			var handleSize = scrollPane.width()
					- (proportion * scrollPane.width());
			scrollbar.find(".ui-slider-handle").css({
				width : handleSize,
				"margin-left" : -handleSize / 2
			});
			handleHelper.width("").width(scrollbar.width() - handleSize);
		}

		//reset slider value based on scroll content position
		function resetValue() {
			var remainder = scrollPane.width() - scrollContent.width();
			var leftVal = scrollContent.css("margin-left") === "auto" ? 0
					: parseInt(scrollContent.css("margin-left"));
			var percentage = Math.round(leftVal / remainder * 100);
			scrollbar.slider("value", percentage);
		}

		//if the slider is 100% and window gets larger, reveal content
		function reflowContent() {
			var showing = scrollContent.width()
					+ parseInt(scrollContent.css("margin-left"), 10);
			var gap = scrollPane.width() - showing;
			if (gap > 0) {
				scrollContent.css("margin-left", parseInt(scrollContent
						.css("margin-left"), 10)
						+ gap);
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

	$(function() {
		//scrollpane parts
		var scrollPane = $(".scroll-pane"), scrollContent = $(".scroll-content");

		//build slider
		var scrollbar = $(".scroll-bar")
				.slider(
						{
							slide : function(event, ui) {
								if (scrollContent.width() > scrollPane.width()) {
									scrollContent
											.css(
													"margin-left",
													Math
															.round(ui.value
																	/ 100
																	* (scrollPane
																			.width() - scrollContent
																			.width()))
															+ "px");
								} else {
									scrollContent.css("margin-left", 0);
								}
							}
						});

		//append icon to handle
		var handleHelper = scrollbar.find(".ui-slider-handle").mousedown(
				function() {
					scrollbar.width(handleHelper.width());
				}).mouseup(function() {
			scrollbar.width("100%");
		}).append("<span class='ui-icon ui-icon-grip-dotted-vertical'></span>")
				.wrap("<div class='ui-handle-helper-parent'></div>").parent();

		//change overflow to hidden now that slider handles the scrolling
		scrollPane.css("overflow", "hidden");

		//size scrollbar and handle proportionally to scroll distance
		function sizeScrollbar() {
			var remainder = scrollContent.width() - scrollPane.width();
			var proportion = remainder / scrollContent.width();
			var handleSize = scrollPane.width()
					- (proportion * scrollPane.width());
			scrollbar.find(".ui-slider-handle").css({
				width : handleSize,
				"margin-left" : -handleSize / 2
			});
			handleHelper.width("").width(scrollbar.width() - handleSize);
		}

		//reset slider value based on scroll content position
		function resetValue() {
			var remainder = scrollPane.width() - scrollContent.width();
			var leftVal = scrollContent.css("margin-left") === "auto" ? 0
					: parseInt(scrollContent.css("margin-left"));
			var percentage = Math.round(leftVal / remainder * 100);
			scrollbar.slider("value", percentage);
		}

		//if the slider is 100% and window gets larger, reveal content
		function reflowContent() {
			var showing = scrollContent.width()
					+ parseInt(scrollContent.css("margin-left"), 10);
			var gap = scrollPane.width() - showing;
			if (gap > 0) {
				scrollContent.css("margin-left", parseInt(scrollContent
						.css("margin-left"), 10)
						+ gap);
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
