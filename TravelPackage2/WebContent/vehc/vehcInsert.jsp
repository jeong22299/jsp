<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../Header.jsp" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>교통수단 등록</title>
          
        </head>

        <body>
            <div class="container">
                <div class="row mt-4">
                    <div id="category" class="col-2">
                        <script src="../admin/category.js"></script>
                    </div>

                    <div class="col-9 offset-1">
            <form action="vehcInsert.do" method="post" enctype="multipart/form-data">
				<table class="table table-hover">
				<tr>
					<td>교통수단 회사명</td>
					<td><input type="text" name="vehcComp" value=""></td>
				</tr>
				<tr>
					<td>구분</td>
					<td><input type="text" name="vehcSe" value=""></td>
				</tr>
				<tr>
					<td>교통수단명</td>
					<td><input type="text" name="vehcNm" value=""></td>
				</tr>
				<tr>
					<td> 단위거리 가격</td>
					<td><input type="text" name="vehcDp" value=""></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="vehcWrt" value=""></td>
				</tr>
				</table>
				<button class="btn btn-outline-primary"  style="float: right">등록</button>
			</form>
                    </div>
                </div>
            </div>
        </body>

        </html>
        <%@include file="../Footer.jsp" %>