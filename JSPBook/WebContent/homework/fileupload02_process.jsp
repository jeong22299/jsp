<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page contentType="text/html; charset=UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%
	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	MultipartRequest multipartRequest = new MultipartRequest(request,"C:\\upload", 10*1024*1024, "utf-8", policy);
// 	String file = (String)multipartRequest.getFileNames().nextElement();

	Enumeration param = multipartRequest.getFileNames();
	
	// 폼 필드 내에 객체가 있을때까지 반복
	// param : <input type="file" name="file1">
	while(param.hasMoreElements()){
		
		// 요청 파라미터 이름 : file1
		String file = (String)param.nextElement();
		// 실제 파일 이름 : cake03.jpg
		String original = multipartRequest.getOriginalFileName(file);
		// 저장 파일 이름 : 	
		String filename = multipartRequest.getFilesystemName(file);
		// 파일콘텐츠유형
		String type = multipartRequest.getContentType(file);
		// 파일 크기 : 7548
		
		File files = multipartRequest.getFile(file);
%>

<%-- <p> 요청 파라미터 이름 :  <%= file %> --%>
<%-- <p> 실제 파일 이름 : <%= multipartRequest.getOriginalFileName(file) %> --%>
<%-- <p> 저장 파일 이름 : <%= multipartRequest.getFilesystemName(file) %> --%>
<%-- <p> 파일 콘텐츠 유형 : <%= multipartRequest.getContentType(file) %> --%>
<%-- <p> 파일 크기 : <%= file.length() %> --%>
<p> 요청 파라미터 이름 :  <%=file %>
<p> 실제 파일 이름 : <%= original %>
<p> 저장 파일 이름 : <%= filename %>
<p> 파일 콘텐츠 유형 : <%= type %>
<%
	if(files != null){
		out.print("<p> 파일크기 : " + files.length() + "</p>");
	}
	}
%>