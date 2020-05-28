<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>


<title>버거</title>
</head>

<style>
/* card-inner2:hover,
#card-inner2:focus {
        border-color: #ffbc0d;
        border-radius: 10px;
        border-style: solid;

    } */
</style>

<body>
	<!-- header include-->
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="sidemenu">
		<h1 class="titDep1">
			<strong>사이드 & 디저트</strong>
		</h1>
		<p class="subCopy">
			가볍게 즐겨도,버거와 함께 푸짐하게 즐겨도, <br> 언제나 맛있는 사이드와 디저트 메뉴!
		</p>
		<ul style="padding-left: 10%;">
			<li id="topli"><a href="../Mcdonald_main.html">Home</a></li>
			<li id="topli"><a href="../menu/Mcdonald_menu_sidemenu.html">Menu</a></li>
		</ul>
	</div>
	<div class="row mt-5">
		<div class="col-5"></div>
		<div class="col-1">
			<div id="productli">
				<a href="MenuSideDesert.um" role="button" style="color: #808080;">사이드</a>
			</div>
			<!-- 선택 된 태그에 aria-selected="true" 추가 -->
		</div>
		<div class="col-2" id="productli">
			<a href="#" role="button" style="color: #808080;">디저트</a>
		</div>
	</div>

	<div class="mcMenu" wfd-id="34">
		<ul class="menuList" id="menuList" wfd-id="36">
			<li class="count" id="count">6 Products</li>
		</ul>
	</div>

	<div class="container">
		<div class="row">
			<div class="col">
				<a href="BurgerDetail.um?product_code=31">
					<div class="card-deck">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/side_dessert/side_dessertset/sds1.png"
								alt="">
							<div class="card-body" id="card-inner">
								<strong class="ko">라즈베리 크림치즈 파이</strong>
								<h5 class="card-title">Raspberry Cream Cheese Pie</h5>
							</div>
						</div>
					</div>
				</a>
			</div>

			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=32">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/side_dessert/side_dessertset/sds2.jpg"
								alt="">
							<div class="card-body" id="card-inner">
								<div class="name" wfd-id="53">
									<strong class="ko">프랑스 초코 쿠키 스틱</strong>
									<h5 class="card-title">French Choco Cookie Stick</h5>
								</div>
							</div>
						</div>
				</div>
				</a>
			</div>
			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=33">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/side_dessert/side_dessertset/sds3.png"
								alt="">
							<div class="card-body" id="card-inner">
								<div class="name" wfd-id="53">
									<strong class="ko">오레오 맥플러리®</strong>
									<h5 class="card-title">Oreo McFlurry®</h5>
								</div>
							</div>
						</div>
				</div>
			</div>
			</a>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card-deck">
					<a href="BurgerDetail.um?product_code=34">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/side_dessert/side_dessertset/sds4.png"
								alt="2">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">딸기 오레오 맥플러리®</strong>
								</h5>
								<strong>Strawberry Oreo McFlurry®</strong>
							</div>
						</div>
				</div>
				</a>
			</div>

			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=35">
						<div class="card-body text-reft _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/side_dessert/side_dessertset/sds5.png"
								alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">초코 오레오 맥플러리®</strong>
								</h5>
								<strong>Choco Oreo McFlurry®</strong>
							</div>
						</div>
				</div>
				</a>
			</div>


			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=36">
						<div class="card-body text-reft _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/side_dessert/side_dessertset/sds6.png"
								alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">스트로베리콘</strong>
								</h5>
								<strong>Strawberry Cone</strong>
							</div>
						</div>
				</div>
				</a>
			</div>
		</div>
	</div>
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
</body>

<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>

<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>

<script
	src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>

<script>
	var mybutton = document.getElementById("myBtn");

	// When the user scrolls down 20px from the top of the document, show the button
	window.onscroll = function() {
		scrollFunction()
	};

	function scrollFunction() {
		if (document.body.scrollTop > 20
				|| document.documentElement.scrollTop > 20) {
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