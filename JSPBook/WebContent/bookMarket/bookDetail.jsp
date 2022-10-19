<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ page import="java.util.List"%>
<%@ page errorPage="exceptionNoBookId.jsp" %>
<%@ page import="ch04.vo.BookVO"%>
<%@ page import="ch04.dao.BookRepository"%>
<!DOCTYPE html>
<%
	String id = request.getParameter("id");
	BookRepository bookDAO = BookRepository.getInstance();
	BookVO bookVO = bookDAO.getBookById(id);
%>

<c:set var="bookVO" value="<%=bookVO%>" scope="page" />
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 상세</title>
<script type="text/javascript">
	function addToCart() {
		let result = confirm("상품을 장바구니에 추가하시겠습니까?");
		
		if(result){  // true
			document.addForm.submit();
		}else{	//false
			document.addForm.reset();  // 초기화
		}
	}
</script>
</head>
<body>
	<!-- 머리글에 해당하는 munu.jsp 파일의 내용을 포함하도록 include액션 태그 작성 -->
	<jsp:include page="menu2.jsp" />
	<div class="jumbotron">
		<!-- 내용넣기! -->
		<div class="container">
			<h1 class="display-3">도서 정보</h1>
		</div>
	</div>
	<!-- =========== 상품상세 시작!============ -->
	<div class="container">
		<div class="col" align="left">
			<!-- List<ProductVO> 한 행을 꺼내오면  ProductVO-->
			<div class="row">
				<div class="col-md-4 d-inline-block">
					<img alt="${bookVO.name}" title="${bookVO.name}" class="border"
					src="/resources/images/${bookVO.filename}"  style="width:80%; height: 85%; " />
				</div>
				<div class="d-inline-block" >
					<h3>${bookVO.name}</h3>
					<p>${bookVO.description}</p>
					<p><b>도서코드 : </b> <span class="badge badge-danger">${bookVO.bookId}</p>
					<p><b>출판사 : </b>${bookVO.publisher}</p>
					<p><b>재고수 : </b>${bookVO.unitsInStock}</p>
					<p><b>총 페이지 수 : </b>${bookVO.totalPages}</p>
					<p><b>출판일 : </b>${bookVO.releaseDate}</p>
					<h4>${bookVO.unitPrice}원</h4>
					<p>
						<form name="addForm" action="addBookCart.jsp?id=${bookVO.bookId}" method="post">
							<a href="#" class="btn btn-info" onclick="addToCart()">상품주문&raquo;</a>
							<a href="bookCart.jsp" class="btn btn-warning text-light">장바구니&raquo;</a>
							<a href="book.jsp" class="btn btn-secondary">상품목록&raquo;</a>
						</form>				
					</p>
				</div>	
				<!-- 상품 아이디에 대한 상세 정보 페이지가 연결되도록 상세 정보 버튼 작성 -->
			</div>
		</div>
	</div>
	<!-- =========== 상품 상세 끝 ! =========== -->
	<jsp:include page="footer2.jsp" />
</body>
</html>
</html>