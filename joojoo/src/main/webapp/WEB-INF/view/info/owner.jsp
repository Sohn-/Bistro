<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@page import="joojoo.entity.All"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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

<style type="text/css">
table, th, td {
	/* border: 1px solid black; */
	border-collapse: collapse;
	font-size: 14px;	
}

th, td {
	padding: 5px;
	text-align: left;
	 background-color: #F1F1C1; 
}

table#tab2 {
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
table.ex1 {width:98%; margin:0 auto; text-align:right; border-collapse:collapse; border-spacing : 0 ;}
.ex1 th, .ex1 td {padding:5px 10px}
.ex1 caption {font-weight:700; font-size:20px; padding:5px; color:#1BA6B2; text-align:center; margin-bottom:5px}
.ex1 thead th {background:gray; color:#fff; text-align:center; }
.ex1 tbody th {text-align:left; width:12%}
.ex1 tbody td.date1 {text-align:center; width:8%}
.ex1 tbody td.desc {text-align:left; width:35%}
.ex1 tbody tr.odd {background:#f9f9f9}
.ex1 tbody tr.odd th {background:#f2f2f2}
.ex1 tbody tr:hover {background:#F3F5BB}
.ex1 tbody tr:hover th {background:#F2F684; color:#1BA6B2}
.ex1 tfoot tr {border-top:6px solid #E9F7F6; color:#1BA6B2}
.ex1 tfoot th {text-align:center; padding-left:10px}

	input[type="button"],
	input[type="submit"],
	input[type="text"],
	input[type="password"],
	input[type="mail"]{
	font-family:'Jeju Gothic', serif;
	font-size: 14px;
	
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
	
	$(document).ready(function(){
			checkChange();
		
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
			
			/* var count = ${count};
			var storeDupCheck = new Array();
			var storeName= new Array();
			var storeCode = new Array();
			for(i=1; i<=count; i++){
				storeDupCheck[i] = "#storeDupCheck"+i;
				storeName[i] = "#storeName"+i;
				storeCode[i] = "#storeCode"+i;
			}
			for(i=1; i<=count; i++){
			$(storeDupCheck[i]).click(function(){
				if((storeName[i]).val()==""){
					alert("상호명을 입력해 주세요.");
					$(storeName[i]).focus();		
				}else{
					<c:url value="/info/storeNameCheck" var="storeNamechk"></c:url>
					var url = "${storeNamechk}?storeName="+$(storeName[i]).val()+"&storeCode="+$(storeCode[i]).val(); 
					window.open(url, "_blank", "width=600, height=300, toolbar=no, menubar=no, resizable=no");
				}
			});
			} */
			
			$("#storeDupCheck").click(function(){
				if(("#storeName").val()==""){
					alert("상호명을 입력해 주세요.");
					$("#storeName").focus();		
				}else{
					<c:url value="/info/storeNameCheck" var="storeNamechk"></c:url>
					var url = "${storeNamechk}?storeName="+$("#storeName").val()+"&storeCode="+$("#storeCode").val(); 
					window.open(url, "_blank", "width=600, height=300, toolbar=no, menubar=no, resizable=no");
				}
			});
			
			$("#insertStoreDupCheck ").click(function(){
				if($("#insertStoreName").val()==""){
					alert("상호명을 입력해 주세요.");
					$("#insertStoreName").focus();		
				}else{
					<c:url value="/info/insertStoreNameCheck" var="insertStoreNamechk"></c:url>
					var url = "${insertStoreNamechk}?insertStoreName="+$("#insertStoreName").val(); 
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
	 
		    var updateOwner = document.getElementById('updateOwner');
		    updateOwner.addEventListener('submit', function() {
		    	if($("#checked2").val()==""){
					alert("이메일 중복체크를 해주세요.");
					event.preventDefault();
					$("#joinMail").focus();
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
		    
		   /*  
		    var count = ${count};
		    var storeForm = new Array();
		   
		    
			for(var i=1; i<=count; i++){
				var idx = i.toString();
				var formId='storeForm'+idx;
		    	storeForm[i] = document.getElementById(formId);
			}
			
			for(var i=1; i<=count; i++){
		    storeForm[i].addEventListener('submit', function(){
		    	if($("#storechecked").val()==""){
					alert("상호명 중복체크를 해주세요.");
					event.preventDefault();
					$("#storeName").focus();
		    	}
			});
			} */
			
			var storeForm = document.getElementById('storeForm');
			storeForm.addEventListener('submit', function(){
		    	if($("#storechecked").val()==""){
					alert("상호명 중복체크를 해주세요.");
					event.preventDefault();
					$("#storeName").focus();
		    	}
			});
		    
		    var form_insertStore = document.getElementById('form_insertStore');
		    form_insertStore.addEventListener('submit', function() {
		    	if($("#insertStorechecked").val()==""){
					alert("상호명 중복체크를 해주세요.");
					event.preventDefault();
					$("#insertStoreName").focus();
		    	}
			}, false);
		    
		    
		});
	 function checkfile(){
	    var fname = document.getElementById('uploadStoreFile').value;
	    // 파일의 풀 경로를 fname에 변수에 저장  
	    var fext = fname.substr(fname.length-3).toLowerCase();
	    // 파일의 풀 경로에서 끝에서 3번째까지의 글자를 잘라 소문자로 변경 후 변수에 저장
	    if(fname == ""){
	    	alert("이미지를 등록하세요.");
	    	//$("#uploadStoreFile").focus();
	    	return false;
	    }
	    
	    else if(fext != 'jpg'){
	        alert("jpg파일만 가능합니다.");
	        return false;
	    }
	    return true;
	}
	
	/*  function checkfile2(count){
	    var fname = document.getElementById('storeFile'+count).value;
	    // 파일의 풀 경로를 fname에 변수에 저장  
	    var fext = fname.substr(fname.length-3).toLowerCase();
	    // 파일의 풀 경로에서 끝에서 3번째까지의 글자를 잘라 소문자로 변경 후 변수에 저장
	    if(fname == ""){
	    	alert("이미지를 등록하세요.");
	    	//$("#storeFile"+count).focus();
	    	return false;
	    }
	    
	    else if(fext != 'jpg'){
	        alert("jpg파일만 가능합니다.");
	        return false;
	    }
	    return true;
	}  */
	 
	 function checkfile3(){
		    var fname = document.getElementById('uploadEventFile').value;
		    // 파일의 풀 경로를 fname에 변수에 저장  
		    var fext = fname.substr(fname.length-3).toLowerCase();
		    // 파일의 풀 경로에서 끝에서 3번째까지의 글자를 잘라 소문자로 변경 후 변수에 저장
		    if(fname == ""){
		    	alert("이미지를 등록하세요.");
		    	//$("#uploadEventFile").focus();
		    	return false;
		    }
		    
		    else if(fext != 'jpg'){
		        alert("jpg파일만 가능합니다.");
		        return false;
		    }
		    return true;
		}
	 
	/*  function checkfile4(){
		    var fname = document.getElementById('eventFile').value;
		    // 파일의 풀 경로를 fname에 변수에 저장  
		    var fext = fname.substr(fname.length-3).toLowerCase();
		    // 파일의 풀 경로에서 끝에서 3번째까지의 글자를 잘라 소문자로 변경 후 변수에 저장
		    if(fname == ""){
		    	alert("이미지를 등록하세요.");
		    	//$("#eventFile").focus();
		    	return false;
		    }
		    
		    else if(fext != 'jpg'){
		        alert("jpg파일만 가능합니다.");
		        return false;
		    }
		    return true;
		} 
	  */
		
		function checkChange(){
			var updateOwner = <%=request.getParameter("updateOwner")%>;
			var updateEvent = <%=request.getParameter("updateEvent")%>;
			var insertEvent = <%=request.getParameter("insertEvent")%>;
			var updateStore = <%=request.getParameter("updateStore")%>;
			var insertStore = <%=request.getParameter("insertStore")%>;
			var deleteStore = <%=request.getParameter("deleteStore")%>;
			var useCoupon = <%=request.getParameter("useCoupon")%>;
			
			
	    	if(updateOwner == true){
	    		alert("회원정보 수정 완료");
	    	}
	    	else if(updateOwner == false){
	    		alert("회원정보 수정에 실패하였습니다.\n 문제가 계속될 경우 관리자에게 문의하세요.");
	    	}
	    	else if(updateEvent == true){
	    		alert("이벤트 수정 성공");
	    	}
	    	else if(updateEvent == false){
	    		alert("이벤트 수정에 실패하였습니다.\n 문제가 계속될 경우 관리자에게 문의하세요.");
	    	}
	    	else if(insertEvent == true){
	    		alert("이벤트 등록 성공");
	    	}
	    	else if(insertEvent == false){
	    		alert("이벤트 등록에 실패하였습니다.\n 문제가 계속될 경우 관리자에게 문의하세요.");
	    	}
	    	else if(updateStore == true){
	    		alert("가게 수정 성공");
	    	}
	    	else if(updateStore == false){
	    		alert("가게 수정에 실패하였습니다.\n 문제가 계속될 경우 관리자에게 문의하세요.");
	    	}
	    	else if(insertStore == true){
	    		alert("가게 등록 성공");
	    	}
	    	else if(insertStore == false){
	    		alert("가게 등록에 실패하였습니다.\n 문제가 계속될 경우 관리자에게 문의하세요.");
	    	}
	    	else if(deleteStore == true){
	    		alert("가게 삭제 성공");
	    	}
	    	else if(deleteStore == false){
	    		alert("가게 삭제에 실패하였습니다.\n 문제가 계속될 경우 관리자에게 문의하세요.");
	    	}
	    	else if(useCoupon == true){
	    		alert("쿠폰이 사용되었습니다.");
	    	}
	    	else if(useCoupon == false){
	    		alert("쿠폰 사용에 실패하였습니다.\n 문제가 계속될 경우 관리자에게 문의하세요.");
	    	}
	    	
		}
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
	<div id="tabs" style="font-family:'Jeju Gothic', serif;" >
		<ul>
			<li><a href="#tab1">상점등록</a></li>
			<li><a href="#tab2">정보수정</a></li>
			<li><a href="#tab3">이벤트 글 관리</a></li>
			<li><a href="#tab4">쿠폰 관리</a></li>
		</ul>

		<div id="tab1">
			<table style="width: 100%; border: 1px solid black; text-align: center;" class="ex1" >
			<%-- <caption>상점등록</caption> --%>
				<thead>
			<tr>
			<th scope="col" style="background-color: #F2CB61" align="center">상호명</th>
			<th scope="col" style="background-color: #F2CB61" align="center">수정</th>
			<th scope="col" style="background-color: #F2CB61" align="center">삭제</th>			
			</tr>
			</thead>
			<c:forEach items="${allStore}" var="store" varStatus="status" >
				<tr>
					<td align="center"><h3>${store.storeName }</h3></td>
					<td><button id="store${status.current.storeCode }" data-toggle="modal" data-target="#myModalstore${status.current.storeCode }"  class="btn btn-primary btn-lg btn-block">
					수정하기</button></td>
					<td><button id="dstore${status.current.storeCode }" data-toggle="modal" data-target="#dmyModalstore${status.current.storeCode }"  class="btn btn-primary btn-lg btn-block">
					삭제하기</button> </td>
				</tr>
			</c:forEach>
			
			</table>	<br>		
			
			<input type="button" id="newstore" data-toggle="modal" data-target="#newStoreModal"  class="btn btn-primary btn-lg btn-block" value="새로운 가게 등록"/> 
			<!-- <input   id="newstore" data-toggle="modal" data-target="#newStoreModal"  type="submit" value="새로운 가게 등록" align="left" size="15cm" class="btn btn-primary btn-lg btn-block">				
		 --></div>
		
		 <!-- ----------------------가게별 수정 모달-------------------------- -->
		<c:forEach items="${allStore}" var="store" varStatus="status">
		<div class="modal fade" id="myModalstore${status.current.storeCode }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"	aria-hidden="true">
			<div class="modal-dialog"><div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"	id="modal_title${status.current.storeCode }">가게정보 수정</h4>
				</div>
				<!-- 모달 바디 -->
				<div class="modal-body" id="here${status.current.storeCode }">
				<c:url value="/info/update_store" var="action"></c:url>
				<%-- <form:form modelAttribute="store${status.count }" method="post" action="${action}" id="updateStoreForm" name="updateStoreForm">
					<fieldset>	
						<div style="font-style: normal; width: 15cm" >
						<table border="">						
						
						<tr>
						<td style="text-align: left;" align="left">상호명</td>
						<td><form:input id="storeCode" path="storeCode" type="hidden" value="${status.current.storeCode }"></form:input>
						<form:input id="storeName" path="storeName" type="text"  onChange="javaScript:change();" maxLength="50" title="상호명을 입력하세요." align="middle" required="true"></form:input>
						</td>
						<td style="text-decoration:  red;">						
						<input type="button" value="중복확인" id="storeDupCheck"/>
							<input type="hidden" name="storechecked" id="storechecked"/><br>
						</td>
						</tr>
						<tr>
						<td style="text-align: left;" align="left">지역</td>
						<td><form:select path="regionName" items="${regionNames }" title="지역을 선택하세요." required="true"></form:select></td>
						<td></td>
						</tr>
						<tr>
						<td style="text-align: left;" align="left">상세주소</td>
						<td><form:input path="storeAdress" type="text" maxLength="300" title="상세주소를 입력하세요." required="true"></form:input></td>
						<td></td>
						</tr>
						<tr>
						<td style="text-align: left;" align="left">업주ID</td>
						<td><form:input path="ownerId" readonly="true"></form:input>
						<td>*</td>
						</tr>
						<tr>
						<td style="text-align: left;" align="left">가게번호</td>
						<td><form:input path="storePhone" type="text" maxLength="300" title="전화번호를 입력하세요." required="true"></form:input></td>
						<td><input type="button" value="V" id="mailDupCheck" class="btn btn-primary btn-sm "><input type="hidden" name="checked2" id="checked2"/>
						</tr>
						<tr>
						<td style="text-align: left;" align="left">업종</td>
						<td><form:select path="typeName" items="${typeNames }" title="업종을 선택하세요." required="true"></form:select></td>
						<td></td>
						</tr>
						<tr>
						<td style="text-align: left;" align="left">평점</td>
						<td><form:input path="starPoint" readonly="true"></form:input></td>
						<td>*</td>
						</tr>						
						</table>
						
						</div>		
											
					</fieldset>
						<div style="font-style: normal; color: red; width: 20cm" >
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					*는 수정할 수 없는 정보입니다.<br>
					<!-- <input id="ownerSubmit" type="submit" value="수정하기" width="20cm" ></input> -->
					</div>
					<!-- <button id="ownerExit" data-toggle="modal" data-target="#ownerExitModal">
					탈퇴하기</button>  -->
					</form:form> --%>
					
				<%-- enctype="multipart/form-data" --%>
				<form:form modelAttribute="store${status.count }" method="post" action="${action}" id="storeForm${status.count }" name="storeForm">
				<fmt:formatDate value="${status.current.startDate}" pattern="20yy년 MM월 dd일 HH시 mm분" var="startDate"/>
				<fmt:formatDate value="${status.current.endDate}" pattern="20yy년 MM월 dd일 HH시 mm분" var="endDate"/>
					<fieldset>	
						<div style="font-style: normal; color: red;">
							<form:input id="storeCode" path="storeCode" type="hidden" value="${status.current.storeCode }"></form:input>
							상호명(*내 가게의 상호명과 중복불가)
							<form:input id="storeName" path="storeName" type="text" maxLength="50" title="상호명을 입력하세요." align="middle" required="true"></form:input><br>				
							<input type="button" value="중복확인" id="storeDupCheck" name="storeDupCheck"/><br>
							<input type="hidden" name="storechecked" id="storechecked${status.count }"/><br>
							*이미지
							<img src="<%=request.getContextPath()%>/upload/storeImage${status.current.storeCode}.jpg"/>
							<!-- <input type="file" id="storeFile" name="storeFile"></input> -->
							지역
							<form:select path="regionName" items="${regionNames }" title="지역을 선택하세요." required="true"></form:select><br>
							상세주소
							<form:input path="storeAdress" type="text" maxLength="300" title="상세주소를 입력하세요." required="true"></form:input><br>
							*업주ID
							<form:input path="ownerId" readonly="true"></form:input><br>
							가게 전화번호
							<form:input path="storePhone" type="text" maxLength="300" title="전화번호를 입력하세요." required="true"></form:input><br>
							업종
							<form:select path="typeName" items="${typeNames }" title="업종을 선택하세요." required="true"></form:select><br>
							*평점
							<form:input path="starPoint" readonly="true"></form:input><br>
							*는 수정할 수 없는 정보입니다.
						</div>
					</fieldset>
					<input type="submit" class="btn btn-warning btn-sm" value="수정하기" />
				</form:form> 
				</div>
					<!-- 모달 푸터 -->
					<div class="modal-footer">
					<!-- <button id="ownerSubmit" type="submit"  width="20cm"  >수정하기</button> -->
					<button type="button" class="btn btn-warning btn-sm" data-dismiss="modal">닫기</button>
					</div>
					
				</div>	<!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div>
		</c:forEach>

		<!-- ----------------------가게별 수정 모달 끝-------------------------- -->
		
		
		<!-- ----------------------가게 등록 모달-------------------------- -->
		<div class="modal fade" id="newStoreModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"	aria-hidden="true">
			<div class="modal-dialog"><div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"	id="modal_title">가게 등록</h4>
				</div>
				<!-- 모달 바디 -->
				<div class="modal-body" id="here">
				<c:url value="/info/insert_store" var="action"></c:url>
				<form:form modelAttribute="insertStore" method="post" action="${action}" id="form_insertStore" name="form_insertStore" enctype="multipart/form-data">
					<fieldset>	
						<div style="font-style: normal; color: red;">
							<form:input id="ownerId" path="ownerId" type="hidden" value="${status.current.ownerId }"></form:input>
							상호명(*내 가게의 상호명과 중복불가)
							<form:input id="insertStoreName" path="storeName" type="text" maxLength="50" title="상호명을 입력하세요." align="middle" required="true"></form:input><br>				
							<input type="button" value="중복확인" id="insertStoreDupCheck"/><br>
							<input type="hidden" name="insertStorechecked" id="insertStorechecked"/><br>
							이미지
							<input type="file" id="uploadStoreFile" name="uploadStoreFile">
							지역
							<form:select path="regionName" items="${regionNames }" title="지역을 선택하세요." required="true"></form:select><br>
							상세주소
							<form:input path="storeAdress" type="text" maxLength="300" title="상세주소를 입력하세요." required="true"></form:input><br>
							가게 전화번호
							<form:input path="storePhone" type="text" maxLength="300" title="전화번호를 입력하세요." required="true"></form:input><br>
							업종
							<form:select path="typeName" items="${typeNames }" title="업종을 선택하세요." required="true"></form:select><br>
						</div>
					</fieldset> 
					<%-- <fieldset>	
						<div style="font-style: normal; width: 15cm" >
						<table border="">						
						
						<tr>
						<td style="text-align: left;" align="left">상호명</td>
						<td><form:input id="ownerId" path="ownerId" type="hidden" value="${status.current.ownerId }"></form:input>
						<form:input id="storeName" path="storeName" type="text"  onChange="javaScript:change();" maxLength="50" title="상호명을 입력하세요." align="middle" required="true"></form:input>
						</td>
						<td style="text-decoration:  red;">						
						<input type="button" value="V" id="storeDupCheck"/>
							<input type="hidden" name="storechecked" id="storechecked"/>
						</td>
						</tr>
						<tr>
						<td style="text-align: left;" align="left">지역</td>
						<td><form:select path="regionName" items="${regionNames }" title="지역을 선택하세요." required="true"></form:select></td>
						<td></td>
						</tr>
						<tr>
						<td style="text-align: left;" align="left">상세주소</td>
						<td><form:input path="storeAdress" type="text" maxLength="300" title="상세주소를 입력하세요." required="true"></form:input></td>
						<td></td>
						</tr>						
						<tr>
						<td style="text-align: left;" align="left">가게번호</td>
						<td><form:input path="storePhone" type="text" maxLength="300" title="전화번호를 입력하세요." required="true"></form:input></td>
						<td><input type="button" value="V" id="mailDupCheck" class="btn btn-primary btn-sm "><input type="hidden" name="checked2" id="checked2"/>
						</tr>
						<tr>
						<td style="text-align: left;" align="left">업종</td>
						<td><form:select path="typeName" items="${typeNames }" title="업종을 선택하세요." required="true"></form:select></td>
						<td></td>
						</tr>
						<tr>
						<td style="text-align: left;" align="left">평점</td>
						<td><form:input path="starPoint" readonly="true"></form:input></td>
						<td>*</td>
						</tr>						
						</table>
						
						</div>		
											
					</fieldset> --%>
					<input type="submit" class="btn btn-warning btn-sm" value="등록하기" onclick="return checkfile();"/>
				</form:form>
				</div>
					<!-- 모달 푸터 -->
					<div class="modal-footer">
					<!-- <button type="submit" class="btn btn-warning btn-sm">등록하기</button> -->
					<button type="button" class="btn btn-warning btn-sm" data-dismiss="modal">닫기</button>
					</div>
					
				</div>	<!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div>
		<!-- ----------------------가게 등록 모달 끝-------------------------- -->	
		
		
		<!-- ----------------------가게 삭제 모달-------------------------- -->
		<c:forEach items="${allStore}" var="deletestore" varStatus="status">
		<c:url value="/info/delete_store" var="url"></c:url>
		<div class="modal fade" id="dmyModalstore${status.current.storeCode }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"	aria-hidden="true">
			<div class="modal-dialog"><div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"	id="modal_title${status.current.storeCode }">${status.current.storeName }</h4>
				</div>
				<!-- 모달 바디 -->
				<div class="modal-body" id="here${status.current.storeCode }">
				정말 삭제하시겠습니까?<br>
				<%-- <form method="post" action="${url}?storeCode=${status.current.storeCode }">
					정말 삭제하시겠습니까?<br>
					<input type="hidden" name="storeCode"/>
					<input type="submit" class="btn btn-warning btn-sm" value="삭제하기"/>
				</form> --%>
				</div>
				
					<!-- 모달 푸터 -->
					<div class="modal-footer">
					<form method="post" action="${url}?storeCode=${status.current.storeCode }">
					<!-- 정말 삭제하시겠습니까?<br> -->
					<input type="hidden" name="storeCode"/>
					<button type="submit" class="btn btn-warning btn-sm" >삭제하기</button>
						<button type="button" class="btn btn-warning btn-sm" data-dismiss="modal">닫기</button>
				</form>
					
					</div>
					
				</div>	<!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div>
		</c:forEach>
		<!-- ----------------------가게 삭제 모달 끝-------------------------- -->			
						
				
		
		<!-- 탭2 정보수정 및 탈퇴 -->
		<div id="tab2">
			<div id="footer" class="container"   align="left">				
				<c:url value="/info/update_owner" var="action"></c:url>
				<form:form modelAttribute="updateOwner" method="post" action="${action}" id="updateOwner" name="updateOwner">
					<fieldset>	
						<div style="font-style: normal; width: 26cm" >
						<table border="">						
						
						<tr>
						<td style="text-align: left; background-color: white;" align="left" >아이디</td>
						<td style="background-color: white"><form:input path="ownerId" name="userId"  title="Please provide your ID."	align="middle" readonly="true"></form:input></td>
						<td style="text-decoration:  red; background-color: white">*</td>
						</tr>
						<tr>
						<td style="text-align: left; background-color: white;" align="left">비밀번호</td>
						<td style="background-color: white"><form:input path="ownerPassword" id="pass" type="password"	title="Please provide your password" required="true"></form:input></td>
						<td style="background-color: white"></td>
						</tr>
						<tr>
						<td style="text-align: left; background-color: white;" align="left">비밀번호확인</td>
						<td style="background-color: white"><input type="password" id="pass2" name="pass2"  value="${updateOwner.ownerPassword }" required="true" />						</td>
						<td style="background-color: white"></td>
						</tr>
						<tr>
						<td style="text-align: left;background-color: white" align="left">이름</td>
						<td style="background-color: white"><form:input path="ownerName" name="ownerName"	title="Please provide your userName" readonly="true"></form:input>
						<td style="background-color: white">*</td>
						</tr>
						<tr>
						<td style="text-align: left; background-color: white;" align="left">이메일</td>
						<td style="background-color: white"><form:input path="ownerMail" id="joinMail" type="email"	title="Please provide your userEmail" required="true"></form:input></td>
						<td style="background-color: white">&nbsp; <input type="button" value="V" id="mailDupCheck" class="btn btn-primary btn-sm "><input type="hidden" name="checked2" id="checked2"/>
						</tr>
						<tr>
						<td style="text-align: left; background-color: white;" align="left">전화번호</td>
						<td style="background-color: white"><form:input path="ownerPhone" name="ownerPhone"	title="Please provide your userPhone" required="true"></form:input></td>
						<td style="background-color: white"></td>
						</tr>
						<tr>
						<td style="text-align: left; background-color: white" align="left">사업자등록번호</td>
						<td style="background-color: white"><form:input path="licenseNumber" name="licenseNumber"	title="Please provide your storeType" readonly="true" ></form:input></td>
						<td style="background-color: white">*</td>
						</tr>						
						</table>
						
						</div>								
					</fieldset>
					</form:form>
					<div style="font-style: normal; color: red; width: 20cm" >
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					
					<br>
					
					<div align="center">
					<font  style="font-size: 14px;">  *는 수정할 수 없는 정보입니다.</font>
					</div> 
					<br>
					<input id="ownerSubmit" type="submit" value="수정하기" />
					</div>	
											
					</div>
						
					<!-- <button id="ownerExit" data-toggle="modal" data-target="#ownerExitModal">
					탈퇴하기</button>  -->
					
					<%-- 	<div style="font-style: normal; color: red; width: 20cm" >
							*아이디
							<form:input path="ownerId" name="userId"  title="Please provide your ID."	align="middle" readonly="true"></form:input><br>
							비밀번호 
							<form:input path="ownerPassword" id="pass" type="password"	title="Please provide your password" required="true"></form:input><br>
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
						 --%>
						
				
				
				<!-- <button id="ownerExit" data-toggle="modal" data-target="#ownerExitModal">
					탈퇴하기</button> -->
				
			
		</div>
		
		<!-- ----------------------회원 탈퇴 모달-------------------------- -->
		<c:url value="/info/delete_owner" var="url"></c:url>
		<div class="modal fade" id="ownerExitModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"	aria-hidden="true">
			<div class="modal-dialog"><div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"	id="modal_title">회원 탈퇴</h4>
				</div>
				<!-- 모달 바디 -->
				<div class="modal-body">
				<form method="post" action="${url}">
					정말 탈퇴하시겠습니까?<br>
					<input type="submit" class="btn btn-warning btn-sm" value="탈퇴하기"/>
				</form>
				</div>
				
					<!-- 모달 푸터 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-warning btn-sm" data-dismiss="modal">닫기</button>
					</div>
					
				</div>	<!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div>
		<!-- ----------------------회원 탈퇴 모달 모달 끝-------------------------- -->

		<!-- 탭3 이벤트 수정 및 등록-->
		<div id="tab3">
			<table style="width: 90%">
				<tr>
					<td style="background-color: #F2CB61">글제목</td>
					<td style="background-color: #F2CB61">요약</td>
					<td style="background-color: #F2CB61">글관리</td>
				</tr>
			<c:forEach items="${allEvent}" var="event" varStatus="status">
				<tr>
					<td>${event.title }</td>
					<td>${event.content }</td>
					<td><button id="event${status.current.commentCode }" data-toggle="modal" data-target="#myModal${status.current.commentCode }">
					수정하기</button> </td>
				</tr>
			</c:forEach>
			</table>
			<button id="newevent" data-toggle="modal" data-target="#newEventModal">
					새로운 이벤트 등록</button>				
		</div>
		<!-- -------------------------이벤트 수정하기 모달------------------------- -->
		<c:forEach items="${allEvent}" var="event" varStatus="status">
		<div class="modal fade" id="myModal${status.current.commentCode }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"	aria-hidden="true">
			<div class="modal-dialog"><div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"	id="modal_title${status.current.commentCode }">이벤트 수정</h4>
				</div>
				<!-- 모달 바디 -->
				<div class="modal-body" id="here${status.current.commentCode }">
				<c:url value="/info/update_event" var="action"></c:url>
				<%-- enctype="multipart/form-data" --%>
				<form:form modelAttribute="event${status.count }" method="post" action="${action}" id="form3" name="form3">
				<fmt:formatDate value="${status.current.startDate}" pattern="20yy년 MM월 dd일 HH시 mm분" var="startDate"/>
				<fmt:formatDate value="${status.current.endDate}" pattern="20yy년 MM월 dd일 HH시 mm분" var="endDate"/>
					<fieldset>	
						<div style="font-style: normal; color: red;">
							<form:input path="commentCode" type="hidden" value="${status.current.commentCode }"></form:input>
							제목
							<form:input path="title" type="text"  maxLength="50" title="제목을 입력하세요." align="middle" required="true"></form:input><br>
							내용
							<form:input path="content" type="text" maxLength="300" title="내용을 입력하세요." required="true"></form:input><br>
							*이미지
							<img src="<%=request.getContextPath()%>/upload/eventImage${status.current.commentCode}.jpg"/>
							<!-- <input type="file" id="eventFile" name="eventFile"></input> -->
							가게
							<form:select path="storeCodeStr" items="${storeNames }" required="true"></form:select>
							*이벤트 시작 시간<br>
							<form:input id="startDate" value="${startDate }" path="startDateStr" readonly="true"></form:input><br>
							*이벤트 종료 시간<br>
							<form:input id="endDate" value="${endDate }" path="endDateStr"  readonly="true"></form:input><br>
							<form:input path="storeCode" type="hidden" value="${status.current.storeCode }"></form:input>
							서비스 종류	
							<form:select path="serviceTypeName" items="${serviceTypeNames }" title="서비스종류를 선택하세요." required="true"></form:select><br>
							인원
							<form:select path="personsLevel" items="${personsLevels }" title="인원을 선택하세요." required="true"></form:select><br>
							*는 수정할 수 없는 정보입니다.
						</div>
					</fieldset>
					<input type="submit" class="btn btn-warning btn-sm" value="수정하기" onclick="return checkFile4();"/>
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
		<!-- -------------------------이벤트 수정하기 모달 끝------------------------- -->
		
		<!-- -------------------------이벤트 등록하기 모달------------------------- -->
		<div class="modal fade" id="newEventModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"	aria-hidden="true">
			<div class="modal-dialog"><div class="modal-content">
				<!-- 모달 헤더 -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title"	id="modal_title">이벤트 등록</h4>
				</div>
				<!-- 모달 바디 -->
				<div class="modal-body" id="here">
				<c:url value="/info/insert_event" var="action"></c:url>
				<form:form modelAttribute="insertEvent" method="post" action="${action}" id="form3" name="form3" enctype="multipart/form-data">
				<%-- <fmt:formatDate value="${status.current.startDate}" pattern="20yy년 MM월 dd일 HH시 mm분 ss초" var="startDate"/>
				<fmt:formatDate value="${status.current.endDate}" pattern="20yy년 MM월 dd일 HH시 mm분 ss초" var="endDate"/> --%>
					<fieldset>	
						<div style="font-style: normal; color: black;">
							제목
							<form:input path="title" type="text"  maxLength="50" title="제목을 입력하세요." align="middle" required="true"></form:input><br>
							내용
							<form:input path="content" type="text" maxLength="300" title="내용을 입력하세요." required="true"></form:input><br>
							이미지
							<input type="file" id="uploadEventFile" name="uploadEventFile">
							이벤트 시작 시간<br>
							<form:input id="startDate" type="datetime-local" path="startDateStr" min="${minTime }" max="${maxTime }" required="true"></form:input><br>
							이벤트 종료 시간<br>
							<form:input id="endDate" type="datetime-local" path="endDateStr" min="${endDateMinTime }" max="${endDateMaxTime }" required="true"></form:input><br>
							가게
							<form:select path="storeCodeStr" items="${storeNames }" required="true"></form:select>
							서비스 종류	
							<form:select path="serviceTypeName" accesskey="1" items="${serviceTypeNames }" title="서비스종류를 선택하세요." required="true"></form:select><br>
							인원
							<form:select path="personsLevel" items="${personsLevels }" title="인원을 선택하세요." required="true"></form:select><br>

							발행할 쿠폰 매수
							<input type="number" name="couponCount" />
							<br>
							*이벤트 시간은 이후 수정할 수 없습니다.<br>
							현재 가능한 이벤트 시작시간<br> [${minTime } ~ ${maxTime }]<br>
							현재 가능한 이벤트 종료시간<br> [${endDateMinTime } ~ ${endDateMaxTime }]  


						</div>
					</fieldset>
					<input type="submit" class="btn btn-warning btn-sm" value="등록하기" onclick="return checkFile3();"/>
				</form:form>
				</div>
					<!-- 모달 푸터 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-warning btn-sm" data-dismiss="modal">닫기</button>
					</div>
					
				</div>	<!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div>
		
		<!-- -------------------------이벤트 등록하기 모달------------------------- -->
		
		<div id="tab4">
			<div id="footer" class="container" align="left">
				미사용 쿠폰
				<table style="width: 90%">
					<tr>
						<th style="background-color: #F2CB61">쿠폰번호</th>
						<th style="background-color: #F2CB61">상호명</th>
						<th style="background-color: #F2CB61">요약</th>
						<th style="background-color: #F2CB61">쿠폰상세보기</th>
						<th style="background-color: #F2CB61">쿠폰사용</th>
					</tr>
				<c:forEach items="${allCoupon}" var="coupon">
					<c:if test="${coupon.couponStatus eq '미사용'}">
					<c:set var="isExist1" value="true"></c:set>
					<tr>
						<td>${coupon.couponCode }</td>
						<td>${coupon.storeName }</td>
						<td>${coupon.content }</td>
						<td><button data-toggle="modal" data-target="#couponModal${coupon.couponCode }">
					상세보기</button></td>
					<td><button data-toggle="modal" data-target="#couponUseModal${coupon.couponCode }">
					사용하기</button></td>
					</tr>
					</c:if>
				</c:forEach>
				<c:if test="${isExist1 ne true }">
					<td colspan="4">미사용 쿠폰이 존재하지 않습니다.</td>
					</c:if>
				</table>
				사용쿠폰
				<c:url var="rview" value="/review/write"></c:url>
				<table style="width: 90%">
					<tr>
						<th style="background-color: #F2CB61">상호명</th>
						<th style="background-color: #F2CB61">요약</th>
						<th style="background-color: #F2CB61">후기 확인</th>
					</tr>
					<c:forEach items="${allCoupon}" var="coupon">
					<c:if test="${coupon.couponStatus eq '사용'}">
					<c:set var="isExist2" value="true"></c:set>
					<tr>
						<td>${coupon.storeName }</td>
						<td>${coupon.content }</td>
						<td><a href="${rview }?storeName=${coupon.storeName }&storeCode=${coupon.storeCode}"><input type="button"
								name="button" value="후기확인"></a></td>
					</tr>
					</c:if>
					</c:forEach>
					<c:if test="${isExist2 ne true }">
					<td colspan="4">사용 쿠폰이 존재하지 않습니다.</td>
					</c:if>
				</table>
				환불 쿠폰
				<table style="width: 90%">
					<tr>
						<th style="background-color: #F2CB61">상호명</th>
						<th style="background-color: #F2CB61">요약</th>
						<th style="background-color: #F2CB61">구매자</th>
						<th style="background-color: #F2CB61">상세정보</th>
					</tr>
					<c:forEach items="${allCoupon}" var="coupon">
					<c:if test="${coupon.couponStatus eq '환불'}">
					<c:set var="isExist3" value="true"></c:set>
					<tr>
						<td>${coupon.storeName }</td>
						<td>${coupon.content }</td>
						<td>${coupon.userId }</td>
						<td><button data-toggle="modal" data-target="#couponModal${coupon.couponCode }">
					쿠폰상세보기</button></td>
					</tr>
					</c:if>
					</c:forEach>
					<c:if test="${isExist3 ne true }">
					<td colspan="4">환불 쿠폰이 존재하지 않습니다.</td>
					</c:if>
				</table>
				기간만료쿠폰
				<table style="width: 90%">
					<tr>
						<th style="background-color: #F2CB61">상호명</th>
						<th style="background-color: #F2CB61">요약</th>
						<th style="background-color: #F2CB61">구매자</th>
						<th style="background-color: #F2CB61">상세정보</th>
					</tr>
				<c:forEach items="${allCoupon}" var="coupon">
					<c:if test="${coupon.couponStatus eq '기간만료'}">
					<c:set var="isExist4" value="true"></c:set>
					<tr>
						<td>${coupon.storeName }</td>
						<td>${coupon.content }</td>
						<td>${coupon.userId }</td>
						<td><input type="button" data-toggle="modal" data-target="#couponModal${coupon.couponCode }"
					value="쿠폰상세보기"/></td>
					</tr>
					</c:if>
				</c:forEach>
				<c:if test="${isExist4 ne true }">
					<td colspan="4">기간만료 쿠폰이 존재하지 않습니다.</td>
				</c:if>
				</table>
			</div>
		</div>
	</div>
	
	<!--  -----------쿠폰 상세보기 모달----------- -->
	<c:forEach items="${allCoupon}" var="coupon" varStatus="status">
	<div class="modal fade" id="couponModal${coupon.couponCode }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"	aria-hidden="true">
		<div class="modal-dialog"><div class="modal-content">
			<!-- 모달 헤더 -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title"	id="modal_title">쿠폰 상세보기</h4>
			</div>
			<!-- 모달 바디 -->
			<div class="modal-body" id="here">
			<form:form modelAttribute="coupon${status.count }" method="post" id="couponForm" name="couponForm">
			<fmt:formatDate value="${status.current.startDate}" pattern="20yy년 MM월 dd일 HH시 mm분" var="startDate"/>
			<fmt:formatDate value="${status.current.endDate}" pattern="20yy년 MM월 dd일 HH시 mm분" var="endDate"/>
				<fieldset>	
					<div style="font-style: normal; color: red;">
						쿠폰번호
						<form:input path="couponCode" type="text"  align="middle" readonly="true"></form:input><br>
						판매자
						<form:input path="ownerName" type="text" align="middle" readonly="true"></form:input><br>
						구매자
						<form:input path="userName" type="text" readonly="true"></form:input><br>
						이벤트 시작 시간<br>
						<form:input id="startDate" path="startDateStr" readonly="true"></form:input><br>
						이벤트 종료 시간<br>
						<form:input id="endDate" path="endDateStr" readonly="true"></form:input><br>
						가게
						<form:input path="storeName" type="text" align="middle" readonly="true"></form:input><br>
						이벤트이름
						<form:input path="title" type="text" align="middle" readonly="true"></form:input><br>
						이벤트내용
						<form:input path="content" type="text" align="middle" readonly="true"></form:input><br>	
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
	<!--  -----------쿠폰 상세보기 모달 끝----------- -->
	
	<!--  -----------쿠폰 사용으로 변경 모달 ----------- -->
	<c:forEach items="${allCoupon}" var="coupon" varStatus="status">
	<c:url var="url" value="/info/use_coupon"></c:url>
	<div class="modal fade" id="couponUseModal${coupon.couponCode }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"	aria-hidden="true">
		<div class="modal-dialog"><div class="modal-content">
			<!-- 모달 헤더 -->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				<h4 class="modal-title"	id="modal_title">쿠폰 사용하기</h4>
			</div>
			<!-- 모달 바디 -->
			<div class="modal-body" id="here">
			<form method="post" action="${url}?couponCode=${coupon.couponCode }" id="couponUse${coupon.couponCode }">
					정말 사용하시겠습니까?<br>
					미사용쿠폰으로 되돌릴 수 없습니다.?<br>
					<input type="submit" class="btn btn-warning btn-sm" value="사용하기"/>
			</form>
			</div>
					<!-- 모달 푸터 -->
			<div class="modal-footer">
				<button type="button" class="btn btn-warning btn-sm" data-dismiss="modal">닫기</button>
			</div>
					
			</div>	<!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div>
	</c:forEach>
	<!--  -----------쿠폰 사용으로 변경 모달 ----------- -->				
	
</body>
</html>
