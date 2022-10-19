<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@page import="ch04.vo.ProductVO"%>
<%@page import="java.util.List"%>
<%@page import="ch04.dao.ProductRepository"%>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<!-- 상품아이디가 없을 때 exceptionNoProductId.jsp를 요청 -->
<!DOCTYPE html>
<%// 스크립틀릿 태그
	String id = request.getParameter("id").toString();
	
	ProductRepository productRepository = ProductRepository.getInstance();

	// 상세보기
	// SELECT * FROM PRODUCT WHERE PRODUCT_ID = 'P1234'
	ProductVO productVO = productRepository.getProductById(id);
// 	out.print("productVO : " + productVO);
%>

<c:set var="productVO" value="<%=productVO %>" scope="page" />
<html>
<head>
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상세 설명</title>
<script type="text/javascript">
	// 상품주문 버튼 클릭 시 실행
	function addToCart() {
		console.log("왔다.");
		let result = confirm("상품을 장바구니에 추가하시겠습니까?");
		
		if(result){  // true
			console.log("true");
			document.addForm.submit();
		}else{	//false
			console.log("false");
			document.addForm.reset();  // 초기화
		}
	}
</script>
</head>
<body>
	<fmt:setLocale value="${param.language}"/>
	<fmt:bundle basename="bundle.message">
	<!-- 머리글에 해당하는 menu.jsp 파일의 내용을 포함하도록
 	include 액션태그를 작성 -->
 	<jsp:include page="menu.jsp" />
 	<div class="jumbotron">
 		<!-- 내용드루와 -->
 		<div class="container">
 			<h1 class="display-3"><fmt:message key="productInformation" /></h1>
 		</div>
 	</div>
 	<!-- =========== 상품 상세 시작 ============ -->
 	
 	<div class="container">
 	 	<div class="text-right">
 			<a href="?id=${param.id}&language=ko">Korea</a>|<a href="?id=${param.id}&language=en">English</a>
 		</div>
 		<div class="row">
 			<div class="col-md-4 d-inline-block">
				<img alt="${productVO.pname}" title="${productVO.pname}" class="border"
				src="/resources/images/${productVO.filename}" style="width:90%; height: 85%;" />
			</div>
			<div class="col-md-6 d-inline-block" align="center">
				<h3>${productVO.pname}</h3>
				<p>${productVO.description}</p>
				<p>
					<b><fmt:message key="productId" /> : </b>
					<span class="badge badge-danger">${productVO.productId}</span>
				</p>
				<p><b><fmt:message key="manufacturer" /> : </b>${productVO.manufacturer}</p>
				<p><b><fmt:message key="category" /> : </b>${productVO.category}</p>
				<p><b><fmt:message key="unitsInStock" /> : </b>${productVO.unitsInStock}</p>
				<h4>${productVO.unitPrice} <fmt:message key="won" /></h4>
				<p>
					<form name="addForm" action="addCart.jsp?id=${productVO.productId}" method="post">
					<!-- 상품주문 => 장바구니에 담기 -->
						<a href="#" class="btn btn-info" onclick="addToCart()"><fmt:message key="order" />&raquo;</a>
					<!-- 장바구니 => 장바구니 목록 확인 -->
						<a href="cart.jsp" class="btn btn-outline-warning">장바구니&raquo;</a>
						<a href="products.jsp" class="btn btn-secondary"><fmt:message key="productList" />&raquo;</a>
					</form>					
				</p>				
			</div>	
		</div>
 	</div>

 	<!-- =========== 상품 상세 끝 ============ -->
	<jsp:include page="footer.jsp" />
	</fmt:bundle>
</body>
</html>








