<%@page import="ch04.dao.BookRepository"%>
<%@page import="ch04.vo.BookVO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<%//스크립틀릿 태그 
	//기본적으로 3개의 상품이 생성되어 있는 객체
	BookRepository bookDAO = BookRepository.getInstance();
	List<BookVO> listOfBooks = bookDAO.getAllBooks();
%>

<c:set var="listOfBooks" value="<%=listOfBooks%>" scope="page" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 목록</title>
</head>
<body>
	<!-- 머리글에 해당하는 munu.jsp 파일의 내용을 포함하도록 include액션 태그 작성 -->
	<jsp:include page="menu2.jsp"/>
	<div class="jumbotron">
		<!-- 내용넣기! -->
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
	<!-- =========== 상품목록 시작!============ -->
	<div class="container">
		 <div>
			<a href="addBook.jsp" class="btn btn-primary btn-sm" style="float: right">도서추가</a>
		</div>	
		<br><br><br>
		<div class="col" align="left">
			<!-- List<ProductVO> 한 행을 꺼내오면  ProductVO-->
			<c:forEach var="bookVO" items="${listOfBooks}">
				<div class="row" >
					<div class="d-inline-block">
						<img alt="${bookVO.name}" title="${bookVO.name}" class="border"
						src="/resources/images/${bookVO.filename}" style="width:100px; height: 150px">
					</div>
					
					<div class="d-inline-block" style="padding-left:20px">
						<h3>${bookVO.name}</h3>
						<p>${bookVO.description}</p>
						<p>${bookVO.author} | ${bookVO.publisher} | ${bookVO.unitPrice}원</p>
						<p><a href="bookDetail.jsp?id=${bookVO.bookId}"
						 class="btn btn-secondary" role="button">상세정보&raquo;</a></p>
						<hr />
					</div>
					<!-- 상품 아이디에 대한 상세 정보 페이지가 연결되도록 상세 정보 버튼 작성 -->
				</div>
			</c:forEach>
		</div>
	</div>
	<!-- =========== 상품목록 끝 ! =========== -->
	<jsp:include page="footer2.jsp" />
</body>
</html>