<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
이벤트 디테일 페이지 입니다.
${eventDetail.title}
구매하기 버튼 클릭시 buy coupon컨트롤러로 이벤트 커멘트를 넘겨준다.
<%-- <c:if test="${isBuy }==true"> <button>은 disable ->부트스트랩에 있을것임  --%> 만약 이미 구매한 이벤트라면 구매하기를 disable로 한다.
</body>
</html>