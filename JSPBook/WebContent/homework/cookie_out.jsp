<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Cookie</title>
</head>
<body>
<%
	Cookie[] cookies = request.getCookies();

	for(int i=0; i<cookies.length; i++){  // 모든 쿠키를 삭제
		cookies[i].setMaxAge(0); 	// 서버에서 변경이 일어남
		response.addCookie(cookies[i]); // 클라이언트로 응답해줌
	}
	
	response.sendRedirect("cookie.jsp");
%>
</body>
</html>