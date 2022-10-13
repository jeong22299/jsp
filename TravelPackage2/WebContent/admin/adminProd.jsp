<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>상품 리스트</title>

</head>

<body>
	<div class="container">
		<div class="row mt-4">
			<div id="category" class="col-2">
				<script src="../admin/category.js"></script>
			</div>

			<div class="col-2 offset-1">
				<select onchange="if(this.value) location.href=(this.value);" class="form-select" aria-label="Default select example">
					<option value="0">상품 카테고리</option>
					<option value="../tour/tourList.do">관광상품</option>
					<option value="../vehc/vehcList.do">운송수단</option>
					<option value="../acm/AcmList.do">숙박업소</option>
				</select>
			</div>
		</div>
	</div>
</body>

</html>
<%@include file="../Footer.jsp"%>