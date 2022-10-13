<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<style>
#wrapper {
	border: 1px;
	height: 60vh;
}

input:focus {
	outline-color: gray;
}

.A1 {
border:1px solid gray;
	width: 500px;
	height: 55px;
	font-size: 25px;
	border-radius: 6px;
}

#A2 {
	background-color: rgb(196, 196, 196);
	color: white;
}

#ch1{
	display: inline-block;
	border: 1px solid gray;
	border-top-style: none;
	border-left-style: none;
	border-right-style:none;
	height: 70px;
	width: 240px;
}
#ch2{
	display: inline-block;
	border: 1px solid gray;
	border-bottom-style: none;	
	height: 70px;
	width: 240px;
}
</style>

</head>
<body>
	<div id=wrapper align="center">

		<form action="<%=request.getContextPath()%>/admin_check.do"
			method="post">
<br /><br /><br /><br />
			<h2>로그인</h2>
			<br /> <br /> 
			<div id="ch1" OnClick="location.href ='login.jsp'" style="cursor:pointer;"><br/>회원</div>
			<div id="ch2" OnClick="location.href ='adminLogin.jsp'" style="cursor:pointer;"><br/>관리자</div>
			<br/>
			<br/>
			<input class=A1 style="font-size:15px" placeholder="   아이디(관리자 계정)" type="text" name="id"><br /> <br /> 
			<input class=A1 style="font-size:15px" placeholder="   비밀번호" type="password" name="password"><br /> <br />
			<input id="A2" class=A1 type="submit" value="로그인" style="font-size: 20px">
		</form>


		<form action="SignUp.jsp" method="post">
		<br/>
			<a href="SignUp.jsp" style="text-decoration: none; font-size: 12px;" >회원가입 |</a> 
			<a href="IdSearch.jsp" style="text-decoration: none; font-size: 12px;">아이디 찾기 |</a> 
			<a href="PwSearch.jsp" style="text-decoration: none; font-size: 12px;">비밀번호 찾기</a>
		</form>
	</div>
</body>
</html>
<%@include file="../Footer.jsp"%>