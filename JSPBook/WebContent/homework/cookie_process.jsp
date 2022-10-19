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
		
		if(user_id.equals("admin")&& user_pw.equals("1234")){
			Cookie cookie_id = new Cookie("userID", user_id);
			Cookie cookie_pw = new Cookie("userPW", user_pw);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			response.sendRedirect("welcome2.jsp");
// 			out.println(user_id + "님 반갑습니다.<br>");
// 			out.print("<a href='cookie_out.jsp'>쿠키정보확인</a>");
		}else{
			out.print("쿠키 설정 실패!");
		}
	%>
<c:set var="id" value="<%=user_id%>" scope="application"></c:set>
</body>
</html>