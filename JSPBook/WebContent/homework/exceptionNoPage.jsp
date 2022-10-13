<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>페이지 오류</title>
<link rel="stylesheet" href="\resources\css\bootstrap.min.css">
</head>
<body>
	<!-- 상품이 없을 때 보여줄 오류 페이지 -->
	<jsp:include page="/ch06/menu.jsp" />
	<div class="jumbotron">
		<!-- 내용드루와 -->
		<div class="container">
			<h1 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h1>
		</div>
	</div>
	<div class="container">
	<!-- http://localhost/ch06/product.jsp?id=P123789 -->
		<p><%=request.getRequestURL()%>?<%=request.getQueryString()%></p>
		<p><a href="/ch06//products.jsp" class="btn btn-secondary" >상품 목록&raquo;</a></p>
	</div>
	<jsp:include page="/ch06/footer.jsp" />
</body>
</html>