<%@page import="java.util.List"%>
<%@page import="joojoo.entity.All"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>MyPage</title>


<!--  //if empty 그거 써서...userId 가 empty가 아니면 인클루드... 유저면 member_u
            업주면 member_o -->

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!-- 버튼부트스트랩 -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style-1000px.css">
<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/style-desktop.css">


<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
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
	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	
    $(":checked").wrap("<span style='background-color:red'>");
 
 
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
	 document.updateForm.action="../info/user/update";
	 document.updateForm.submit();
	 }
	if(sub==2){
	 document.updateForm.action="../info/member/delete";
	 document.updateForm.submit();
	}
	
	}

	/* function Check_user(f) {
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

	function Check_owner(f) {
		if (document.form2.ownerPassword.value == ""
				|| document.form2.ownerId.value == "") {
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
	
	function wishListSubmit(sub){
		var arr = $('input[name=wishListCheckBox]:checked').serializeArray().map(function(item)
				{ return item.value });
		
		var form = document.getElementById("wishListForm");
		form.checked_wishListCodes.value = arr;
		alert(form.checked_wishListCodes.value);
		
		if(sub==1){
			
			if(arr != ""){
		
				form.action="../info/user/wishList/delete"; 
				form.submit();
			}	
			else{
				alert("삭제할 항목을 선택해 주세요!");
			}
			 
		
		 }
		//즉시 구매하면
		if(sub==2){
			
			if(arr != ""){
				
				form.action="../info/user/wishList/buy"; 
				form.submit();
			}	
			else{
				alert("구매할 항목을 선택해 주세요!");
			}
			
			
			
		}
		}
	
	
	function selectChkBox(frm) {
		
		var sum = 0;
		var count = frm.wishListCheckBox.length;
		var currentChance = frm.currentChance.value;
		var afterChance = frm.afterChance.value;
		  for(var i=0; i < count; i++ ){
		       if( frm.wishListCheckBox[i].checked == true ){
		    	
			    sum += 1; 
			   
		       }
		       
		   }
		  
		  frm.wishListCount.value = sum;  
		  frm.afterChance.value= currentChance-sum; 
		 
		}

	
	
</script>





<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
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
	background-image: url(../images/main.jpg);
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
	<div id="header-wrapper" style="background-image: url(../images/main.jpg)">

		<div id="header" class="container">

			<!-- Logo -->
			<h1 id="logo">
				<a href="<%=request.getContextPath()%>/main">JooJooclub</a>
			</h1>
			<p>Welcom To JooJooClub</p>
			<div align="right">
				<nav id="nav">
				<ul>
				<li><a class="icon fa-home"			href="<%=request.getContextPath()%>/"><span>Home</span></a></li>
				<li><a class="icon fa-retweet"		href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap"		href="<%=request.getContextPath()%>/review"><span>ReviewBoard</span></a></li>
				<li><a class="icon fa-bar-chart-o"	href="<%=request.getContextPath()%>/logout"><span>Logout</span></a>
				</ul>
				</nav>
			</div>
		</div>
	</div>
	
	   <img  src="../images/bar.png" style="width: 100%">
 <div id="features-wrapper">
      <section id="features" class="container"> 

	<div id="tabs" style="font-family:'Jeju Gothic', serif; ">
	
		
		<ul>
			<li><a href="#tab1">정보수정 및 탈퇴</a></li>
			<li><a href="#tab2">장바구니</a></li>
			<li><a href="#tab3">나의 쿠폰</a></li>

		</ul>
		
		
		<div id="tab1">
			<div id="footer" class="container" align="left">

				회원정보 수정 및 탈퇴 <br>
				<form:form  modelAttribute="updateUser" method="post" action="${action} " name="updateForm" id="updateForm" > 
					<fieldset>

						<div style="font-style: normal; color: red;">
							<form:input disabled="true" path="userId" id="userId" type="text" required="true" value="${loginUser.userId }" style="width: 40%;"/>
							<form:input type="hidden" value="${loginUser.userId}" path="userId" required="true"/><br>
							
							<form:input path="userPassword" id="pass" name="pass2" type="password" required="true" value="${loginUser.userPassword }" style="width: 40%;"/>
								
							<input type="password" id="pass2" name="pass2"  style="width: 40%;" required/><br>
							
							<form:input disabled="true" path="userName" id="userName" type="text" required="true" value="${loginUser.userName }" style="width: 40%;"/>
							<form:input type="hidden" value="${loginUser.userName}" path="userName" required="true"/><br>	
								
								
							*<br>
							<form:input path="userMail" id="userMail" type="email" required="true" value="${loginUser.userMail }" style="width: 40%;"/>
							<form:input path="userPhone" id="userPhone" type="text" required="true" value="${loginUser.userPhone }" style="width: 40%;"/>
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

			<form:form method="get" modelAttribute="wishList" action="${action} " name="wishListForm" id="wishListForm" > 
			<input type="hidden" name="checked_wishListCodes"/>
			<table style="width: 100%">
				<tr>
					<th>상호명</th>
					<th>글제목</th>
					<th>선택</th>
									
				</tr>
				
				<c:forEach items="${wishList }" var="wishList">
	
					<tr>
					<td><c:out value="${wishList.storeName}"></c:out></td>
					<td><c:out value="${wishList.title}"></c:out></td>
					<%-- <td id="hd" hidden><c:out value="${wishList.wishListCode}"/></td> --%>
					
					<%-- <td>
						<c:url value="/review?commentCode=${rview.commentCode}" var="url"></c:url>
					<a href="${url }">${rview.title }</a></td> --%>
					<td><input type="checkbox"  onClick="selectChkBox(this.form);" name="wishListCheckBox" value="${wishList.wishListCode}"/></td>
					
			
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
				<%-- <td><c:out value="${wishList.storeName}"></c:out></td> --%>
					<td><input type="text" value="0" name="wishListCount" size="20" readonly /></td>

					<td><input type="text" value="${loginUser.chance }" name="currentChance" size="20" readonly /></td>
					<td><input type="text" value="${loginUser.chance }" name="afterChance" size="20" readonly /></td>
				</tr>
				
			</table>
			
			<input type="button" onclick="wishListSubmit(1)" value="장바구니에서 삭제"/>
			
			<input type="button" onclick="wishListSubmit(2)" value="즉시구매" >
			<a href="update_u.jsp"><input type="button" name="button" value="쿠폰 검색하러 가기"></a>
			</form:form>
			
			
		</div>

		<div id="tab3">
			<div id="footer" class="container" align="left">
				미사용 쿠폰
				<table style="width: 90%">
				<tr>
					<th>상호명</th>
					<th>요약</th>
					<th>쿠폰코드</th>
					<th>쿠폰확인</th>					
				</tr>
				
				
				<c:forEach items="${nonUsedCoupons }" var="nonUsedCoupon" varStatus="status">
				<tr>
					<td><c:out value="${nonUsedCoupon.storeName}"></c:out></td>
					<td><c:out value="${nonUsedCoupon.title}"></c:out></td>
					<td><c:out value="${nonUsedCoupon.couponCode }"></c:out></td>
					<td>
					
					<input type="button" name="button"value="쿠폰 상세 보기" id="nonUsedCoupon${status.current.couponCode }" data-toggle="modal" data-target="#myModal${status.current.couponCode }">
					
					<%-- <button id="nonUsedCoupon${status.current.couponCode }" data-toggle="modal" data-target="#myModal${status.current.couponCode }">
					쿠폰 상세 보기</button> --%> </td>				
				</tr>
				</c:forEach>
				
				
			</table>
			
			<form name=usedCouponForm method=get action="../review/write">
			
				사용쿠폰
				<table style="width: 90%">
				<tr>
					<th>상호명</th>
					<th>요약</th>
					<th>쿠폰코드</th>
					<th>후기 작성 및 확인</th>					
				</tr>
				
				<c:forEach items="${usedCoupons }" var="usedCoupon">
				<tr>
					<td><c:out value="${usedCoupon.storeName}"></c:out></td>
					<td><c:out value="${usedCoupon.title}"></c:out></td>
					<td><c:out value="${usedCoupon.couponCode }"></c:out></td>
					
		
					<td><input type="submit" name="button"value="후기작성하기"></td>	
					<td hidden><input type="text" name="storeName" value="${usedCoupon.storeName }"></td>
					<td hidden><input type="number" name="storeCode" value="${usedCoupon.storeCode }"></td>
								
				</tr>
				</c:forEach>
				
				
			</table>
			
			
			
			
			</form>
				환불 쿠폰
				<table style="width: 90%">
				<tr>
					<th>상호명</th>
					<th>요약</th>
					<th>쿠폰코드</th>
					<th>환불정보</th>					
				</tr>
				
				<c:forEach items="${refundCoupons }" var="refundCoupon">
				<tr>
					<td><c:out value="${refundCoupon.storeName}"></c:out></td>
					<td><c:out value="${refundCoupon.title}"></c:out></td>
					<td><c:out value="${refundCoupon.couponCode }"></c:out></td>
					<td><a href="update_u.jsp"><input type="button" name="button"value="쿠폰상세정보"></a> </td>				
				</tr>
				</c:forEach>
			</table>
				기간만료 사용불가 쿠폰
				<table style="width: 90%">
				<tr>
					<th>상호명</th>
					<th>요약</th>
					<th>쿠폰코드</th>
					<th>만료정보</th>					
				</tr>
				<c:forEach items="${timeOverCoupons }" var="timeOverCoupon">
				<tr>
					<td><c:out value="${timeOverCoupon.storeName}"></c:out></td>
					<td><c:out value="${timeOverCoupon.title}"></c:out></td>
					<td><c:out value="${timeOverCoupon.couponCode }"></c:out></td>
					<td><a href="update_u.jsp"><input type="button" name="button"value="쿠폰상세정보"></a> </td>				
				</tr>
				</c:forEach>
			</table>
			</div>
		</div>
		
		
		<!-- 아직 사용 안한 쿠폰 상세 정보 모달!! -->
		<c:forEach items="${nonUsedCoupons}" var="event" varStatus="status">
		<div class="modal fade" id="myModal${status.current.couponCode }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog"><div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"	id="modal_title${status.current.couponCode }">미사용 쿠폰 상세보기</h4>
				</div>
				<!-- 모달 바디 -->
				<div class="modal-body" id="here${status.current.commentCode }">
				<c:url value="/info/user/coupon/refund" var="action"></c:url>
				<form:form modelAttribute="nonUsedCoupon${status.count }" method="post" action="${action}" id="form3" name="form3">
				<fmt:formatDate value="${status.current.startDate}" pattern="20yy년 MM월 dd일 HH시 mm분 ss초" var="startDate"/>
				<fmt:formatDate value="${status.current.endDate}" pattern="20yy년 MM월 dd일 HH시 mm분 ss초" var="endDate"/>
					<fieldset>	
						<div style="font-style: normal; color: black;">
							쿠폰 코드
							<input type="text" value="${status.current.couponCode }" readonly/>
							이벤트 제목
							<input type="text" value="${status.current.title }" align="middle"  readonly/><br>
							이벤트 내용
							<input type="text" value="${status.current.content }"  readonly><br>
							이벤트 시작 시간<br>
							<input id="startDate" value="${startDate }" readonly><br>
							이벤트 종료 시간<br>
							<input id="endDate" value="${endDate }" readonly><br>
							<input type="text" value="${status.current.storeName }" align="middle" readonly />
							서비스 종류	
							<input type="text" value="${status.current.serviceTypeName }" align="middle"  readonly /><br>
							인원
							<input type="text" value="${status.current.personsLevel}" align="middle"  readonly /><br>
							
						</div>
					</fieldset>
					
				</form:form>
				</div>
					<!-- 모달 푸터 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-warning btn-sm" data-dismiss="modal">닫기</button>
					</div>
					
				</div>	<!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div>
		</c:forEach>
		
		<!-- 아직 사용 안한 쿠폰 모달 끝 -->
		
		
		
		
		</div>
		</section>
		</div>
</body>
</html>
