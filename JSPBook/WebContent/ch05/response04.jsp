<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%
		response.setIntHeader("Refresh", 5);
		Calendar cal = Calendar.getInstance();
		int ampm = cal.get(Calendar.AM_PM);
		String[] apName = {"AM", "PM"};
	%>
	<p>현재 시간은 <%= cal.get(Calendar.HOUR)+":"+cal.get(Calendar.MINUTE)+":"+cal.get(Calendar.SECOND) + " " + apName[ampm] %>
	<p><a href="response_data.jsp">Google 홈페이지로 이동하기</a></p>
	
</body>
</html>