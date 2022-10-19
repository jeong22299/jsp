<%@page import="ch04.vo.BookVO"%>
<%@page import="ch04.dao.BookRepository"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String id = request.getParameter("id");
	
	if(id == null || id.trim().equals("")){
		response.sendRedirect("book.jsp");
		return;
	}
	// 상품 저장소 객체
	BookRepository dao = BookRepository.getInstance();
	
	BookVO book = dao.getBookById(id);
	if(book == null){	// 해당 상품이 없으면 예외처리 페이지로 이동
		response.sendRedirect("exceptinNoBookId.jsp;");
	}

	ArrayList<BookVO> list = (ArrayList<BookVO>) session.getAttribute("cartlist");
	
	if(list == null){
		list = new ArrayList<BookVO>();   // list는 null이므로 여기서 리스트를 생성해주자
		session.setAttribute("cartlist", list);  // cartlist라는 세션 속성 명으로 세션 생성
	}
	
	int cnt = 0;	// 장바구니에 있는 상품이 파라미터로 넘어온 상품코드(id)와 같으면 1 증가
	for(int i=0; i<list.size(); i++){
		if(list.get(i).getBookId().equals(id)){
			cnt++;
		list.get(i).setQuantity(list.get(i).getQuantity()+1);
		}
	}
	
	if(cnt==0){
		book.setQuantity(1);
		list.add(book);
	}
	
	response.sendRedirect("bookDetail.jsp?id=" + id);
%>



















