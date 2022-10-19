<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
<%
	Cookie[] userID = request.getCookies();
	
	if(userID[0] == null){
		response.sendRedirect("session_out.jsp");
	}
%>

	<h3><%=userID[0].getValue()%>님 반갑습니다.</h3>
	<a href="cookie_out.jsp">로그아웃</a>
</body>
</html>