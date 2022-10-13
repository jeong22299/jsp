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
<title>공지사항</title>
<style>
    .b{
        border: 1px solid black;
    }
</style>
</head>
<body>
<div class="container">
    <div class="row mt-4">
        <div id="category" class="col-2 b">
        	<script src="/TravelPackage/admin/adminCategory.js"></script>
        </div>
            <div id="content" class="col-9 offset-1 b">
            
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