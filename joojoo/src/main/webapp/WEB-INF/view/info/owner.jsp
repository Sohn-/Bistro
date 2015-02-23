<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>
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
<link rel="stylesheet" href="css/style-1000px.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-desktop.css">
<link rel="stylesheet"	href="http://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
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


#header {
	background-image: url(images/main.jpg);
}

fieldset div {
	margin-bottom: 2em;
}

</style>
<script>
	$(function() {
		$("#tabs").tabs(
				/* {
			active : 2
			} */
				);
	});

	$(function() {
		var tooltips = $("[title]").tooltip({
			position : {
				my : "left top",
				at : "right+5 top-5"
			}
		});
	});
	
<%--  	window.onload=function(){
		var xhr = new XMLHttpRequest();
		
		document.querySelector("#btn_update_store")
		.addEventListener("click", function(){
			xhr.onreadystatechange=function(){
				if(xhr.readyState==4 && xhr.status==200){
					document.querySelector("#store_table")
					.innerHTML=xhr.responseText+"<br>";
					xhr.re
				}
			}
			var url = "<%=request.getContextPath()%>/info/owner/update_store";
			xhr.open("get", url, true);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			/* var msg = document.querySelector("#comment").value; */
			
			xhr.send();
		}, false);
	} 
	
	$("#btn_update_store").bind("click", function(){
		$.ajax({
			
			url : "/info/owner/update_store",
			type : "get",
			data : 	[{"storeCode" : $("storeCode").val()},
					{"storeName" : $("storeName").val()},
					{"storeAdress" : $("#storeAdress").val()},
					{"storephone" : $("#storephone").val()},
					{"regionName" : $("#regionName").val()},
					{"ownerId" : $("#ownerId").val()},
					{"typeName" : $("#typeName").val()}],
			dataType: "json",
			success : function(data){
				$("#ajax").remove();
				alert(data);
				if(!data==null){
					alert("data가 null입니다.");
					return false;
				}
				var html='';
				html += '<input id="storeName" name="storeName" title="Please provide your storeName" value="상점이름" align="middle"> * <br>'; 
				html += '<input id="storeAddres" name="storeAddres" title="Please provide your storeAddres" value=" 상점주소"><br>'; 
				html += '<input id="storeExtraAddress"	name="storeExtraAddress" title="Please provide your storeExtraAddress"	value=" 상점나머지주소"><br>'; 
				html += '<input id="storeRegionName" name="storeRegionName" title="Please provide your storeRegionName"	value="지역"><br>'; 
				html += '<input id="storephone" name="storephone"	title="Please provide your storephone" value=" 상점전화번호"><br>';
				html += '<input id="ownerName" name="ownerName"	title="Please provide your ownerName" value="대표자"> *<br>';
				html += '<input id="storeType" name="storeType"	title="Please provide your storeType" value=" 업종"><br>';
				html += '*는 수정할 수 없는 정보입니다.';
				
				$("#ajax").after(html);
				
			}
		});
	}); --%>
	
<%-- 	var updateSuccess = <%=request.getParameter("updateSuccess")%>
	if(updateSuccess == true){
		alert("회원정보 수정 완료");
	}
	else if(updateSuccess == false){
		alert("회원정보 업데이트에 실패하였습니다.\n 문제가 계속될 경우 관리자에게 문의하세요.");
	} --%>
	 
		$(document).ready(function(){
			var updateSuccess = <%=request.getParameter("updateSuccess")%>
	    	if(updateSuccess == true){
	    		alert("회원정보 수정 완료");
	    	}
	    	else if(updateSuccess == false){
	    		alert("회원정보 업데이트에 실패하였습니다.\n 문제가 계속될 경우 관리자에게 문의하세요.");
	    	} 
			
			$("#mailDupCheck").click(function(){
				if($("#joinMail").val()==""){
					alert("이메일을 입력해 주세요.");
					$("#joinMail").focus();		
				}else{
					<c:url value="/join/mailCheck" var="mailchk"></c:url>
					var url = "${mailchk}?joinMail="+$("#joinMail").val();
					window.open(url, "_blank", "width=600, height=300, toolbar=no, menubar=no, resizable=no")
				}
			});
			
		    var password1 = document.getElementById('pass');
		    var password2 = document.getElementById('pass2');

		    var checkPasswordValidity = function() {
		        if (password1.value != password2.value) {
		            password1.setCustomValidity('비밀번호와 확인 비밀번호가 일치하지 않습니다.');
		        } else {
		            password1.setCustomValidity('');
		        }        
		    };
		    
		    password1.addEventListener('change', checkPasswordValidity, false);
		    password2.addEventListener('change', checkPasswordValidity, false);
	 
		    var form2 = document.getElementById('form2');
		    form2.addEventListener('submit', function() {
		    	if($("#checked2").val()==""){
					alert("이메일 중복체크 해주세요.");
					event.preventDefault();
				}
		         checkPasswordValidity();
		        if (!this.checkValidity()) {
		            event.preventDefault();
		           // updateErrorMessage();
		            password1.focus();
		        }else{
		        	 password1.setCustomValidity('');
		        } 
		    }, false);
		    
		   /*  var form3 = document.getElementById('form3');
		    form3.addEventListener('submit', function() {
		    	alert("check");
		    	/* if($("#checked2").val()==""){
					alert("이메일 중복체크 해주세요.");
					event.preventDefault();
				}
		         checkPasswordValidity();
		        if (!this.checkValidity()) {
		            event.preventDefault();
		           // updateErrorMessage();
		            password1.focus();
		        }else{
		        	 password1.setCustomValidity('');
		        }  
		        
		    }, false); */
		});
		
	/* 	function Open_modal(commentCode, title, content, storeName) {
			document.querySelector("#modal_title" + commentCode).innerHTML = storeName
					+ "(" + title + ")";
			document.querySelector("#here" + commentCode).innerHTML = content;
		} */

</script>
</head>
<c:url value="<%=request.getContextPath()%>" var="path"></c:url>
<body class="homepage" bgcolor=#333323>
	<div id="header-wrapper" style="background-image: url(images/main.jpg)">

		<div id="header" class="container">

			<!-- Logo -->
			<h1 id="logo">
				<a href="<%=request.getContextPath()%>/">JooJooclub</a>
			</h1>
			<p>Welcom To JooJooClub</p>
			<div align="right">
				<nav id="nav">
				<ul>
					<li><a class="icon fa-home"
						href="<%=request.getContextPath()%>/"><span>Home</span></a></li>
					<li><a class="icon fa-bar-chart-o"
						href="<%=request.getContextPath()%>/login"><span>Login</span></a>
					<li><a class="icon fa-cog"
						href="<%=request.getContextPath()%>/join"><span>Join</span></a></li>
					<li><a class="icon fa-retweet"
						href="<%=request.getContextPath()%>/info"><span>MyPage</span></a></li>
					<li><a class="icon fa-sitemap"
						href="<%=request.getContextPath()%>/info/cart"><span>Cart</span></a></li>
				</ul>
				</nav>
			</div>
		</div>
	</div>
   <img  src="images/bar.png" style="width: 100%">
 <div id="features-wrapper">
      <section id="features" class="container"> 
	<div id="tabs">
		<ul>
			<li><a href="#tab1">상점등록</a></li>
			<li><a href="#tab2">정보수정 및 탈퇴</a></li>
			<li><a href="#tab3">이벤트 글 관리</a></li>
			<li><a href="#tab4">쿠폰 관리</a></li>
		</ul>

		<div id="tab1">
			<div id="footer" class="container" align="left">
				<table>
					<tr>
						<td>나의상점목록
							<table id="store_table" style="width: 100%">
								<tr>
									<th>상호명</th>
									<th>수정</th>
									<th>삭제</th>
								</tr>
								<tr>
									<td>주주비어</td>
									<td><a href="<%=request.getContextPath()%>/info/owner/update_store"><input type="button" value="수정"></a></td>
									<td><a href="<%=request.getContextPath()%>/info/owner/delete_store"><input type="button" value="삭제"></a></td>
								</tr>
								<tr>
									<td>주주비어</td>
									<td><a href="update_u.jsp"><input type="button"
											id="btn_update_store" value="수정" onclick="ajaxStore();"></a>
									<td><a href="update_u.jsp"><input type="button"
											name="button" value="삭제"></a></td>
								</tr>
								<tr>
									<td>주주비어</td>
									<td><a href="update_u.jsp"><input type="button"
											name="button" value="수정"></a>
									<td><a href="update_u.jsp"><input type="button"
											name="button" value="삭제"></a></td>
								</tr>
							</table>
						</td>
						<td><br> 상점 등록 및 수정 <br>
							<form id="form1">
								<fieldset>

									<div id="ajax" style="font-style: normal; color: red;">
										<input id="storeName" name="storeName" title="Please provide your storeName" value="상점이름" align="middle"> * <br> 
										<input id="storeAddres" name="storeAddres" title="Please provide your storeAddres" value=" 상점주소"><br> 
										<input id="storeExtraAddress"	name="storeExtraAddress" title="Please provide your storeExtraAddress"	value=" 상점나머지주소"><br> 
										<input id="storeRegionName" name="storeRegionName" title="Please provide your storeRegionName"	value="지역"><br> 
										<input id="storephone" name="storephone"	title="Please provide your storephone" value=" 상점전화번호"><br>
										<input id="ownerName" name="ownerName"	title="Please provide your ownerName" value="대표자"> *<br>
										<input id="storeType" name="storeType"	title="Please provide your storeType" value=" 업종"><br>
										*는 수정할 수 없는 정보입니다.
									</div>
									<a href="update_u.jsp">
									<input type="button" name="button"	value="수정하기">
									</a> 
									
								</fieldset>
							</form>							
						</td>
					</tr>
					</table>
				</div>
		</div>
		
		<!-- 탭2 정보수정 및 탈퇴 -->
		<div id="tab2">
			<div id="footer" class="container" align="left">
				정보 수정 및 탈퇴<br>
				<c:url value="/info/update_owner" var="action"></c:url>
				<form:form modelAttribute="updateOwner" method="post" action="${action}" id="form2" name="form2">
					<fieldset>	
						<div style="font-style: normal; color: red;">
							*아이디
							<form:input path="ownerId" name="userId" 
								title="Please provide your ID."	align="middle" readonly="true"></form:input><br>
							비밀번호 
							<form:input path="ownerPassword" id="pass" type="password"
								title="Please provide your password" required="true"></form:input><br>
							<%-- <form:input path="checkPassword" id="pass2" value="${updateOwner.ownerPassword }"
								title="Please provide your password2"></form:input><br> --%>
							비밀번호확인
							<input type="password" id="pass2" name="pass2"  value="${updateOwner.ownerPassword }" required="true" /><br>
							*이름
							<form:input path="ownerName" name="ownerName"
								title="Please provide your userName" readonly="true"></form:input><br> <!-- value="${updateOwner.ownerName}" -->
							이메일
							<form:input path="ownerMail" id="joinMail" type="email"
								title="Please provide your userEmail" required="true"></form:input>
							<input type="button" value="중복확인" id="mailDupCheck"/><br>
							<input type="hidden" name="checked2" id="checked2"/><br>
							전화번호	
							<form:input path="ownerPhone" name="ownerPhone"
								title="Please provide your userPhone" required="true"></form:input><br>
							*사업자등록번호
							<form:input path="licenseNumber" name="licenseNumber"	title="Please provide your storeType" readonly="true"></form:input><br>
							*는 수정할 수 없는 정보입니다.
						</div>
					</fieldset>
					<input type="submit" value="수정하기"></input>
					<a href="exit.jsp"><input type="button" name="button" value="회원탈퇴"></a>
				</form:form>
			</div>
		</div>

		<!-- 탭3 이벤트 수정 및 등록-->
		<div id="tab3">
			<table style="width: 100%">
				<tr>
					<td>글제목</td>
					<td>요약</td>
					<td>글관리</td>
				</tr>
			<c:forEach items="${allEvent}" var="event" varStatus="status">
				<tr>
					<td>${event.title }</td>
					<td>${event.content }</td>
					<td><button id="event${status.current.commentCode }" data-toggle="modal" data-target="#myModal${status.current.commentCode }"
						<%-- onclick="Open_modal('${status.current.commentCode }','${status.current.title }', '${status.current.content }', '${status.current.storeName }');" --%>>
					수정하기</button> </td>
				</tr>
			</c:forEach>
			</table>				
			<input type="button" name="button" value="새로운 이벤트 등록">
		</div>
		
		<c:forEach items="${allEvent}" var="event" varStatus="status">
			<c:url	value="/info/update_event" var="action"></c:url>
		<div class="modal fade" id="myModal${status.current.commentCode }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"	aria-hidden="true">
			<div class="modal-dialog"><div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"	id="modal_title${status.current.commentCode }"></h4>
				</div>
				<!-- 모달 바디 -->
				<div class="modal-body" id="here${status.current.commentCode }">
				<c:url value="/info/update_event" var="action"></c:url>
				<form:form modelAttribute="event${status.count }" method="post" action="${action}" id="form3" name="form3">
					<fieldset>	
						<div style="font-style: normal; color: red;">
							<form:input path="commentCode" type="hidden" value="${status.current.commentCode }"></form:input>
							제목
							<form:input path="title" type="text"  maxLength="50" title="제목을 입력하세요." align="middle" required="true"></form:input><br>
							내용
							<form:input path="content" type="text" maxLength="300" title="내용을 입력하세요." required="true"></form:input><br>
							*이벤트 시작 시간
							<form:input path="startDate" type="datetime" title="Please provide your userName" readonly="true"></form:input><br>
							*이벤트 종료 시간
							<form:input path="endDate" type="datetime" title="Please provide your userEmail" readonly="true"></form:input><br>
							<form:input path="storeCode" type="hidden" value="${status.current.storeCode }"></form:input>
							서비스 종류	
							<form:select path="serviceTypeName" items="${serviceTypeNames }" title="서비스종류를 선택하세요." required="true"></form:select><br>
							인원	
							<form:select path="personsLevel" items="${personsLevels }" title="인원을 선택하세요." required="true"></form:select><br>
							*는 수정할 수 없는 정보입니다.
						</div>
					</fieldset>
					<input type="submit" class="btn btn-warning btn-sm" value="수정하기"/>
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
		
		<div id="tab4">
			<div id="footer" class="container" align="left">
				미사용 쿠폰
				<table style="width: 100%">
					<tr>
						<th>상호명</th>
						<th>요약</th>
						<th>쿠폰확인</th>
					</tr>
				<c:forEach items="${allCoupon}" var="coupon">
					<c:if test="${coupon.couponStatus eq '미사용'}">
					<tr>
						<td>${coupon.storeName }</td>
						<td>${coupon.content }</td>
						<td><a href="update_u.jsp"><input type="button"
								name="button" value="쿠폰상세정보"></a></td>
					</tr>
					</c:if>
				</c:forEach>
				</table>
				사용쿠폰
				<table style="width: 100%">
					<tr>
						<th>상호명</th>
						<th>요약</th>
						<th>후기 작성 및 확인</th>
					</tr>
					<c:forEach items="${allCoupon}" var="coupon">
					<c:if test="${coupon.couponStatus eq '사용'}">
					<tr>
						<td>${coupon.storeName }</td>
						<td>${coupon.content }</td>
						<td><a href="update_u.jsp"><input type="button"
								name="button" value="후기작성"></a></td>
					</tr>
					</c:if>
					</c:forEach>
				</table>
				환불 쿠폰
				<table style="width: 100%">
					<c:forEach items="${allCoupon}" var="coupon">
					<c:if test="${coupon.couponStatus eq '환불'}">
					<tr>
						<td>${coupon.storeName }</td>
						<td>${coupon.content }</td>
						<td><a href="update_u.jsp"><input type="button"
								name="button" value="쿠폰상세정보"></a></td>
					</tr>
					</c:if>
					</c:forEach>
				</table>
				기간만료 사용불가 쿠폰
				<table style="width: 100%">
				<c:forEach items="${allCoupon}" var="coupon">
					<c:if test="${coupon.couponStatus eq '기간만료'}">
					<tr>
						<td>${coupon.storeName }</td>
						<td>${coupon.content }</td>
					</tr>
					</c:if>
				</c:forEach>
				</table>
			</div>
		</div>
	</div>

					
	<!-- <a href="update_u.jsp"><input type="button" name="button" value="새로운 이벤트 등록"> </a>  -->
					
					
	
</body>
</html>
