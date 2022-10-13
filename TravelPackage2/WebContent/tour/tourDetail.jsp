<%@page import="kr.or.ddit.app.common.vo.AtchFileVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.or.ddit.app.tour.vo.TourVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@include file="../Header.jsp" %>
    <%
TourVO tv = (TourVO) request.getAttribute("tv");

	List<AtchFileVO> atchFileList = 
			(List<AtchFileVO>)request.getAttribute("atchFileList");
%>
    
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>상세 정보</title>
          
        </head>

        <body>
            <div class="container">
                <div class="row mt-4">
                    <div id="category" class="col-2">
                        <script src="../admin/category.js"></script>
                    </div>

                    <div class="col-9 offset-1">
                      <table class="table table-hover">
		<tr>
			<td>관광상품ID :</td>
			<td><%=tv.getTourId()%></td>
		</tr>
		<tr>
			<td>상품명 :</td>
			<td><%=tv.getTourNm()%></td>
		</tr>
		<tr>
			<td>구분 :</td>
			<td><%=tv.getTourSe()%></td>
		</tr>
		<tr>
			<td>주소 :</td>
			<td><%=tv.getTourAddr()%></td>
		</tr>
		<tr>
			<td>상품가격 :</td>
			<td><%=tv.getTourPri()%></td>
		</tr>
		<tr>
			<td>최대인원 :</td>
			<td><%=tv.getTourMaxTo()%></td>
		</tr>
		<tr>
			<td>등록수정일자 :</td>
			<td><%=tv.getTourRd()%></td>
		</tr>
		<tr>
			<td>작성자 :</td>
			<td><%=tv.getTourWrt()%></td>
		</tr>
		<tr>
			<td>기존 첨부파일 :</td>
			<td>
				<%
			if(atchFileList != null){
				for(AtchFileVO fileVO : atchFileList){
			%>
				<div>
					<a href="<%=request.getContextPath()%>/filedown.do?fileId=<%=fileVO.getATCH_FILE_ID() %>&fileSn=<%=fileVO.getATCH_DE_SEQ() %>"><%=fileVO.getATCH_DE_OG() %></a>
				</div> <% 
				}
			}
			%>
			</td>
		</tr>
		
		<tr>
			<td colspan="2"><a href="tourList.do">[목록]</a> <a
				href="tourUpdate.do?tourId=<%=tv.getTourId()%>">[정보 수정]</a> <a
				href="tourDelete.do?tourId=<%=tv.getTourId()%>">[정보 삭제]</a></td>
		</tr>
	</table>
                    </div>
                </div>
            </div>
        </body>

        </html>
        <%@include file="../Footer.jsp" %>