<!-- 지우고 IMPORT 삽입 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>
<!-- 지우고 본문상단 삽입 -->
<!-- 지우고 본문상단 삽입 -->
<!-- 지우고 본문상단 삽입 -->
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>
	<div class="container">
		<div class="row mt-4">
			<div id="category" class="col-2">
				<script src="../admin/category.js"></script>
			</div>

			<div class="col-9 offset-1">

				<div class="col-3 offset-1" style="margin-left: 0px;">
					<select onchange="if(this.value) location.href=(this.value);"
						class="form-select" aria-label="Default select example">
						<option value="0">카테고리</option>
						<option value="../tour/tourList.do">1</option>
						<option value="../vehc/vehcList.do">2</option>
						<option value="../acm/AcmList.do">3</option>
					</select>
				</div>
				<!-- 지우고 본문 ex) <table>, <form> 삽입 -->
				<!-- 지우고 본문 ex) <table>, <form> 삽입 -->
				<!-- 지우고 본문 ex) <table>, <form> 삽입 -->
			</div>
		</div>
	</div>
</body>

</html>
<%@include file="../Footer.jsp"%>