<%@page import="kr.or.ddit.app.common.vo.AtchFileVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.app.acm.vo.AcommodationVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>
<%
	AcommodationVO acmv = (AcommodationVO) request.getAttribute("acmv");

List<AtchFileVO> atchFileList = (List<AtchFileVO>) request.getAttribute("atchFileList");
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>상품 수정</title>

</head>

<body>
	<div class="container">
		<div class="row mt-4">
			<div id="category" class="col-2">
				<script src="../admin/category.js"></script>
			</div>

			<div class="col-9 offset-1">
				<form action="AcmUpdate.do" method="post"
					enctype="multipart/form-data">
					<input type="hidden" name="acmId" value="<%=acmv.getAcmId()%>">
					<input type="hidden" name="fileId"
						value="<%=acmv.getAtchFileId()%>">
					<table class="table table-hover">
						<tr>
							<td>I D :</td>
							<td><%=acmv.getAcmId()%></td>
						</tr>
						<tr>
							<td>숙박업소명 :</td>
							<td><input type="text" name="acmNm"
								value="<%=acmv.getAcmNm()%>"></td>
						</tr>
						<tr>
							<td>구분 :</td>
							<td><input type="text" name="acmSe"
								value="<%=acmv.getAcmSe()%>"></td>
						</tr>
						<tr>
							<td>주소 :</td>
							<td><textarea rows="3" cols="20" name="Addr">
            <%=acmv.getAddr()%>
         </textarea></td>
						</tr>
						<tr>
							<td>가격 :</td>
							<td><input type="text" name="Price"
								value="<%=acmv.getPrice()%>"></td>
						</tr>
						<tr>
							<td>수량 :</td>
							<td><input type="text" name="Qty"
								value="<%=acmv.getQty()%>"></td>
						</tr>
						<tr>
							<td>작성자 :</td>
							<td><input type="text" name="Writer"
								value="<%=acmv.getWriter()%>"></td>
						</tr>
						<tr>
							<td>
							<td>기존 첨부파일 :</td>
							<%
								if (atchFileList != null) {
								for (AtchFileVO fileVO : atchFileList) {
							%>
							<div>
								<a
									href="<%=request.getContextPath()%>/filedown.do?fileId=<%=fileVO.getATCH_FILE_ID()%>&fileSn=<%=fileVO.getATCH_DE_SEQ()%>"><%=fileVO.getATCH_DE_OG()%></a>
							</div>
							<%
								}
							}
							%>
							</td>
						</tr>
						<tr>
							<td>첨부파일1 :</td>
							<td><input type="file" name="atchFile" multiple="multiple"></td>
						</tr>
					</table>
					<input type="submit" value="상품정보수정">
				</form>
			</div>
		</div>
	</div>
</body>

</html>
<%@include file="../Footer.jsp"%>