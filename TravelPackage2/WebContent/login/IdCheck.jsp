<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 중복확인</title>
</head>
<body>
	<%	
		Object result = request.getAttribute("idCheck");
		String memMail =(String)request.getAttribute("memEmail");
	%>
	
	<%if(result==null){ %>
	<form action="<%= request.getContextPath() %>/idCheck.do" method="get">
		<input type="text" name="memMail" placeholder="중복 체크할 ID를 입력하세요">
		<input type="submit" value="중복 체크">
	</form>
	<%}else{ %>
	<form action="<%= request.getContextPath() %>/idCheck.do" method="get">
		<input type="text" name="memMail" value="<%=memMail %>" placeholder="중복 체크할 ID를 입력하세요">
		<input type="submit" value="중복 체크">
	</form>
	<%if((boolean)result){ %>
		<span style="color:red">해당 ID는 이미 사용 중합니다.</span>
	<%}else{ %>
		<span style="color:blue">해당 ID는 사용이 가능합니다.</span>
		<button onclick="userId();">사용하기</button>
		
		<script>
		function userId(){
			window.opener.document.getElementById('mail').value='<%=memMail%>';
			window.close();
		}
	</script>
	<%} %>
	
	
	
<%} %>	
	
	
</body>
</html>