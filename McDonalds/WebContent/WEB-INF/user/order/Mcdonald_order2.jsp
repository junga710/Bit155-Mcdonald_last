<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>
<title>주문확인</title>
</head>

<style>
.show-grid [class^=col-] {
	padding-top: 10px;
	padding-bottom: 10px;
	background-color: #eee;
	background-color: #F3F3F3;
	border: 1px solid #ddd;
	border: 1px solid #FFFFFF;
}
</style>

<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<c:set var="basketlist" value="${requestScope.basketlist}" />
	<c:set var="totalOrderSum" value="${requestScope.totalOrderSum}" />

	<div class="hamburgermenu">
		<h1 class="titDep1-2">
			<strong>주문확인</strong>
		</h1>
	</div>

	<p></p>


	<div class="container show-grid">
		<div class="row">
			<div class="col-md-12" style=" background-color:white;">
			</div>
		</div>
		<div class="row" style="min-height: 600px;">

			<div class="col-md-9">
				<Strong>내 주문 정보</Strong>
				<hr>
	<div class="row" style="margin-left:9px;"><b>주문번호</b></div>
				<div class="row"
					style=" margin-left: 2px; margin-right: 2px; min-height: 50px; padding:0px;">

					<c:forEach var="list" items="${basketlist}" varStatus="status">
						
						<div class="col-md-10"
							style="margin-top: 10px; min-height: 180px; padding:0px;">
							<div class="row" style="height: 100%;">
								<!-- 글번호 오는 구간▼▼  -->
								<div class="col-md-2">
									<h1><b><c:out value="${status.count}"/></b></h1><br> 
								</div>
								<!-- 이미지파일 오는구간 ▼▼ -->
								<div class="col-md-4" style="padding:0px;">
									<img src="vendors/images/DB_images/${list.product_image}"
										alt="" style="width: 100%">
								</div>
								<!-- 이미지 상세 오는구간▼▼(ex)단품 - 빅맥) -->
								<div class="col-md-6">
									<h4>${list.product_name}</h4>
									<h5>${list.product_kind}:${list.amount}개</h5>
									<!-- <div>수량 : 2</div> -->
								</div>
							</div>

						</div>
						<div class="col-md-2"
							style="margin-top: 10px; min-height: 180px; color: green;">
							<h4>₩ ${list.total_product_price}</h4></div>

					</c:forEach>

				</div>

				<hr>

			</div>

			<div class="col-md-3" style="background-color: whitesmoke;">
				<div class="row" style="place-content: center;"><b>주문 요약</b></div>
				<hr>
				<div class="row" style="padding-left:0px; padding-right:10px;">
					&nbsp; &nbsp;<b>주소 :</b><h5 style="text-align:right; font-size: medium;"> ${basketlist[0].address}</h5>
					<!-- 여기에 주소를 받아야댐 -->
				</div>
				<hr>
				<div class="row"  style="place-content: center;">
					<div class="col-md-6" style="padding-left: 0px;">
						&nbsp; &nbsp;<b>총 주문합계 :</b>
						<!-- 여기에 총 가격 받아야댐 -->
					</div>
						<div class="col-md-6">
						&nbsp; &nbsp;<p style="color: green; text-align:right;" id="sum">₩ ${totalOrderSum}</p>
						<!-- 여기에 총 가격 받아야댐 -->
					</div>
				</div>
				<p></p>
				<div class="row" style="justify-content: center;">
					<a href="Order3.uo" class="btn btn-danger"
						style="width: 85%; background-color: #D1402D; height: 40px;"><b>결제
						진행하기</b></a>
					<!-- 버튼으로 넘어가야대는거 넣어야댐 -->
				</div>
				<p></p>
				<div class="row" style="justify-content: center;">
					<a href="PaymentCancel.uo" class="btn btn-warning"
						style="width: 85%; height: 40px;"><b>결제
						취소하기</b></a>
					<!-- 버튼으로 넘어가야대는거 넣어야댐 -->
				</div>
			</div>
			
			
		</div>
	</div>
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

</body>

<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>

<script>

var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function () { scrollFunction() };

function scrollFunction() {
   if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
      mybutton.style.display = "block";
   } else {
      mybutton.style.display = "none";
   }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
   document.body.scrollTop = 0;
   document.documentElement.scrollTop = 0;
}
</script>
</html>