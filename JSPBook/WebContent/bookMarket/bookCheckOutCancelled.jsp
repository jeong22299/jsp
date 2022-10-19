<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<title>주문 취소</title>
</head>
<body>
<jsp:include page="menu2.jsp" />
	<div class="jumbotron">
		<div class="container"> <!-- 안에 내용있다. -->
			<h1 class="display-3">주문 취소</h1>
 		</div>
	</div>	
	<!-- -------------주문 취소 시작 -------------------- -->
	<%
	// 기존 session 제거 후 새로 생성
		session.invalidate();
	%>
 	<div class="container">
 		<h2 class="alert alert-danger">주문이 취소되었습니다.</h2>
 	</div> 
 	<div class="container">
 		<p><a href="book.jsp" class="btn btn-secondary">&laquo;도서목록</a></p>
 	</div>
 	 <!-- -------------주문 취소 끝 -------------------- -->
<jsp:include page="footer2.jsp" />
</body>
</html>