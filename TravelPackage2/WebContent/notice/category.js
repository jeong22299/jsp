var v_body = document.querySelector('#category');
v_body.innerHTML += `<div class="d-flex align-items-start">
		<div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
		  <button class="nav-link active text-dark" id="v-pills-mem-tab" data-bs-toggle="pill" data-bs-target="#v-pills-mem" type="button" role="tab" aria-controls="v-pills-mem" aria-selected="true" >회원관리</button>
		  <button onclick = "location.href = '../admin/adminProd.jsp' "class="nav-link text-dark"  data-bs-toggle="pill" data-bs-target="#v-pills-prod" type="button" role="tab" aria-controls="v-pills-prod" aria-selected="false">상품관리</button>
		  <button class="nav-link text-dark" id="v-pills-tab" data-bs-toggle="pill" data-bs-target="#v-pills-review" type="button" role="tab" aria-controls="v-pills-review" aria-selected="false">상품리뷰관리</button>
		  <button class="nav-link text-dark" id="v-pills-tab" data-bs-toggle="pill" data-bs-target="#v-pills-rsv" type="button" role="tab" aria-controls="v-pills-rsv" aria-selected="false">예약확정/취소</button>
		  <button class="nav-link text-dark" id="v-pills-tab" data-bs-toggle="pill" data-bs-target="#v-pills-sale" type="button" role="tab" aria-controls="v-pills-sale" aria-selected="false">매출현황</button>
		  <button class="nav-link text-dark" id="v-pills-tab" data-bs-toggle="pill" data-bs-target="#v-pills-qna" type="button" role="tab" aria-controls="v-pills-qna" aria-selected="false">고객센터 관리</button>
</div>
	  </div>`;

