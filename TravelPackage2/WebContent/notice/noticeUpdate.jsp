<%@page import="kr.or.ddit.app.notice.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>        
<%
NoticeVO nv = (NoticeVO) request.getAttribute("nv");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
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
        <form action="noticeUpdate.do" method="post" enctype="multipart/form-data">
       	<input type="hidden" name="noticeId" value="<%=nv.getNoticeId()%>">
        	<table>
        		<tr>
					<td>I  D :</td>
					<td><%=nv.getNoticeId()%></td>
				</tr>
        		<tr>
					<td>구분</td>
					<td><input type="text" name="noticeSe" value="<%=nv.getNoticeSe()%>"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="noticeTitle" value="<%=nv.getNoticeTitle()%>"></td>
				</tr>
				<tr>
					<td> 내용</td>
					<td><input type="text" name="noticeCont" value="<%=nv.getNoticeCont()%>"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="noticeWrt" value="<%=nv.getNoticeWrt()%>"></td>
				</tr>
        	</table>
				<input type="submit" value="수정">
				<button type="submit" onclick="location='noticeList.jsp'" class="btn btn-outline-primary"  style="float: right">수정</button>
        </form>
		</div>
	</div>
</div>        
</body>
</html>
<%@include file="../Footer.jsp"%>