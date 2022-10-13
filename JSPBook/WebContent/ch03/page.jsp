<%@page import="java.util.Date"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<title>Directives Tag</title>
</head>
<body>
	
	<p>현재 날짜 : <%= new Date() %> </p>
	<p>5의 제곱 : <%=Math.pow(5, 2) %></p>
</body>
</html>