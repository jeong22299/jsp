<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Filter</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		if(id.equals("admin") && passwd.equals("1234")){
	%>
	<p>로그인 성공</p>
	<%
		}else{
	%>
	<p>로그인 실패</p>
	<%
		}
	%>
</body>
</html>