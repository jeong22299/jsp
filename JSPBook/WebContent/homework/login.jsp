<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<title>로그인</title>
</head>
<body>
<jsp:include page="menu2.jsp" />
	<div class="jumbotron">
		<!-- 내용넣기! -->
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
	<h3 class="form-singin-heading">Please sign in</h3>
		<form name="loginForm" action="j_security_check" method="post">
			<p>
				ID : <input type="text" name="j_username">
			</p>
			<p>
				비밀번호 : <input type="password" name="j_password">
			</p>
			<p>
				<input type="submit" value="로그인">
			</p>
		</form>
	</div>
</body>
</html>