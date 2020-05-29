<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>

<style>

.row {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-wrap: wrap;
    flex-wrap: wrap;
    margin-left:-15px;
    margin-right:-15px;
}
</style>


<title>버거</title>
</head>

<body>

	<!-- header include-->
	<jsp:include page="../common/header.jsp"></jsp:include>

	<div class="hamburgermenu">
		<h1 class="titDep1">
			<strong>버거</strong>
		</h1>
		<p class="subCopy">
			빅맥<sub class="reg">®</sub>에서 맥스파이시<sub class="reg">®</sub> 상하이버거까지, <br>주문
			즉시 바로 조리해 더욱 맛있는, 맥도날드의 다양한 버거를 소개합니다.
		</p>
	</div>

	<div class="row mt-5">
		<div class="col-5"></div>
		<div class="col-1">
			<div id="productli">
				<a href="MenuBurger.um" role="button" style="color: #808080;"><p style="font-size: medium;">단품메뉴</p></a>
			</div>
			<!-- 선택 된 태그에 aria-selected="true" 추가 -->
			</div>
		<div class="col-1" id="productli">
			<a href="#" role="button" style="color: #FFBC0D;"><p style="font-size: large;text-decoration: underline;">세트메뉴</p></a>
		</div>
		<div class="col-5"></div>
	</div>

	<div class="mcMenu" wfd-id="34">
		<ul class="menuList" id="menuList" wfd-id="36">
			<li class="count" id="count">6 Products</li>
		</ul>
	</div>

	<div class="container">
		<div class="row">
			<div class="col">
				<a href="BurgerDetail.um?product_code=7">
					<div class="card-deck">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/burger/burgerset/bs1.png"
								alt="">
							<div class="card-body" id="card-inner">
								<strong class="ko">허니 크림치즈 상하이 버거 세트</strong>
								<h5 class="card-title">
									Honey Cream Cheese <br>Shanghai Burger Meal
								</h5>
							</div>
						</div>
					</div>
				</a>
			</div>

			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=8">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/burger/burgerset/bs2.png"
								alt="">
							<div class="card-body" id="card-inner">
								<div class="name" wfd-id="53">
									<strong class="ko">빅맥® 세트</strong>
									<h5 class="card-title">Big Mac® Meal</h5>
									<br>
								</div>
							</div>
						</div>
				</div>
				</a>
			</div>
			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=9">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/burger/burgerset/bs3.png"
								alt="">
							<div class="card-body" id="card-inner">
								<div class="name" wfd-id="53">
									<strong class="ko">맥스파이시® 세트</strong>
									<h5 class="card-title">McSpicy®Shanghai Burger Meal</h5>
									<br>
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
					<a href="BurgerDetail.um?product_code=10">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/burger/burgerset/bs4.png"
								alt="2">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">1955 버거™ 세트</strong>
								</h5>
								<strong>1955 Burger™ Meal</strong> <br>
							</div>
						</div>
				</div>
				</a>
			</div>

			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=11">
						<div class="card-body text-reft _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/burger/burgerset/bs5.png"
								alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">맥치킨®모짜렐라 세트</strong>
								</h5>
								<strong>McChicken®Mozzarella Meal</strong> <br>
							</div>
						</div>
				</div>
				</a>
			</div>


			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=12">
						<div class="card-body text-reft _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/burger/burgerset/bs6.png"
								alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">맥치킨® 세트</strong>
								</h5>
								<strong>McChicken® Meal</strong> <br>
							</div>
						</div>
				</div>
				</a>
			</div>
		</div>
	</div>
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>


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

</body>
</html>