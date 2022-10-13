<%@page import="kr.or.ddit.app.vehc.vo.VehcVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../Header.jsp"%>
<%
List<VehcVO> vehcList = (List<VehcVO>) request.getAttribute("vehcList");
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

	<div class="container">
		<div class="row mt-4">
			<div id="category" class="col-2">
				<script src="../admin/category.js"></script>
			</div>

			<div class="col-9 offset-1">

				<div class="col-3 offset-1" style="margin-left: 0px;">
					<select onchange="if(this.value) location.href=(this.value);"
						class="form-select" aria-label="Default select example">
						<option value="0">상품 카테고리</option>
						<option value="../tour/tourList.do">관광상품</option>
						<option value="../vehc/vehcList.do" selected="selected">운송수단</option>
						<option value="../acm/AcmList.do">숙박업소</option>
					</select>
				</div>

				<table class="table table-hover">

					<tr>
						<th scope="col">ID</th>
						<th scope="col">교통수단 회사명</th>
						<th scope="col">구분</th>
						<th scope="col">교통수단명</th>
						<th scope="col">가격</th>
						<th scope="col">작성자</th>
						<th scope="col">삭제</th>
					</tr>
					<%
					int vehcSize = vehcList.size();
					if (vehcSize > 0) {
						for (int i = 0; i < vehcSize; i++) {
					%>
					<tr>
						<td><%=vehcList.get(i).getVehcId()%></td>
						<td><a href="vehcDetail.do?vehcId=<%=vehcList.get(i).getVehcId()%>"><%=vehcList.get(i).getVehcComp()%></a></td>
						<td><%=vehcList.get(i).getVehcSe()%></td>
						<td><%=vehcList.get(i).getVehcNm()%></td>
						<td><%=vehcList.get(i).getVehcdp()%></td>
						<td><%=vehcList.get(i).getVehcWrt()%></td>
						<td><input id="allCheck" type="checkbox" name="check" value="<%=vehcList.get(i).getVehcId()%>"/></td>
					</tr>
					<%
					}
					} else {
					%>
					<tr>
						<td colspan="7">교통수단 정보가 없습니다.</td>
					</tr>
					<%
					}
					%>
					<tr>
				</table>
				<div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="float: right">
				<button  onclick="location='vehcInsert.jsp'"
						class="btn btn-outline-primary" style="float: right">등록</button>
				<button id="delete" onsubmit="return location.href ='delete.do?vehcId='f_del()"
						class="btn btn-outline-primary" style="float: right">삭제</button>	
				</div>
			</div>
		</div>
	</div>
<script type="text/javascript">
	var id = document.querySelector("#allCheck");
    function f_check(){
        // 체크된 체크박스의 value값 가져오기 
        var v_checkedVals = []; // 빈 배열
        for(var i=0; i< id.length; i++){
            if(id[i].checked){
                v_checkedVals.push(id[i].value);
            }
       }
    }
    alert(f_check)
    function f_delete(){
    	
    }
    console.log(f_check());
</script>
</body>

</html>
<%@include file="../Footer.jsp"%>