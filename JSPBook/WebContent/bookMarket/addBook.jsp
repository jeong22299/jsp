<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<script src="/resources/js/bookValidation.js"></script>
<title>도서 등록</title>
</head>
<body>
	<fmt:setLocale value="${param.language}"/>
	<fmt:bundle basename="bundle.bookMessage">
	<!-- 머리글에 해당하는 munu.jsp 파일의 내용을 포함하도록 include액션 태그 작성 -->
	<jsp:include page="menu2.jsp" />
	<div class="jumbotron">
		<!-- 내용넣기! -->
		<div class="container"> 
			<div class="text-right">
				<a href="logout.jsp">로그아웃</a>
			</div>
			<h1 class="display-3"><fmt:message key="title" /></h1>
		</div>
	</div>
	<!-- =========== 상품 상세 시작!============ -->
	<div class="container">
	 	 <div class="btn-group btn-group-sm d-md-flex justify-content-md-end " >
 			<a href="?id=${param.id}&language=ko" class="btn btn-primary">한국어</a><a class="btn btn-success" href="?id=${param.id}&language=en">English</a>
 		</div>
		<form name="newBook" action="processAddBook.jsp"
 			  class="form-horizontal" method="post" enctype="multipart/form-data">
 			  <div class="form-group row">
 			  	<label class="col-sm-2"><fmt:message key="bookId" /></label>
 			  	<div class="col-sm-3">
 			  		<input type="text" id="bookId" name="bookId" class="form-control">
 			  	</div>
 			  </div>
 			  <div class="form-group row">
 			  	<label class="col-sm-2"><fmt:message key="name" /></label>
 			  	<div class="col-sm-3">
 			  		<input type="text" id="name" name="name" class="form-control">
 			  	</div>
 			  </div>
 			  <div class="form-group row">
 			  	<label class="col-sm-2"><fmt:message key="unitPrice" /></label>
 			  	<div class="col-sm-3">
 			  		<input type="text" id="unitPrice" name="unitPrice" class="form-control">
 			  	</div>
 			  </div>
 			  <div class="form-group row">
 			  	<label class="col-sm-2"><fmt:message key="author" /></label>
 			  	<div class="col-sm-3">
 			  		<input type="text" name="author" class="form-control">
 			  	</div>
 			  </div>
 			  <div class="form-group row">
 			  	<label class="col-sm-2"><fmt:message key="description" /></label>
 			  	<div class="col-sm-3">
 			  		<textarea name="description" rows="2" cols="50" class="form-control"></textarea>
 			  	</div>
 			  </div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="publisher" /></label>
				<div class="col-sm-3">
					<input type="text" name="publisher" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="category" /></label>
				<div class="col-sm-3">
					<input type="text" name="category" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="unitsInStock" /></label>
				<div class="col-sm-3">
					<input type="text" id="unitsInStock" name="unitsInStock" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="totalPages" /></label>
				<div class="col-sm-3">
					<input type="text" name="totalPages" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="releaseDate" /></label>
				<div class="col-sm-3">
					<input type="text" name="releaseDate" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="condition" /></label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New"><fmt:message key="condition_New" /> 
					<input type="radio" name="condition" value="Old"><fmt:message key="condition_Old" />  
					<input type="radio" name="condition" value="Refurbished" ><fmt:message key="conditon_Refurbished" />
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="bookImeage" /></label>
				<div class="col-sm-3">
					 <input type="file" name="filename" value="찾아보기...">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="button" class="btn btn-primary" value="<fmt:message key='button' />" onclick="CheckAddBook()">
					<a href="book.jsp" class="btn btn-secondary"><fmt:message key="productList" /></a>
				</div>
			</div>
		</form>

	</div>
	<!-- =========== 상품 상세 끝 ! =========== -->
	<jsp:include page="footer2.jsp" />
	</fmt:bundle>
</body>
</html>
</html>