<%@page import="ch04.vo.BookVO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.math.BigDecimal"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="ch04.vo.ProductVO"%>
<%@ page import="java.net.URLDecoder"%>
<% 
	String Shipping_cartId = "";
	String Shipping_name = "";
	String Shipping_shippingDate = "";
	String Shipping_country = "";
	String Shipping_zipCode = "";
	String Shipping_addressName = "";
	
	// request객체에 있는 모든 쿠키 객체를 받자
	Cookie[] cookies = request.getCookies();
	// 쿠키의 개수만큼 반복
	for(int i=0; i<cookies.length; i++){
		Cookie thisCookie = cookies[i];
		
// 		out.print(thisCookie.getName() + "<br>");	// 쿠키 이름 가져옴
// 		out.print(URLDecoder.decode(thisCookie.getValue()) + "<br>");	// 쿠키 값 가져옴
		if(thisCookie.getName().equals("Shipping_name")){
			Shipping_name = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_shippingDate")){
			Shipping_shippingDate = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_country")){
			Shipping_country = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_zipCode")){
			Shipping_zipCode = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_addressName")){
			Shipping_addressName = URLDecoder.decode(thisCookie.getValue());
		}
		if(thisCookie.getName().equals("Shipping_cartId")){
			Shipping_cartId = URLDecoder.decode(thisCookie.getValue());
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<title>주문 정보</title>
</head>
<body>
	<jsp:include page="menu2.jsp" />
 	<div class="jumbotron">
 		<div class="container"> <!-- 안에 내용있다. -->
 			<h1 class="display-3">주문 정보</h1>
 		</div>
 	</div>	
 	 <!-- -------------주문정보 시작 -------------------- -->
 	 <div class="container col-8 alert alert-info">
 	 	<div class="text-center">
 	 		<h1>영수증</h1>
 	 	</div>
 	 <!-- 고객정보 시작 : cookie 사용 -->
 	 	<div class="row justify-content-between">
 	 		<strong>배송 주소</strong>
 	 		성명 : <%=Shipping_name%> <br>	
 	 		우편번호 : <%=Shipping_zipCode%> <br>	
 	 		주소 : <%=Shipping_addressName%><br>	
 	 	</div>
 	 	<div class="col-4" align="right">
 	 		<p>
 	 			<em>배송일 : <%=Shipping_shippingDate%></em>
 	 		</p>
 	 	</div>
 	 	<!-- 고객정보 끝 -->
 	 	<!-- 상품정보 시작 : session 사용 -->
 	 	<div>
 	 		<table class="table table-hover">
 	 			<tr>
 	 				<th class="text-center">도서명</th>
 	 				<th class="text-center">#</th>
 	 				<th class="text-center">가격</th>
 	 				<th class="text-center">소계</th>
 	 			</tr>
 	 		<%
 	 			double sum = 0;
 	 			// cartlist라는 이름의 장바구니(=세션)
 	 			ArrayList<BookVO> cartList = 
 	 			(ArrayList<BookVO>) session.getAttribute("cartlist");
 	 			// 상품 목록을 하나씩 출력 해보자
 	 			for(int i=0; i<cartList.size();i++){
 	 				BookVO book = cartList.get(i);	// 상품을 목록에서 하나 꺼냄
 	 				// 얼마를 몇개 샀니
 	 				double total = book.getUnitPrice() * book.getQuantity();
 	 				BigDecimal totalBig = new BigDecimal(total);
 	 				sum += total;
 	 		%>
 	 			<tr>
 	 				<td class="text-center"><em><%=book.getName()%></em></td>
 	 				<td class="text-center"><%=book.getQuantity()%></td>
 	 				<td class="text-center"><fmt:formatNumber value="<%=book.getUnitPrice()%>" pattern="#,###"/> 원</td>
 	 				<td class="text-center">
 	 					<fmt:formatNumber value="<%=totalBig%>" pattern="#,###"/> 원</td>
 	 			</tr>
 	 		<%
 	 			}
 	 			BigDecimal bdm = new BigDecimal(sum);
 	 		%>
 	 			<tr>
 	 				<td></td>
 	 				<td></td>
 	 				<td class="text-right"><strong>총액:</strong></td>
 	 				<td class="text-center text-danger"><strong><fmt:formatNumber value="<%=bdm%>" pattern="#,###"/>원</strong></td>
 	 			</tr>
 	 		</table>
 	 		
 	 		<a href="bookShippingInfo.jsp?cartId=<%=Shipping_cartId%>" 
 	 			class="btn btn-secondary" role="button">이전</a>
 	 		<a href="thankBookCustomer.jsp" class="btn btn-success"
 	 			role="button">주문완료</a>
 	 		<a href="bookCheckOutCancelled.jsp" class="btn btn-secondary"
 	 			role="button">취소</a>
 	 	</div>
 	 	<!-- 상품정보 끝 : session 사용 -->
 	 </div>
 	 <!-- -------------주문정보 끝 -------------------- -->
 	<jsp:include page="footer2.jsp" />
</body>
</html>