<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="\resources\css\bootstrap.min.css">
<title>도서 정보 오류</title>
</head>
<body>
	<jsp:include page="/homework/menu2.jsp" />
	<div class="jumbotron">
		<!-- 내용드루와 -->
		<div class="container">
			<h1 class="alert alert-danger">해당 도서가 존재하지 않습니다.</h1>
		</div>
	</div>
	<div class="container">
		<!-- http://localhost/ch06/product.jsp?id=P123789 -->
		<div>
			<p><%=request.getRequestURL()%>?<%=request.getQueryString()%></p>
			<p><a href="/homework/book.jsp" class="btn btn-secondary" >도서 목록&raquo;</a></p>
		</div>
	</div>
	
	<jsp:include page="/homework/footer2.jsp" />
</body>
</html>