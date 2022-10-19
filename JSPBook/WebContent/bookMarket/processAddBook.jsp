<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="ch04.vo.BookVO"%>
<%@page import="ch04.dao.BookRepository"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
		request.setCharacterEncoding("UTF-8");

		String path = "E:\\A_TeachingMaterial\\3.HighJava\\workspace\\JSPBook\\WebContent\\resources\\images";

		DiskFileUpload upload = new DiskFileUpload();

		upload.setSizeMax(1000000); 	// 1Mbytes
		upload.setSizeThreshold(4096);	// 메모리 최대 크기(4M)
		upload.setRepositoryPath(path); // 임시 저장 경로

		List items = upload.parseRequest(request);

		Iterator params = items.iterator();
		
		String bookId = "";
		String name = "";
		String unitPrice = "";
		String author = "";
		String publisher = "";
		String totalPages = "";
		String description = "";
		String category = "";
		String unitsInStock = "";
		String releaseDate = "";
		String condition = "";
		int price = 0;
		int stock = 0;
		int pages = 0;
		
		// 업로드 파일명
		String fileName = "";		
		BookRepository dao = BookRepository.getInstance();

		while(params.hasNext()){
			FileItem item = (FileItem)params.next();
			if(item.isFormField()){
				if(item.getFieldName().equals("bookId")){
					bookId = item.getString("UTF-8");
				}else if(item.getFieldName().equals("name")){
					name = item.getString("UTF-8");
				}else if(item.getFieldName().equals("unitPrice")){
					unitPrice = item.getString("UTF-8");
					if(unitPrice.isEmpty()){
						price = 0;
					}else{
						price = Integer.parseInt(unitPrice);
					}
				}else if(item.getFieldName().equals("author")){
					author = item.getString("UTF-8");
				}else if(item.getFieldName().equals("publisher")){
					publisher = item.getString("UTF-8");
				}else if(item.getFieldName().equals("totalPages")){
					totalPages = item.getString("UTF-8");
					if(totalPages.isEmpty()){
						pages = 0;
					}else{
						pages = Integer.parseInt(totalPages);
					}
					
				}else if(item.getFieldName().equals("description")){
					description = item.getString("UTF-8");
				}else if(item.getFieldName().equals("category")){
					category = item.getString("UTF-8");
				}else if(item.getFieldName().equals("unitsInStock")){
					unitsInStock = item.getString("UTF-8");
					if(unitsInStock.isEmpty()){
						stock = 0;
					}else{
						stock = Integer.parseInt(unitsInStock);
					}
				}else if(item.getFieldName().equals("releaseDate")){
					releaseDate = item.getString("UTF-8");
				}else if(item.getFieldName().equals("condition")){
					condition = item.getString("UTF-8");
				}
			} else{
				String fileFieldName = item.getFieldName();	// 요청 파라미터명
				
				fileName = item.getName(); // 저장 파일명()
				String contentType = item.getContentType();	// images/jpeg
				
				fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
				long fileSize = item.getSize(); // 파일 크기
				
				File file = new File(path + "/" + fileName);
				item.write(file);
				
				out.print("-------------------------------------<br>");
				out.print("요청 파라미터 명 : "+ fileFieldName +"<br>" );
				out.print("저장 파일 명 : "+ fileName +"<br>" );
				out.print("파일 콘텐츠 명 : "+ contentType +"<br>" );
				out.print("파일 크기 명 : "+ fileSize +"<br>" );	
			}
		}
		BookVO addBook = new BookVO();
		addBook.setBookId(bookId);
		addBook.setName(name);
		addBook.setUnitPrice(price);
		addBook.setAuthor(author);
		addBook.setPublisher(publisher);
		addBook.setTotalPages(pages);
		addBook.setDescription(description);
		addBook.setCategory(category);
		addBook.setUnitsInStock(stock);
		addBook.setReleaseDate(releaseDate);
		addBook.setCondition(condition);
		addBook.setFilename(fileName);
		dao.addBook(addBook);
		
		response.sendRedirect("book.jsp");
		%>
		      
      
</body>
</html>