<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
	function checkLogin() {
        var form = document.loginForm;
        if(form.id.value ==""){
	        alert("아이디 입력를 입력해주세요");
	        form.id.select();
	        return; 
        }else if(form.passwd.value==""){
	        alert("비밀번호 입력를 입력해주세요");
	        form.passwd.select();
	        return;
	    }
        if((form.passwd.value).search(form.id.value)>-1)
        {
        alert("비밀번호는 ID를 포함할 수 없습니다.");
        return;
        }
		form.submit();
	}
</script>
</head>
<body>
	<form action="validation_process.jsp" name="loginForm">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<!--  CheckForm() : 핸들러 함수 -->
		<p><input type="button" value="전송" onclick="checkLogin()"></p>
	</form>
</body>
</html>