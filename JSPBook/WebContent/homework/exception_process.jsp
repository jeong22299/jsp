<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="exception_error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>Exception</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("password");
		
		if(id.equals("") || pw.equals("")){
		    throw new ServletException("");
		}else{
	%>
		<p> 아이디 : <%=id %>
		<p> 비밀번호 : <%=pw %>
	<%
	}
	%>
</body>
</html>