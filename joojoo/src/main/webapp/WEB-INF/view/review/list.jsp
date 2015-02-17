<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="joojoo.entity.RviewComment" %>
<%@ page import="joojoo.entity.All" %>
<%@ page import="java.util.*"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
            "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"></meta>
    <title>게시판 목록</title>
    <style type="text/css">
        * {font-size: 9pt;}
        p {width: 600px; text-align: right;}
        table thead tr th {background-color: gray;}
    </style>
    <script type="text/javascript">
    </script>


    </head>
    <body>
       <!-- 검색 폼 영역 -->

       <form name="searchForm" action="" method="get">
       <p>
           <select name="searchType">
               <option value="ALL">전체검색</option>
               <option value="SUBJECT">제목</option>
               <option value="WRITER">작성자</option>
               <option value="CONTENTS">내용</option>
           </select>
           <input type="text" name="searchText" value="" />
           <input type="submit" value="검색" />
       </p>
       </form>

       <!-- //검색 폼 영역 -->
       <!-- 게시판 목록 영역 -->

	
		<% List<All> list = (List<All>)request.getAttribute("rviews"); %>
       <table border="1" summary="게시판 목록">
		<h4> 총 글 갯수 : <%=list.size() %> </h4>
		
		 
	
          <tr><th>글번호</th>  <th>작성자 ID</th><th>글 제목</th><th>글 작성 시간</th><th>가게 이름</th><th>별점</th></tr>
			<c:forEach items="${rviews }" var="rview">
	
		<tr>
		<td><c:out value="${rview.commentCode}"></c:out></td>
		<td><c:out value="${rview.userId}"></c:out></td>
		<td>
			<c:url value="/review?commentCode=${rview.commentCode}" var="url"></c:url>
			<a href="${url }">${rview.title }</a>
		</td>
		<td><c:out value="${rview.regDate}"></c:out></td>
		<td><c:out value="${rview.storeName}"></c:out></td>
		<td><c:out value="${rview.starPoint}"></c:out></td>
		
		</tr>
		
			</c:forEach>
           <tfoot>
               <tr>
                    <td align="center" colspan="6">1</td>
               </tr>
           </tfoot>
       </table>
       <p>

         
           <c:url value="/review/write" var="url"></c:url>
		   <a href="${url }"><button>글 쓰기</button> </a>
       </p>
    </body>

    </html>


