<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Form Processing</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		Enumeration paramNames = request.getParameterNames();
		while(paramNames.hasMoreElements()){
			String name = (String) paramNames.nextElement();
			String paramValue = request.getParameter(name);
			out.print("<p>" + name + " : " + paramValue + "</p>" );
		}
	%>

</body>
</html>