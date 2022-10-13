<%@page import="kr.or.ddit.app.notice.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>         
<%
	NoticeVO nv = (NoticeVO) request.getAttribute("noticeVo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세</title>
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
		<td>I	D</td>
		<td><%=nv.getNoticeId()%></td>
	</tr>
</thead>
	<tr>
		<td>구분</td>
		<td><%=nv.getNoticeSe()%></td>
	</tr>
	<tr>
		<td>제목</td>
		<td><%=nv.getNoticeTitle()%></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><%=nv.getNoticeCont()%></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><%=nv.getNoticeWrt()%></td>
	</tr>

		<td colspan="2">
			<a href="noticeList.do">[목록]</a>
			<a href="noticeUpdate.do?noticeId=<%=nv.getNoticeId()%>">[수정]</a>
			<a href="delete.do?noticeId=<%=nv.getNoticeId()%>">[삭제]</a>
		</td>
	</tr>	
	</table>
		</div>
	</div>
</div>
</body>
</html>
<%@include file="../Footer.jsp"%>