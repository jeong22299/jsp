<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>         
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 등록</title>
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
	<form action="noticeInsert.do" method="post" enctype="multipart/form-data" >
		<table>
		<tr>
			<td>구분</td>
			<td>
			<select name="noticeSe">
				<option value="0">구분을 선택하세요</option>
				<option value="공지사항">공지사항</option>
				<option value="자주찾는질문">자주찾는질문</option>
			</select>
			</td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" name="noticeTitle" value=""></td>
		</tr>
		<tr>
			<td> 내용</td>
			<td><input type="text" name="noticeCont" value=""></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="noticeWrt" value=""></td>
		</tr>
		</table>
		<button class="btn btn-outline-primary"  style="float: right">등록</button>
	</form>
		</div>
	</div>
</div> 

</body>
</html>
<%@include file="../Footer.jsp"%>