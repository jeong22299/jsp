<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Session</title>
</head>
<body>
	<% //스크립틀릿
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		if(user_id.equals("admin") && user_pw.equals("1234")){
			session.setAttribute("userID", user_id);
			response.sendRedirect("welcome.jsp");
		}else{
			out.println("세션 연결에 실패했습니다.");
		}
	%>
<c:set var="id" value="<%=user_id%>" scope="application"></c:set>
</body>
</html>