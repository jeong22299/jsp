<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<style>
#ch2 {
	display: inline-block;
	border: 1px solid gray;
	border-bottom-style: none;
	height: 70px;
	width: 395px;
}

#ch1 {
	display: inline-block;
	border: 1px solid gray;
	border-top-style: none;
	border-left-style: none;
	border-right-style: none;
	height: 70px;
	width: 395px;
}

#wrapper {
	height: 80vh;
}

#table {
	height: 300px;
}

#table1 {
	width: 800px;
	height: 300px;
	border: 1px solid gray;
	border-left-style: none;
	border-right-style: none;
	border-bottom-style: none;
}

tr {
	border-left-style: none;
}

col {
	border: 1px solid rgb(219, 217, 217);
	border-left-style: none;
	text-align: center;
}

input:focus {
	outline: 2px solid rgb(88,204,255);
}

#a {
	border: none;
}

#in1 {
	border: 1px solid rgb(219, 217, 217);
	height: 50px;
	font-size: 12px;
	width: 500px;
}

#in3 {
	border: 1px solid rgb(219, 217, 217);
	height: 50px;
	font-size: 12px;
	width: 100px;
}

#in2 {
	border: none;
	border-radius: 6px;
	width: 120px;
	height: 50px;
	color: white;
}
</style>
</head>
<body>
	<div id=wrapper align="center">
		<br> <br> <br>
		<h4>아이디/비밀번호를 잊어버리셨나요?</h4>
		<br> <br> <br>
		<div id="ch1" OnClick="location.href ='IdSearch.jsp'" style="cursor: pointer;"> <br/>아이디 찾기</div>
		<div id="ch2" OnClick="location.href ='PwSearch.jsp'" style="cursor: pointer;"> <br/>비밀번호 찾기</div>
		<br> <br> <br>
		<div id=table>
			<form action="<%=request.getContextPath()%>/SearchPw.do"
				method="post">
				<table id=table1>
					<colgroup>
						<col style="width: 19%; height: 100px; background-color: rgb(247, 247, 247); text-align: center;">
					</colgroup>
					<tbody>
						<tr style="border: 1px solid rgb(219, 217, 217); border-left-style: none; border-right-style: none;">
							<th style="text-align: center">이메일</th>
							<td>
								<div id=a>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input id=in1 type="text" title="이메일" name="memMail" placeholder="&nbsp;&nbsp;이메일을 입력해 주세요.">
									<input id=in3 type="submit" value="인증번호 요청">
								</div>
							</td>
						</tr>
						<tr style="border: 1px solid rgb(219, 217, 217); border-left-style: none; border-right-style: none;">
							<th style="text-align: center">휴대폰번호</th>
							<td>
								<div id=a>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input id=in1 type="text" title="휴대폰번호" name="memTel" placeholder="&nbsp;&nbsp;휴대폰번호를 입력해주세요.(예: 01012345678)">
								</div>
							</td>
						</tr>
						<tr style="border: 1px solid rgb(219, 217, 217); border-left-style: none; border-right-style: none;">
							<th style="text-align: center">인증번호</th>
							<td>
								<div id=a>
									&nbsp;&nbsp;&nbsp;&nbsp;
									<input id=in1 type="text" title="인증번호" name="인증번호" placeholder="&nbsp;&nbsp;인증번호를 입력해주세요."> 
									<input id=in3 type="button" value="인증하기">
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<br> 
				<a href="login.jsp">
					<input id=in2 type="button" value="이전" style="background-color: rgb(91, 96, 110)"> 
				</a> 
					<!-- form? 써야되나? -->
					<input id=in2 type="submit" value="다음" style="background-color: rgb(88, 204, 255)">
			</form>
		</div>
	</div>
</body>
</html>
<%@include file="../Footer.jsp"%>