<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="joojoo.entity.RviewComment" %>
<%@ page import="joojoo.entity.All" %>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <title>�Խ���</title>


<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!-- ��ư��Ʈ��Ʈ�� -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- <link rel="stylesheet"  href="css/style-1000px.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/style-desktop.css"> -->

<link rel="stylesheet" href="../css/style.css">
<link rel="stylesheet" href="../css/style-1000px.css">
<link rel="stylesheet" href="../css/style-desktop.css">


<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
  <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="http://code.jquery.com/ui/1.11.3/jquery-ui.js"></script>
<!--   <link rel="stylesheet" href="css/joinform.css" /> -->




<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.dropotron.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<script type="text/javascript">

function deleteChk(){
	if($("#deleteChk").val()=="true"){
	
		if (confirm("���� �����Ͻðڽ��ϱ�??") == true){    //Ȯ��
		    document.form.submit();
		}else{   //���
		    return;
		}

	
	 }
	else{
		alert("���� ������ �����ϴ�.");
	}
	}


</script>
<style type="text/css">
#header{
background-image: url(images/main.jpg);
}
	input[type="button"],
	input[type="submit"],
	input[type="text"],
	
	input[type="mail"]{
	font-family:'Jeju Gothic', serif;
	color: black;
	
	}
/* 	th, td {
	padding: 5px;
	text-align: left;
} */


</style>



</head>

<c:if test="${ loginUser.userId == rviewComment.userId }">
	<input type="hidden" id="deleteChk" value="true"/> 

</c:if>


 <body>
 
 <c:url value="<%=request.getContextPath() %>" var="cp"></c:url>
	<div id="header-wrapper">                        
	<div id="header" class="container"> 
	<h1 id="logo"><a href="<%=request.getContextPath()%>">JooJooclub</a></h1>
	<p>Welcom To JooJooClub</p>
	
	<!-- ��� �޴� -->
	<div align="right">
		<nav id="nav">
			<ul>				
				<c:if test="${empty loginUser }">
				
				<li><a class="icon fa-home" href="<%=request.getContextPath() %>/"><span>Home</span></a></li>
				<li><a class="icon fa-bar-chart-o" href="<%=request.getContextPath() %>/login"><span>Login</span></a>
			    <li><a class="icon fa-cog" href="<%=request.getContextPath() %>/join"><span>Join</span></a></li>			   
			    <li><a class="icon fa-retweet" href="<%=request.getContextPath() %>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap" href="<%=request.getContextPath() %>/review"><span>ReviewBoard</span></a></li>
				
				</c:if>			
				<c:if test="${!empty loginUser }">
				<li><span>${loginUser.userId}�� [����:${loginUser.chance }]</span>
				<li><a class="icon fa-home" href="<%=request.getContextPath() %>/"><span>Home</span></a></li>			   
			    <li><a class="icon fa-retweet" href="<%=request.getContextPath() %>/info"><span>MyPage</span></a></li>
				<li><a class="icon fa-sitemap" href="<%=request.getContextPath() %>/review"><span>ReviewBoard</span></a></li>				
				<li><a class="icon fa-bar-chart-o" href="<%=request.getContextPath() %>/logout"><span>Logout</span></a>				
				</c:if>
		    </ul>
	    </nav>
    </div><!-- ��� �޴� �� --> 
    </div>
    </div>
    
       <img src="images/bar.png" style="width: 100%">

	<div class="container" align="center" background-color: white;">
		<section id="features"> 
		<div align="right" style="width: 20cm">
    <table align="center">
  <tr>
   <td>
    <table width="80%" cellpadding="0" cellspacing="0" border="0" style="font-family:'Jeju Gothic', serif; color: black;">
    <tr><td></td></tr>
    <br><br>
     <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;">
    
      <td style="background-color: #F2CB61; width: 20cm" align="center">�� �� </td>
     
     </tr>
    </table>
   <table width="413" style="font-family:'Jeju Gothic', serif; color: black;">
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">�۹�ȣ : </td>
      <td width="319">
      <c:out value="${rviewComment.commentCode}"></c:out>
      </td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">�ۼ��� : </td>
      <td width="319"> <c:out value="${rviewComment.regDate}"></c:out></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">�ۼ��� : </td>
      <td width="319"> <c:out value="${rviewComment.userId}"></c:out></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">�����̸� : </td>
      <td width="319"> <c:out value="${rviewComment.storeName}"></c:out></td>
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76">�� �� : </td>
      <td width="319"> <c:out value="${rviewComment.title}"></c:out></td>
      <td width="0">&nbsp;</td>
     </tr>
     
     <tr>
      <td width="0">&nbsp;</td>
      <td align="center" width="76" style="color: blue">���� : </td>
      <td width="319">&nbsp;&nbsp; <c:out value="${rviewComment.starPoint}"></c:out> 
      
      
      <%-- <c:if test="${comment.writerId == 5}"> --%>
      <c:if test="${rviewComment.starPoint == 5 }">
      <div style="CLEAR: both; PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: url(images/icon_star2.gif) 0px 0px; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 0px; WIDTH: 90px; PADDING-TOP: 0px; HEIGHT: 18px;">
  <p style="WIDTH: 99%; PADDING-RIGHT:0px; PADDING-LEFT:0px; BACKGROUND: url(images/icon_star.gif) 0px 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; HEIGHT: 18px;">
  </c:if>
  
  <c:if test="${rviewComment.starPoint == 4 }">
      <div style="CLEAR: both; PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: url(images/icon_star2.gif) 0px 0px; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 0px; WIDTH: 90px; PADDING-TOP: 0px; HEIGHT: 18px;">
  <p style="WIDTH: 80%; PADDING-RIGHT:0px; PADDING-LEFT:0px; BACKGROUND: url(images/icon_star.gif) 0px 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; HEIGHT: 18px;">
  </c:if>
  
  <c:if test="${rviewComment.starPoint == 3 }">
      <div style="CLEAR: both; PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: url(images/icon_star2.gif) 0px 0px; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 0px; WIDTH: 90px; PADDING-TOP: 0px; HEIGHT: 18px;">
  <p style="WIDTH: 60%; PADDING-RIGHT:0px; PADDING-LEFT:0px; BACKGROUND: url(images/icon_star.gif) 0px 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; HEIGHT: 18px;">
  </c:if>
  
  <c:if test="${rviewComment.starPoint == 2 }">
      <div style="CLEAR: both; PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: url(images/icon_star2.gif) 0px 0px; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 0px; WIDTH: 90px; PADDING-TOP: 0px; HEIGHT: 18px;">
  <p style="WIDTH: 40%; PADDING-RIGHT:0px; PADDING-LEFT:0px; BACKGROUND: url(images/icon_star.gif) 0px 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; HEIGHT: 18px;">
  </c:if>
  
  <c:if test="${rviewComment.starPoint == 1 }">
      <div style="CLEAR: both; PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BACKGROUND: url(images/icon_star2.gif) 0px 0px; FLOAT: left; PADDING-BOTTOM: 0px; MARGIN: 0px; WIDTH: 90px; PADDING-TOP: 0px; HEIGHT: 18px;">
  <p style="WIDTH: 20%; PADDING-RIGHT:0px; PADDING-LEFT:0px; BACKGROUND: url(images/icon_star.gif) 0px 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; PADDING-TOP: 0px; HEIGHT: 18px;">
  </c:if>
  
  </p>
  </div></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
                <tr>
      <td width="0"></td>
                   <td width="399" colspan="2" height="200"><c:out value="${rviewComment.content}"></c:out>

                </tr>
                




			<tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     <tr height="1" bgcolor="#82B5DF"><td colspan="4" width="407"></td></tr>
     
     <tr align="center">
      <td width="0">&nbsp;</td>
      <td colspan="2" width="800">
     
	<input type=button value="���" OnClick="window.location='review'">
	<input type=button value="����" OnClick="window.location='review/modify?commentCode=${rviewComment.commentCode}'" >
	<input type=button value="����" onclick="deleteChk()">
      <td width="0"></td>
     </tr>
    </table>
   </td>
  </tr>
			


    </table>
   </td>
  </tr>
 </table>
 </div>
 </section>
 </div>
    
    <!--����! ��������-->
    

<div class="container">
	<div >
		<ul>
			<li><a href="list.do">������  �Խ���</a></li>
			<li><a href="../logout.do">�α׾ƿ�</a></li>		
		</ul>
		<form action="list.do" method="get">		
			<select id="type" name="type">
				<option value="subject">����</option>
				<option value="content">����</option>
				<option value="writer">�ۼ���</option>
			</select>
			<input type="text" id="keyword" name="keyword" value="<%if(request.getParameter("keyword") != null){ out.print(request.getParameter("keyword")); } else { out.print(""); }%>" />
			<input type="submit" value="�˻�" />			
		</form>
	</div>	
	
	<table border="0" class="boardTable">
		<thead>
		<tr>
			<th>�۹�ȣ</th>
			<th>����</th>
			<th>�ۼ���</th>
			<th>��ۼ�</th>
			<th>��ȸ��</th>
			<th>��õ��</th>
			<th>�ۼ���</th>	
		</tr>
		</thead>
		<tbody>
		<c:forEach var="board" items="${boardList}">
		<tr>
			<td class="idx">${board.rnum}</td>
			<td align="left" class="subject">
				<c:if test="${board.comment >= 10}"><img src="<%=request.getContextPath()%>/img/hit.jpg" /></c:if>
				<a href="view.do?idx=${board.idx}">${board.subject}</a></td>
			<td class="writer"><c:choose><c:when test="${board.writerId == userId}"><strong>${board.writer}</strong></c:when><c:otherwise>${board.writer}</c:otherwise></c:choose></td>
			<td class="comment">${board.comment}</td>
			<td class="hitcount">${board.hitcount}</td>
			<td class="recommendcount">${board.recommendcount}</td>
			<td class="writeDate">${board.writeDate}</td>		
		</tr>
		</c:forEach>
		</tbody>
	</table>
	<br />
	${pageHtml}
	<br /><br />
	<input type="button" value="���" class="writeBt" onclick="moveAction(2)"/>
	<input type="button" value="����" class="writeBt" onclick="moveAction(1)"/>	
</div>


<div class="wrapper">	
	<h3>�� �� ����</h3>
	<form action="write.do" method="post" onsubmit="return writeFormCheck()" enctype="multipart/form-data">	
	<table class="boardWrite">	
		<tr>
			<th><label for="subject">����</label></th>
			<td>
				<input type="text" id="subject" name="subject" class="boardSubject"/>
				<input type="hidden" id="writer" name="writer" value="${userName}" />
				<input type="hidden" id="writerId" name="writerId" value="${userId}" />
			</td>			
		</tr>
		<tr>
			<th><label for="content">����</label></th>
			<td><textarea id="content" name="content" class="boardContent"></textarea></td>			
		</tr>
		<tr>
			<th><label for="file">����</label></th>
			<td><input type="file" id="file" name="file" /><span class="date">&nbsp;&nbsp;*&nbsp;���Ƿ� ���ϸ��� ����� �� �ֽ��ϴ�.</span></td>			
		</tr>				
	</table>
	<br />
	<input type="reset" value="���ۼ�" class="writeBt"/>
	<input type="submit" value="Ȯ��" class="writeBt"/>	
	</form>
</div>

<div class="wrapper">	
	<table class="boardView">
		<tr>
			<td colspan="4"><h3>${board.subject}</h3></td>
		</tr>
		<tr>
			<th>�ۼ���</th>
			<th>��ȸ��</th>
			<th>��õ��</th>
			<th>�ۼ���</th>
		</tr>
		<tr>
			<td>${board.writer}</td>
			<td>${board.hitcount}</td>
			<td>${board.recommendcount}</td>
			<td>${board.writeDate}</td>
		</tr>
		<tr>
			<th colspan="4">����</th>
		</tr>
		<c:if test="${board.fileName != null }">
		<tr>
			<td colspan="4" align="left"><span class="date">÷������:&nbsp;<a href="<%=request.getContextPath()%>/files/${board.fileName}" target="_blank">${board.fileName}</a></span></td>
		</tr>
		</c:if>	
		<tr>
			<td colspan="4" align="left"><p>${board.content}</p><br /><br /></td>
		</tr>		
	</table>
	<table class="commentView">
		<tr>
			<th colspan="2">���</th>
		</tr>		
		<c:forEach var="comment" items="${commentList}">
		<tr>
			<td class="writer">				
				<p>${comment.writer}
				<c:if test="${comment.writerId == userId}">
					<br /><a onclick="commentDelete(${comment.idx}, ${board.idx})"><small>��� ����</small></a>					
				</c:if>
				</p>
			</td>
			<td class="content" align="left">
				<span class="date">${comment.writeDate}</span>
				<p>${comment.content}</p>
			</td>
		</tr>
		</c:forEach>
		<tr>
			<td class="writer"><strong>��� ����</strong></td>
			<td class="content">
				<form action="commentWrite.do" method="post">
					<input type="hidden" id="writer" name="writer" value="${userName}" />
					<input type="hidden" id="writerId" name="writerId" value="${userId}" />
					<input type="hidden" id="linkedArticleNum" name="linkedArticleNum" value="${board.idx}" />
					<textarea id="content" name="content" class="commentForm"></textarea>
					<input type="submit" value="Ȯ��" class="commentBt" />
				</form>
			</td>
		</tr>
	</table>
	<br />
	<c:choose>
		<c:when test="${board.writerId == userId}">
			<input type="button" value="����" class="writeBt" onclick="moveAction(1)" />
			<input type="button" value="����" class="writeBt" onclick="moveAction(2)" />
			<input type="button" value="���" class="writeBt" onclick="moveAction(3)" />
		</c:when>
		<c:otherwise>
			<input type="button" value="��õ" class="writeBt" onclick="moveAction(4)" />
			<input type="button" value="���" class="writeBt" onclick="moveAction(3)" />
		</c:otherwise>
	</c:choose>
</div>
    
    	<!-- Footer -->
	<div>
		<div id="footer" class="container">
			<div align="center">
				<br> <br> <a
					href="<%=request.getContextPath()%>/footer/servicePolicy">�̿���</a>
				&nbsp; &nbsp; <a
					href="<%=request.getContextPath()%>/footer/privacyPolicy">����������ȣ��ħ</a>
				&nbsp; &nbsp; <a
					href="<%=request.getContextPath()%>/footer/youthPolicy">û�ҳ⺸ȣ��å</a>
				&nbsp; &nbsp; <a
					href="<%=request.getContextPath()%>/footer/helpCenter">������</a> <br>
				<br>
				<div style="font-size: 12px;">
					����ڵ�Ϲ�ȣ:130-50-61004 (��)������ȸ ��ǥ�̻�: ������ �ּ�: ��Ŭ���� ��� �ڹٵ� 123-45 <br>
					������ȸ���� ��� �������� ���۱ǹ��� ��ȣ�� �����Ƿ�, ���� ����, ����, ���� ���� ���մϴ�. <br>
					Copyright (c) JooJooClub All Rights Reserved.
				</div>
				<br>
			</div>
		</div>
	</div>
  

</body> 


</html>
