<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file ="./Header.jsp" %>
<!DOCTYPE html>
<html>
  <style>
    .b{
      border: 1px solid black;
    }
    
    .rec{
   	  background-image: url('/TravelPackage/image/photo.png');
	  background-repeat: no-repeat;
	  background-size: auto;
    }
  </style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>
<body>
    <div class="container px-4 py-5 mb-5">
      <h2 class="mb-3 pb-3 display-7 ">상품 추천😎</h2>
      <div class="row mt-2">
        <div class="col-6">
            <a href="./">
              <img class="img-fluid" src="/TravelPackage/image/photo.png" width="100%">
            </a>
        </div>
        <div class="col-6">
          <a href="./">
            <img class="img-fluid" src="/TravelPackage/image/photo.png" width="100%">
          </a>
        </div>
      </div>
    </div>

    <div class="container px-4 py-5">
      <h2 class="mb-3 pb-3 display-7">인기 상품🎁</h2>
      <div class="row mt-2">
        <div class="col-3">
          <a href="./" class="text-decoration-none text-dark">
            <img class="img-fluid" src="/TravelPackage/image/photo.png" width="100%">
            <h6 class="mt-4">패키지</h6>
            <h5 class="mt-1">내일 여행가자 집으로</h5>
            <h4 class="mt-3">129,000원~</h4>
          </a>
        </div>
        <div class="col-3">
          <a href="./" class="text-decoration-none text-dark">
            <img class="img-fluid" src="/TravelPackage/image/photo.png" width="100%">
            <h6 class="mt-4">패키지</h6>
            <h5 class="mt-1">오늘 여행가자 집으로</h5>
            <h4 class="mt-3">523,000원~</h4>
          </a>
        </div>
        <div class="col-3">
          <a href="./" class="text-decoration-none text-dark">
            <img class="img-fluid" src="/TravelPackage/image/photo.png" width="100%">
            <h6 class="mt-4">패키지</h6>
            <h5 class="mt-1">집 좀 보 내 줘</h5>
            <h4 class="mt-3">999,999원~</h4>
          </a>
        </div>
        <div class="col-3">
          <a href="./" class="text-decoration-none text-dark">
            <img class="img-fluid" src="/TravelPackage/image/photo.png" width="100%">
            <h6 class="mt-4">패키지</h6>
            <h5 class="mt-1">오늘은 목요일</h5>
            <h4 class="mt-3">333,000원~</h4>
          </a>
        </div>
      </div>
    </div>
    
    <div class="container px-4 py-5">
      <h2 class="mb-3 pb-3 display-7">넉넉한 자유시간, 여행 만족도 UP!</h2>
      <div class="row mt-2">
        <div class="col-3">
          <a href="./" class="text-decoration-none text-dark">
            <img class="img-fluid" src="/TravelPackage/image/photo.png" width="100%">
            <h6 class="mt-4">패키지</h6>
            <h5 class="mt-1">내일 여행가자 집으로</h5>
            <h4 class="mt-3">129,000원~</h4>
          </a>
        </div>
        <div class="col-3">
          <a href="./" class="text-decoration-none text-dark">
            <img class="img-fluid" src="/TravelPackage/image/photo.png" width="100%">
            <h6 class="mt-4">패키지</h6>
            <h5 class="mt-1">오늘 여행가자 집으로</h5>
            <h4 class="mt-3">523,000원~</h4>
          </a>
        </div>
        <div class="col-3">
          <a href="./" class="text-decoration-none text-dark">
            <img class="img-fluid" src="/TravelPackage/image/photo.png" width="100%">
            <h6 class="mt-4">패키지</h6>
            <h5 class="mt-1">집 좀 보 내 줘</h5>
            <h4 class="mt-3">999,999원~</h4>
          </a>
        </div>
        <div class="col-3">
          <a href="./" class="text-decoration-none text-dark">
            <img class="img-fluid" src="/TravelPackage/image/photo.png" width="100%">
            <h6 class="mt-4">패키지</h6>
            <h5 class="mt-1">오늘은 목요일</h5>
            <h4 class="mt-3">333,000원~</h4>
          </a>
        </div>
      </div>
    </div>
    


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
<%@include file ="./Footer.jsp" %>
