<%@page import="kr.or.ddit.app.notice.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>
<%
	List<NoticeVO> noticeList = 
		(List<NoticeVO>) request.getAttribute("noticeList");
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
			<div id="category" class="col-2">
				<script src="../admin/category.js"></script>
			</div>

			<div class="col-9 offset-1">

				<div class="col-3 offset-1" style="margin-left: 0px;">
				<form action="">
					<select onchange="if(this.value) location.href=(this.value);"
						class="form-select" aria-label="Default select example">
						<option value="../notice/noticeList.do">공지사항/ 자주찾는질문</option>
						<option value="../notice/noticeList.do">공지사항</option>
						<option value="../vehc/vehcList.do">자주찾는질문</option>
					</select>
				</form>
				</div>
				          
<table class="table table-hover">
<thead>
	<tr>
		<th scope="col">ID</th>
		<th scope="col">구분</th>
		<th scope="col">제목</th>
		<th scope="col">작성자</th>
		<th scope="col">작성일</th>
	</tr>
	</thead>
<%
int noticeSize = noticeList.size();
if(noticeSize > 0){
	for(int i=0; i<noticeSize; i++){
%>
	<tr>
		<td><%=noticeList.get(i).getNoticeId()%> </td>
		<td><%=noticeList.get(i).getNoticeSe()%> </td>
		<td><a href="./noticeDetail.do?noticeId=<%=noticeList.get(i).getNoticeId()%>"><%=noticeList.get(i).getNoticeTitle()%> </a></td>
		<td><%=noticeList.get(i).getNoticeWrt()%> </td>
		<td><%=noticeList.get(i).getNoticeRd()%> </td>
	</tr>
<%
	}
}else{
%>
	<tr>
		<td colspan="5">공지사항이 없습니다.</td>
	</tr>
<%} %>
	<tr>
		<td colspan="5">
		<button onclick="location='noticeInsert.jsp'" class="btn btn-outline-primary"  style="float: right">등록</button> 
		</td>
	</tr>
</table>
				
			</div>
		</div>
	</div>
</body>

</html>
<%@include file="../Footer.jsp"%>