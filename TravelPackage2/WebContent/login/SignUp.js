/*
	회원가입 시 비밀번호 확인
*/
let compareResult = false;

 function comparePwd() {
	let pwd1 = $("#pw").val();
	let pwd2 = $("#ckPw").val();
	let pwResult = $("#pwResult");
	
	if(pwd1 == pwd2){
		compareResult = true;
		pwResult.css("color","blue");
		pwResult.html("비밀번호가 일치합니다.");
		if(pwd1 == ""){
			pwResult.html("비밀번호를 입력해주세요.");
		}
	}else{
		compareResult = false;
		pwResult.css("color","red");
		pwResult.html("비밀번호가 일치하지 않습니다. 다시 한번 확인해주세요.");
		if(pwd1 == ""){
			pwResult.html("비밀번호를 입력해주세요.").css("color","blue");
		}
	}
}

/*
	회원가입 시 데이터 검증
	(아이디 : 이메일 형식)
	(비밀번호 : 영문자(대소문자 상관없음)+숫자+특수문자 조합으로 8~25자리)
	(전화번호 : 숫자만 입력가능)
*/
function checkForm() {
	let id = $("#mail").val();
	let pw = $(".pw").val();
	let tel = $(".tel").val();
	
	if(id == ""){
		alert("아이디를 입력해주세요.");
		return false;	
	}
	if(pw == ""){
		alert("비밀번호를 입력해주세요.");
		return false;	
	}
	
	let idCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	if(!idCheck.test(id)){
		alert("아이디는 이메일 형식을 사용해야 합니다.");
		return false;
	}
	
	let pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
	if(!pwdCheck.test(pw)){
		alert("비밀번호는 영문자(대소문자 상관없음)+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
		return false;
	}
	
	let telCheck = /^\d{3}\d{3,4}\d{4}$/;
	if(!telCheck.test(tel)){
		alert("전화번호는 숫자만 입력할 수 있습니다.");
		return false;
	}
	
	
	let btnSubmit = $("#btnSubmit");
	if(compareResult != true){
		alert("비밀번호를 확인해주세요.");
		return btnSubmit.attr("type","button");
	}
	return btnSubmit.attr("type","submit");
}

/*
	회원가입 ID 중복확인(새창을 띄워서)
*/
/*
function checkId() {
	window.open("/TravelPackage/login/IdCheck.jsp","_blank","width=500px height=500px");
	
}
*/

/*
function dispCheckId() {
	let idResult = $("#idResult");
}
*/



/*
	회원가입 주소API
*/ 
//본예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode() {
	   new daum.Postcode({
	       oncomplete: function(data) {
	         // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	         // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	         // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	         var roadAddr = data.roadAddress; // 도로명 주소 변수
	         var extraRoadAddr = ''; // 참고 항목 변수
	
	         // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	         // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	         if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	             extraRoadAddr += data.bname;
	         }
	         // 건물명이 있고, 공동주택일 경우 추가한다.
	         if(data.buildingName !== '' && data.apartment === 'Y'){
	            extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	         }
	         // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	         if(extraRoadAddr !== ''){
	             extraRoadAddr = ' (' + extraRoadAddr + ')';
	         }
	
	         // 우편번호와 주소 정보를 해당 필드에 넣는다.
	         document.getElementById('sample4_postcode').value = data.zonecode;
	         document.getElementById("sample4_roadAddress").value = roadAddr;
	         document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	         
	         // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	         if(roadAddr !== ''){
	             document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	         } else {
	             document.getElementById("sample4_extraAddress").value = '';
	         }
	
	         var guideTextBox = document.getElementById("guide");
	         // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	         if(data.autoRoadAddress) {
	             var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	             guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	             guideTextBox.style.display = 'block';
	
	         } else if(data.autoJibunAddress) {
	             var expJibunAddr = data.autoJibunAddress;
	             guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	             guideTextBox.style.display = 'block';
	         } else {
	             guideTextBox.innerHTML = '';
	             guideTextBox.style.display = 'none';
             }
         }
     }).open();
}




