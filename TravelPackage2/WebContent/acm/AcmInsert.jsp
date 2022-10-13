<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../Header.jsp" %>
      <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규 숙박업소 등록</title>
           
        </head>

        <body>
            <div class="container">
                <div class="row mt-4">
                    <div id="category" class="col-2">
                        <script src="../admin/category.js"></script>
                    </div>

                    <div class="col-9 offset-1">
                      <form action="AcmInsert.do" method="post" enctype="multipart/form-data">
		<table class="table table-hover">
			
			<tr>
				<td>숙박업소명 :</td>
				<td><input type="text" name="acmNm" value=""></td>
			</tr>
			<tr>
				<td>구분 :</td>
				<td><input type="text" name="acmSe" value=""></td>
			</tr>
			<tr>
				<td>주소 :</td>
				<td><textarea rows="3" cols="20" name="Addr"></textarea></td>
			</tr>
			<tr>
				<td>투숙금액 :</td>
				<td><textarea rows="1" cols="10" name="Price"></textarea></td>
			</tr>
			<tr>
				<td>객실수 :</td>
				<td><textarea rows="1" cols="5" name="Qty"></textarea></td>
			</tr>
			<tr>
				<td>게시글작성자 :</td>
				<td><textarea rows="1" cols="5" name="Writer"></textarea></td>
			</tr>
			<tr>
				<td>첨부파일 :</td>
				<td><input type="file" name="atchFileId"></td>
			</tr>
			
		</table>
		<input type="submit" value="상품등록">
	</form>
                    </div>
                </div>
            </div>
        </body>

        </html>
        <%@include file="../Footer.jsp" %>