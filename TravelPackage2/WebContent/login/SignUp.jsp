<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" href="SignUp.css">
</head>
<body>
	<form action="<%= request.getContextPath() %>/signUp.do" method="POST" class="joinForm" id="signUp">
                                                                                               
      <h2>회원가입</h2>
      <div class="textForm">
        <input name="memMail" type="text" id="mail" class="id" placeholder="아이디">
        <input type="button" value="중복확인" onclick="checkId()"><br>
      </div>
      <div id="certificationNum" class="textForm" style="text-align: left;">
      	<span id="idResult" style="font-size:15px;color:blue">아이디를 입력해주세요.</span>
      </div>
      <div class="textForm">
        <input id="pw" name="memPw" type="password" class="pw" placeholder="비밀번호" onkeyup="comparePwd()">
      </div>
       <div class="textForm">
        <input id="ckPw" name="memPwConfirm" type="password" class="pw" placeholder="비밀번호 확인" onkeyup="comparePwd()"><br>
      </div>
      <div class="textForm" style="text-align: left;">
      	<span id="pwResult" style="font-size:15px;color:blue">비밀번호를 입력해주세요.</span>
      </div>
      <div class="textForm">
        <input name="memNm" type="text" class="name" placeholder="이름">
      </div>
       <div class="textForm">
        <input name="memBir" type="date" class="bir" placeholder="생년월일">
      </div>
      <div class="textForm">
        <input name="memTel" type="text" class="tel" placeholder="전화번호">
      </div>
      <div class="textForm">
      	<input type="text" id="sample4_postcode" placeholder="우편번호">
		<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
		<input type="text" name="memAddr1" id="sample4_roadAddress" placeholder="도로명주소">
		<input type="text" id="sample4_jibunAddress" placeholder="지번주소">
		<span id="guide" style="color:#999;display:none"></span>
		<input type="text" name="memAddr2" id="sample4_detailAddress" placeholder="상세주소">
		<input type="text" name="memAddr3" id="sample4_extraAddress" placeholder="참고항목">
      	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      </div>
      <div class="textForm">
        <input name="memPreReg" type="text" class="nickname" placeholder="선호지역">
      </div>
      <input type="button" id="btnSubmit" class="btn" value="회원가입" onclick="checkForm()"/>
      <!-- <button id="btnSubmit" class="btn" onclick="joinMember()">회원가입</button> -->
	</form>
<script>
	function checkId() {
		let idResult = $("#idResult");
		let id = $("#mail").val();
		let idCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if(!idCheck.test(id)){
			alert("아이디는 이메일 형식을 사용해야 합니다.");
			return false;
		}
		
		$.ajax({
			type:"get",
			url:"<%=request.getContextPath()%>/idCheck.do",
			data:"check=" +  $("#mail").val(),
			dataType:"text",
			success:function(p_rslt){
				console.log(p_rslt);
				if(p_rslt == "OK"){
					//alert("사용할 수 있는 아이디입니다.");
					idResult.css("color","blue");
					idResult.html("사용가능한 아이디입니다.");
					let certificationNum = $("#certificationNum");
					certificationNum.append("<input type=button id=num value=인증번호전송>").click(function name() {
						alert("눌림");
					});
					$("#num").css("width","100px");
				}else {
					//alert("사용할 수 없는 아이디입니다.");
					idResult.css("color","red");
					idResult.html("이미 존재하는 아이디입니다.");
				}
			},
			error: function (request, status, error) {
		        console.log("code: " + request.status)
		        console.log("message: " + request.responseText)
		        console.log("error: " + error);
		    }
		})	
	}
</script>
<script src="SignUp.js"></script>
</body>
</html>



