<%@page import="kr.or.ddit.app.acm.vo.AcommodationVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>

<%
List<AcommodationVO> acmList = (List<AcommodationVO>) request.getAttribute("acmList");

String msg = session.getAttribute("msg") == null ? "" : (String) session.getAttribute("msg");
session.removeAttribute("msg"); // 꺼내온 메시지 속성값 삭제하기
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<div class="container">
		<div class="row mt-4">
			<div id="category" class="col-2 ">
				<script src="../admin/category.js"></script>
			</div>
			<div class="col-9 offset-1 ">

				<div class="col-3 offset-1" style="margin-left: 0px;">
					<select onchange="if(this.value) location.href=(this.value);"
						class="form-select" aria-label="Default select example">
						<option value="0">상품 카테고리</option>
						<option value="../tour/tourList.do">관광상품</option>
						<option value="../vehc/vehcList.do">운송수단</option>
						<option value="../acm/AcmList.do">숙박업소</option>
					</select>
				</div>

				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">숙박업소명</th>
							<th scope="col">구분</th>
							<th scope="col">숙박금액</th>
							<th scope="col">작성자</th>
						</tr>
					</thead>


					<%
					int acmSize = acmList.size();
					int number = 0;
					if (acmSize > 0) {
						for (int i = 0; i < acmSize; i++) {
					%>

					<tr>
						<td><%=acmList.get(i).getAcmId()%></td>
						<td><a
							href="AcmDetail.do?acmId=<%=acmList.get(i).getAcmId()%>"><%=acmList.get(i).getAcmNm()%></a></td>
						<td><%=acmList.get(i).getAcmSe()%></td>
						<td><%=acmList.get(i).getPrice()%></td>
						<td><%=acmList.get(i).getWriter()%></td>


					</tr>

					<%
					}
					} else {
					%>
					<tr>
						<td colspan="5">정보가 없습니다.</td>
					</tr>
					<%
					}
					%>
					<tr>
						<td colspan="6">
							<button onclick="location='AcmInsert.jsp'"
								class="btn btn-outline-primary" style="float: right">등록</button>
						</td>
					</tr>
				</table>
				<%
				if (msg.equals("성공")) {
				%>
				<script>
					alert("정상적으로 처리되었습니다.");
				</script>
				<%
				}
				%>
			</div>
		</div>
	</div>
</body>
</html>
<%@include file="../Footer.jsp"%>