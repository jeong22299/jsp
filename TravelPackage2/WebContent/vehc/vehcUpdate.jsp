<%@page import="kr.or.ddit.app.vehc.vo.VehcVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../Header.jsp" %>
        
<% 
	VehcVO vh = (VehcVO) request.getAttribute("vehc");
%>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>교통수단 수정</title>
          
        </head>

        <body>
            <div class="container">
                <div class="row mt-4">
                    <div id="category" class="col-2">
                        <script src="../admin/category.js"></script>
                    </div>

                    <div class="col-9 offset-1">
                     <form action="vehcUpdate.do" method="post" enctype="multipart/form-data">
		<input type="hidden" name="vehcId" value="<%=vh.getVehcId()%>">
		<table class="table table-hover">
		<tr>
			<td>I  D :</td>
			<td><%=vh.getVehcId()%></td>
		</tr>
		<tr>
			<td>교통수단 회사명</td>
			<td><input type="text" name="vehcComp" value="<%=vh.getVehcComp()%>"></td>
		</tr>
		<tr>
			<td>구분</td>
			<td><input type="text" name="vehcSe" value="<%=vh.getVehcSe()%>"></td>
		</tr>
		<tr>
			<td>교통수단명</td>
			<td><input type="text" name="vehcNm" value="<%=vh.getVehcNm()%>"></td>
		</tr>
		<tr>
			<td> 단위거리 가격</td>
			<td><input type="text" name="vehcDp" value="<%=vh.getVehcdp()%>"></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="vehcWrt" value="<%=vh.getVehcWrt()%>"></td>
		</tr>
		</table>
		<button class="btn btn-outline-primary"  style="float: right">수정</button>
		
	</form>
                    </div>
                </div>
            </div>
        </body>

        </html>
        <%@include file="../Footer.jsp" %>