<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../Header.jsp" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>관광상품 등록</title>
          
        </head>

        <body>
            <div class="container">
                <div class="row mt-4">
                    <div id="category" class="col-2">
                        <script src="../admin/category.js"></script>
                    </div>

                    <div class="col-9 offset-1">
                        <form action="tourInsert.do" method="post" enctype="multipart/form-data">
		<table class="table table-hover">
		<tr>
			<td>관광상품명</td>
			<td><input type="text" name="tourNm" value=""></td>
		</tr>
		<tr>
			<td>관광상품구분</td>
			<td><input type="text" name="tourSe" value=""></td>
		</tr>
		<tr>
			<td>관광상품주소</td>
			<td><input type="text" name="tourAddr" value=""></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><input type="text" name="tourPri" value=""></td>
		</tr>
		<tr>
			<td>최대 인원</td>
			<td><input type="text" name="tourMaxTo"  value=""></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="tourWrt" value=""></td>
		</tr>
		<tr>
			<td>첨부파일</td>
			<td><input type="file" name="atchFileId" multiple="multiple"></td>
		</tr>
		</table>
		<input type="submit" value="관광등록">
	</form>
                    </div>
                </div>
            </div>
        </body>

        </html>
        <%@include file="../Footer.jsp" %>