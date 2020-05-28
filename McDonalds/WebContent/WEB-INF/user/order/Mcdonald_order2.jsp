<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>
<title>결제하기</title>
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
		<h1 class="titDep1">
			<strong>결제하기</strong>
		</h1>
		<p class="subCopy">
			빅맥<sub class="reg">®</sub>에서 맥스파이시<sub class="reg">®</sub> 상하이버거까지, <br>주문
			즉시 바로 조리해 더욱 맛있는, 맥도날드의 다양한 버거를 소개합니다.
		</p>
		<ul style="padding-left: 10%; margin-top: 5%;">
			<li id="topli"><a href="../Mcdonald_main.html">Home</a></li>
			<li id="topli"><a href="../menu/Mcdonald_menu_hamburger.html">Menu</a></li>
		</ul>
	</div>

	<p></p>


	<div class="container show-grid">
		<div class="row">
			<div class="col-md-12">
				<Strong>결제하기</Strong>
			</div>
		</div>
		<div class="row" style="min-height: 600px;">

			<div class="col-md-9">
				내 주문정보
				<hr>

				<div class="row"
					style="background-color: white; margin-left: 2px; margin-right: 2px; min-height: 50px">

					<c:forEach var="list" items="${basketlist}" varStatus="status">
						
						<div class="col-md-10"
							style="margin-top: 10px; min-height: 180px; background-color: linen;">
							<div class="row" style="height: 100%;">
								<!-- 글번호 오는 구간▼▼  -->
								<div class="col-md-2">
									<c:out value="${status.count}"/><br> 
								</div>
								<!-- 이미지파일 오는구간 ▼▼ -->
								<div class="col-md-4">
									<img src="vendors/images/DB_images/${list.product_image}"
										alt="" style="width: 100%">
								</div>
								<!-- 이미지 상세 오는구간▼▼(ex)단품 - 빅맥) -->
								<div class="col-md-6">
									${list.product_name} <br> ${list.product_kind} &nbsp; :
									${list.amount}<br>
									<!-- <div>수량 : 2</div> -->
								</div>
							</div>

						</div>
						<div class="col-md-2"
							style="margin-top: 10px; min-height: 180px; background-color: linen;">
							₩ ${list.total_product_price}</div>

					</c:forEach>

				</div>

				<hr>

			</div>



			<div class="col-md-3" style="background-color: whitesmoke;">
				<div class="row" style="place-content: center;">주문 요약</div>
				<hr>
				<div class="row">
					&nbsp; &nbsp;배달 주소 : ${basketlist[0].address}
					<!-- 여기에 주소를 받아야댐 -->
				</div>
				<hr>
				<div class="row">
					<div class="col-md-6" style="padding-left: 0px;">
						&nbsp; &nbsp;총 주문합계 :
						<!-- 여기에 총 가격 받아야댐 -->
					</div>
					<div class="col-md-6">
						<p style="color: green">₩ ${totalOrderSum}</p>
					</div>
				</div>
				<p></p>
				<div class="row" style="justify-content: center;">
					<a href="Order3.uo" class="btn btn-danger"
						style="width: 85%; background-color: #D1402D; height: 40px;">결제
						진행하기</a>
					<!-- 버튼으로 넘어가야대는거 넣어야댐 -->
				</div>
				<p></p>
				<div class="row" style="justify-content: center;">
					<a href="PaymentCancel.uo" class="btn btn-primary"
						style="width: 85%; background-color: #4882b6; height: 40px;">결제
						취소하기</a>
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