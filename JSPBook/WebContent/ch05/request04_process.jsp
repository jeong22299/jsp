<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Object</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id"); 
		String password = request.getParameter("passwd"); 
	%>
	<p> 전송된 요청 파라미터 : id=<%=id %>&password=<%=password %> </p>
<%=request.getContextPath() %>
</body>
</html>