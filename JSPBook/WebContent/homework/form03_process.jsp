<%@page import="java.util.Enumeration"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<h4>선택한과일</h5>
		<%! // 선언문
			String arrToStr(String[] arr){
				String str = "";
				for(String s : arr){
					str += " " + s;
				}
				return str;
			}
		%>
		<%
			request.setCharacterEncoding("UTF-8");
		
			Enumeration paramNames = request.getParameterNames(); // id, name
			String paramValue = "";
			while(paramNames.hasMoreElements()){
				
				String name = (String) paramNames.nextElement(); // id, name	
				paramValue = arrToStr(request.getParameterValues(name));
			
				out.print(paramValue);
			}
		
		%>
</body>
</html>