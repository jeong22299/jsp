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
            <title>상품 수정</title>
          
        </head>

        <body>
            <div class="container">
                <div class="row mt-4">
                    <div id="category" class="col-2">
                        <script src="../admin/category.js"></script>
                    </div>

                    <div class="col-9 offset-1">
                       <form action="tourUpdate.do" method="post" enctype="multipart/form-data">
      <input type="hidden" name="tourId" value="<%=tv.getTourId() %>">
      <input type="hidden" name="fileId" value="<%=tv.getAtchFileId() %>">
      <table class="table table-hover">
      <tr>
         <td>I D :</td>
         <td><%=tv.getTourId() %></td>
      </tr>
      <tr>
         <td>관광상품명 :</td>
         <td><input type="text" name="tourNm" value="<%=tv.getTourNm() %>"></td>
      </tr>
      <tr>
         <td>구분 :</td>
         <td><input type="text" name="tourSe" value="<%=tv.getTourSe() %>"></td>
      </tr>
      <tr>
         <td>주소 :</td>
         <td><textarea rows="3" cols="20" name="tourAddr">
            <%=tv.getTourAddr() %>
         </textarea></td>
      </tr>
      <tr>
         <td>가격 :</td>
         <td><input type="text" name="tourPri" value="<%=tv.getTourPri() %>"></td>
      </tr>
      <tr>
         <td>수량 :</td>
         <td><input type="text" name="tourMaxTo" value="<%=tv.getTourMaxTo() %>"></td>
      </tr>
      <tr>
         <td>작성자 :</td>
         <td><input type="text" name="tourWrt" value="<%=tv.getTourWrt() %>"></td>
      </tr>
      <tr>
      <td>
     <td>기존 첨부파일 : </td>
     <%
			if(atchFileList != null){
				for(AtchFileVO fileVO : atchFileList){
			%>
				<div>
					<a href="<%=request.getContextPath()%>/filedown.do?fileId=<%=fileVO.getATCH_FILE_ID()%>&fileSn=<%=fileVO.getATCH_DE_SEQ()%>"><%=fileVO.getATCH_DE_OG() %></a>
				</div> <% 
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
        <%@include file="../Footer.jsp" %>