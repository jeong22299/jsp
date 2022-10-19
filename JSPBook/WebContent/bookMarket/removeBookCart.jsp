<%@page import="ch04.vo.BookVO"%>
<%@page import="ch04.dao.BookRepository"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
// removeCart.jsp?id=P1234
	String id = request.getParameter("id");
	
	// 만약, removeCart.jsp 또는 removeCart.jsp?id=Z1234
	// 1) removeCart.jsp 처리
	if(id == null || id.trim().equals("")){
		response.sendRedirect("book.jsp");
		return;
	}
	
	BookRepository dao = BookRepository.getInstance();
	
	// 2) 상품검색메소드(select * from product where id='Z1234')
	BookVO product = dao.getBookById(id);
	if(product == null){
		response.sendRedirect("exceptionNoBookId.jsp");
		return;
	}
	
	// 장바구니(세션)안에 P1234 상품이 있는지 체크한 후
	// 만약 있다면 장바구니에서 제외 처리
	ArrayList<BookVO> cartlist = (ArrayList<BookVO>) session.getAttribute("cartlist");
	
	for(int i=0; i<cartlist.size(); i++){
		if(cartlist.get(i).getBookId().equals(id)){		// 장바구니 안에 있는 상품의 기본키와 id값 비교
			cartlist.remove(cartlist.get(i));
		}
// 		if(cartlist == 0){
// 			session.invalidate();
// 		}
	}
	
// 	// 장바구니를 확인해보자
// 	for(ProductVO vo : cartlist){
// 		out.print("<p>vo : " + vo.toString() + "/p>");
// 	}
	
	response.sendRedirect("bookCart.jsp");
%>







