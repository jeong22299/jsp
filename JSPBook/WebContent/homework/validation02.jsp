<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Validation</title>
<script type="text/javascript">
	function checkLogin() {
	    var form = document.loginForm;
	    var passwd = form.passwd.value;
	    var passwdcheck = form.passwd2.value;
		
	    if(passwd!=passwdcheck) {
        	alert("비밀번호가 틀렸습니다.");
        	return false;
        }
	    // \d : 숫자를 찾음
	    // \D : 숫자가 아닌 값을 찾음
	    // \w : 알파벳 + 숫자 + _ 를 찾음
	    // \W : 알파벳 + 숫자 + _ 를 제외한 모든 문자를 찾음
	    if(/(\w)\1\1/.test(passwd)) {
	        alert("영문, 숫자는 3자 이상 연속 입력할 수 없습니다.");
	        form.passwd.focus();
	        return false;
        }
	    
		form.submit();
	}
</script>
</head>
<body>
	<form action="validation_process.jsp" name="loginForm">
		<p>아이디 : <input type="text" name="id"></p>
		<p>비밀번호 : <input type="password" name="passwd"></p>
		<p> 비밀번호 확인 : <input type="password" name="passwd2">
		<p><input type="button" value="전송" onclick="checkLogin()"></p>
	</form>
</body>
</html>