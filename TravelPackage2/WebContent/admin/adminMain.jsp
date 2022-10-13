<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@include file ="../Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<div src="../admin/category.js"></div>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
	<div class="d-flex align-items-start">
		<div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		  <button onclick = "location.href = '../acm/AcmList.do' " class="nav-link active text-dark" id="v-pills-mem-tab" data-bs-toggle="pill" data-bs-target="#v-pills-mem" type="button" role="tab" aria-controls="v-pills-mem" aria-selected="true" >회원관리</button>
		  <button class="nav-link text-dark"  data-bs-toggle="pill" data-bs-target="#v-pills-prod" type="button" role="tab" aria-controls="v-pills-prod" aria-selected="false">상품관리</button>
		  <button class="nav-link text-dark" id="v-pills-tab" data-bs-toggle="pill" data-bs-target="#v-pills-review" type="button" role="tab" aria-controls="v-pills-review" aria-selected="false">상품리뷰관리</button>
		  <button class="nav-link text-dark" id="v-pills-tab" data-bs-toggle="pill" data-bs-target="#v-pills-rsv" type="button" role="tab" aria-controls="v-pills-rsv" aria-selected="false">예약확정/취소</button>
		  <button class="nav-link text-dark" id="v-pills-tab" data-bs-toggle="pill" data-bs-target="#v-pills-sale" type="button" role="tab" aria-controls="v-pills-sale" aria-selected="false">매출현황</button>
		  <button class="nav-link text-dark" id="v-pills-tab" data-bs-toggle="pill" data-bs-target="#v-pills-qna" type="button" role="tab" aria-controls="v-pills-qna" aria-selected="false">고객센터 관리</button>
		</div>
	  </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
<%@include file ="../Footer.jsp" %>