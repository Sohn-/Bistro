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
	
 	window.onload=function(){
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
	});

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
							<form>
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

				<div id="tab2">
					<div id="footer" class="container" align="left">

						정보 수정 및 탈퇴<br>
						<form>
							<fieldset>

								
								
								
								
								<div style="font-style: normal; color: red;">
							<input id="userId" name="userId" title="Please provide your ID."
								value="${user.userId}" align="middle"> * <br> <input
								id="password" name="password"
								title="Please provide your password" value=" 비밀번호 변경"><br>
							<input id="password2" name="password2"
								title="Please provide your password2" value=" 비밀번호 변경 확인"><br>
							<input id="userName" name="userName"
								title="Please provide your userName" value="${user.userName}">
							*<br> <input id="userEmail" name="userEmail"
								title="Please provide your userEmail" value=" 이메일"><br>
							<input id="userPhone" name="userPhone"
								title="Please provide your userPhone" value=" 휴대전화 번호"><br>
						
								<input id="storeType" name="storeType"	title="Please provide your storeType" value=" 사업자 등록번호"><br>
										*는 수정할 수 없는 정보입니다.
									</div>

	<c:if test="${!empty loginUser }">
		${loginUser.userId }님 반갑습니다.
			<c:url value="/info/userInfo" var="url"></c:url>
			<a href="${url }"><input type="button" value="정보수정 및 탈퇴"> </a>
			
			<c:url value="/info/userInfo/coupon" var="url"></c:url>
			<a href="${url }"><input type="button" value="쿠폰 보기"> </a>
		
	</c:if>
	
	<c:if test="${!empty loginOwner}">
		
		${loginOwner.ownerId }님 반갑습니다.
		업주 정보 보기...
		<%-- <a href = "<%=request.getContextPath()%>/FrontServlet?cmd=AllTComment">게시판으로 이동가능</a><br><br> --%>
	</c:if>
	
	<c:if test="${empty loginUser }">
			<c:if test="${empty loginOwner }">
		로그인 해 주세요!
		<%-- <a href = "<%=request.getContextPath()%>/FrontServlet?cmd=AllTComment">게시판으로 이동가능</a><br><br> --%>
	
	</c:if>
	</c:if>
	


	<a href="update_u.jsp"><input type="button" name="button" value="수정하기"></a> 
	<a href="exit.jsp"><input type="button" name="button" value="회원탈퇴"></a>

							</fieldset>
						</form>

					</div>
				</div>


				<div id="tab3">


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

					
					<a href="update_u.jsp"><input type="button" name="button" value="새로운 이벤트 등록"> </a> 
					
					
				


				</div>

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
</body>
</html>
