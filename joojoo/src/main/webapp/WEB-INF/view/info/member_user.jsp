<%@page import="java.util.List"%>
<%@page import="joojoo.entity.All"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MyPage</title>

<!--  //if empty 그거 써서...userId 가 empty가 아니면 인클루드... 유저면 member_u
            업주면 member_o -->

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style-1000px.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/style-desktop.css">
<link rel="stylesheet"	href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>

<script type="text/javascript">
<%	int label = (int)request.getAttribute("label");%>
$(document).ready(function(){	
    $(":checked").wrap("<span style='background-color:red'>");    
    
    if($("#label").val()==2){
    	alert("2");
    	document.getElementById("tab2").focus();
    } 
});

	function mysubmit(sub){
	if(sub==1){
		if($("#password").val()==""){
			alert("비밀번호를 입력해주세요.");
			$("#password").focus();	
			
		}		
		if($("#password2").val()==""){
			alert("비밀번호 확인을 입력해주세요.");
			$("#password2").focus();		
		}
	 document.updateForm.action="../info/member/update";
	 document.updateForm.submit();
	 }
	if(sub==2){
	 document.updateForm.action="../info/member/delete";
	 document.updateForm.submit();
	}
	
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
			};

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

	/* function Open_event(f) {
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
	} */

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

/* 	function Open_event(f) {
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
	} */
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
			<li><a href="#tab1">정보수정 및 탈퇴</a></li>
			<li id ="tab2"><a href="#tab2">나의 장바구니</a></li>
			<li><a href="#tab3">나의 쿠폰</a></li>

		</ul>
		
		
		<div id="tab1">
			<div id="footer" class="container" align="left">

				회원정보 수정 및 탈퇴 <br>
				<form:form  modelAttribute="updateUser" method="post" action="${action} " name="updateForm" id="updateForm" > 
					<fieldset>

						<div style="font-style: normal; color: red;">
							<form:input disabled="true" path="userId" id="userId" type="text" required="true" value="${loginUser.userId }"/>
							<form:input type="hidden" value="${loginUser.userId}" path="userId" required="true"/><br>
							
							<form:input path="userPassword" id="pass" name="pass2" type="password" required="true" value="${loginUser.userPassword }"/>
								
							<input type="password" id="pass2" name="pass2" required/><br>
							
							<form:input disabled="true" path="userName" id="userName" type="text" required="true" value="${loginUser.userName }"/>
							<form:input type="hidden" value="${loginUser.userName}" path="userName" required="true"/><br>	
								
								
							*<br>
							<form:input path="userMail" id="userMail" type="email" required="true" value="${loginUser.userMail }"/>
							<form:input path="userPhone" id="userPhone" type="text" required="true" value="${loginUser.userPhone }"/>
							*는 수정할 수 없는 정보입니다.
							
							 <form:input type="hidden" value="${loginUser.chance}" path="chance" required="true"/><br>
						</div>

							
					
						<input type="button" onclick="mysubmit(1)" value="수정하기"/>
						<input type="button" onclick="mysubmit(2)" value="탈퇴하기"/>

					</fieldset>
				</form:form>
			</div>
		</div>
		
		
		<div id="tab2">

		





			<table style="width: 100%">
				<tr>
					<th>상호명</th>
					<th>글제목</th>
									
				</tr>
				<c:forEach items="${wishList }" var="wishList">
	
					<tr>
					<td><c:out value="${wishList.storeName}"></c:out></td>
					<td><c:out value="${wishList.title}"></c:out></td>
					<%-- <td>
						<c:url value="/review?commentCode=${rview.commentCode}" var="url"></c:url>
					<a href="${url }">${rview.title }</a></td> --%>
					<td><input type="checkbox"></td>	
					
			
					</tr>
		
				</c:forEach>
				
				
			</table>

			<br>

			<table id="t01">
				<tr>
					<th>선택한쿠폰 개수</th>
					<th>나의 별</th>
					<th>구매 결과 잔여 별</th>
				</tr>
				<tr>
					<td>3</td>
					<td>4</td>
					<td>1</td>
				</tr>
				
			</table>
			
			
			<a href="update_u.jsp"><input type="button" name="button" value="장바구니에서 삭제">  </a>
			<input type="hidden" id="label" value="2"/>
			<a href="update_u.jsp"><input type="button" name="button" value="즉시구매"> </a>
			<a href="update_u.jsp"><input type="button" name="button" value="쿠폰 검색하러 가기"></a>
			
			
			
		</div>

		<div id="tab3">
			<div id="footer" class="container" align="left">
				미사용 쿠폰
				<table style="width: 100%">
				<tr>
					<th>상호명</th>
					<th>요약</th>
					<th>쿠폰확인</th>					
				</tr>
				<tr>
					<td>주주비어</td>
					<td>서비스팍팍</td>	
					<td><a href="update_u.jsp"><input type="button" name="button"value="쿠폰상세정보"></a> </td>				
				</tr>
				<tr>
					<td>주주비어</td>
					<td>서비스팍팍</td>		
					<td><a href="update_u.jsp"><input type="button" name="button"value="쿠폰상세정보"></a> </td>				
				</tr>
				<tr>
					<td>주주비어</td>
					<td>서비스팍팍</td>	
					<td><a href="update_u.jsp"><input type="button" name="button"value="쿠폰상세정보"></a> </td>		
					<!-- <td><input type="checkbox" name="vehicle" value="Car" checked="checked"></td> -->						
				</tr>
			</table>
				사용쿠폰
				<table style="width: 100%">
				<tr>
					<th>상호명</th>
					<th>요약</th>
					<th>후기 작성 및 확인</th>					
				</tr>
				<tr>
					<td>주주비어</td>
					<td>서비스팍팍</td>	
					<td><a href="update_u.jsp"><input type="button" name="button"value="후기작성 및 확인"></a> </td>				
				</tr>
				<tr>
					<td>주주비어</td>
					<td>서비스팍팍</td>		
					<td><a href="update_u.jsp"><input type="button" name="button"value="후기작성 및 확인"></a></td>				
				</tr>
				<tr>
					<td>주주비어</td>
					<td>서비스팍팍</td>	
					<td><a href="update_u.jsp"><input type="button" name="button"value="후기작성 및 확인"></a></td>		
					<!-- <td><input type="checkbox" name="vehicle" value="Car" checked="checked"></td> -->						
				</tr>
			</table>
				환불 쿠폰
				<table style="width: 100%">
				<tr>
					<th>상호명</th>
					<th>요약</th>
					<th>환불정보</th>					
				</tr>
				<tr>
					<td>주주비어</td>
					<td>서비스팍팍</td>	
					<td><a href="update_u.jsp"><input type="button" name="button"value="환불정보확인"></a></td>				
				</tr>
				<tr>
					<td>주주비어</td>
					<td>서비스팍팍</td>		
					<td><a href="update_u.jsp"><input type="button" name="button"value="환불정보확인"></a></td>		
				</tr>
				<tr>
					<td>주주비어</td>
					<td>서비스팍팍</td>	
					<td><a href="update_u.jsp"><input type="button" name="button"value="환불정보확인"></a></td>		
					<!-- <td><input type="checkbox" name="vehicle" value="Car" checked="checked"></td> -->						
				</tr>
			</table>
				기간만료 사용불가 쿠폰
				<table style="width: 100%">
				<tr>
					<th>상호명</th>
					<th>요약</th>
					<th>만료정보</th>					
				</tr>
				<tr>
					<td>주주비어</td>
					<td>서비스팍팍</td>	
					<td>기간만료 쿠폰입니다.</td>
				</tr>
				<tr>
					<td>주주비어</td>
					<td>서비스팍팍</td>		
					<td>기간만료 쿠폰입니다.</td>		
				</tr>
				<tr>
					<td>주주비어</td>
					<td>서비스팍팍</td>	
					<td>기간만료 쿠폰입니다.</td>
					<!-- <td><input type="checkbox" name="vehicle" value="Car" checked="checked"></td> -->						
				</tr>
			</table>
			</div>
		</div>
		</div>
</body>
</html>
