<%@page import="java.util.Locale"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<h4>현재 로케일</h4>
	<%
	Locale locale = request.getLocale();
	%>
<p> 언어 : <%=locale.getDisplayLanguage() %>
<p> 국가 : <%=locale.getDisplayCountry() %>
</body>
</html>