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
            <title>교통수단 상세정보</title>
          
        </head>

        <body>
            <div class="container">
                <div class="row mt-4">
                    <div id="category" class="col-2">
                        <script src="../admin/category.js"></script>
                    </div>

                    <div class="col-9 offset-1">
                   <table class="table table-hover">
<thead>
	<tr>
		<td>I	D</td>
		<td><%=vh.getVehcId()%></td>
	</tr>
</thead>
	<tr>
		<td>교통수단 회사명</td>
		<td><%=vh.getVehcComp()%></td>
	</tr>
	<tr>
		<td>구분</td>
		<td><%=vh.getVehcSe()%></td>
	</tr>
	<tr>
		<td>교통수단명</td>
		<td><%=vh.getVehcNm()%></td>
	</tr>
	<tr>
		<td>가격</td>
		<td><%=vh.getVehcdp()%></td>
	</tr>
	<tr>
		<td>작성자</td>
		<td><%=vh.getVehcWrt()%></td>
	</table>
	<div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="float: right">
			<button onclick="location.href = 'vehcList.do'" class="btn btn-outline-primary" >목록</button> 
			<button onclick="location.href = 'vehcUpdate.do?vehcId=<%=vh.getVehcId()%>'" class="btn btn-outline-primary" >수정</button> 
			<button onclick="location.href = 'delete.do?vehcId=<%=vh.getVehcId()%>'" class="btn btn-outline-primary"  >삭제</button>
	</div>		 		
                    </div>
                </div>
            </div>
        </body>

        </html>
        <%@include file="../Footer.jsp" %>