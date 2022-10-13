<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/headers/">
<link href="/TravelPackage/assets/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="/TravelPackage/css/headers.css" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500;700&display=swap" rel="stylesheet">
<style>
  *{
    margin: 0;
    padding: 0;
    font-family: 'Noto Sans KR', sans-serif;
  }
</style>

</head>
<body>
    <nav class="py-1">
        <div class="container d-flex flex-wrap">
          <ul class="nav me-auto">
          </ul>
          <ul class="nav">
            <li class="nav-item"><a href="/TravelPackage/login/login.jsp" class="nav-link link-dark px-2">로그인</a></li>
            <li class="nav-item"><a href="/TravelPackage/login/SignUp.jsp" class="nav-link link-dark px-2">회원가입</a></li>
          </ul>
        </div>
      </nav>
      <header class="py-3 mb-0 border-bottom">
        <div class="container d-flex flex-wrap justify-content-center">
          <a href="/TravelPackage" class="d-flex align-items-center mb-3 mb-lg-0 me-lg-auto text-dark text-decoration-none">
            <img src="/TravelPackage/image/icon.png" width="150" height="40" >
          </a>
          <form class="col-12 col-lg-5 mb-3 mb-lg-0 d-flex align-items">
            <input type="search" class="form-control" style="display: inline-block;" placeholder="검색어를 입력하세요.">
            <button type="submit" class="btn"><img src="/TravelPackage/image/search.png" width="30" height="30"></button>
          </form>
        </div>
      </header>
      <nav class="navbar navbar-expand-lg navbar-light  border-bottom" aria-label="Eighth navbar example">
		  <div class="container">
			    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			
			    <div class="collapse navbar-collapse justify-content-center" id="navbarsExample07">
			      <ul class="navbar-nav">
			        <li class="nav-item">
			          <a class="nav-link active px-4" aria-current="page" href="/TravelPackage">상품추천</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link active px-4" href="/TravelPackage/Search.jsp">여행상품</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link active px-4" href="#">고객센터</a>
			        </li>
			        <li class="nav-item">
			          <a class="nav-link active px-4 " href="#">마이페이지</a>
			        </li>
			      </ul>
			    </div>
		  </div>
	</nav>
<script src="/TravelPackage/assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>