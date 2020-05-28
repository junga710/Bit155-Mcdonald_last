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
				<a href="#" role="button" style="color: #808080;">단품메뉴</a>
			</div>
			<!-- 선택 된 태그에 aria-selected="true" 추가 -->
		</div>
		<div class="col-2" id="productli">
			<a href="MenuBurgerSet.um" role="button" style="color: #808080;">세트메뉴</a>
		</div>
	</div>

	<div class="mcMenu">
		<ul class="menuList" id="menuList">
			<li class="count" id="count">6 Products</li>
		</ul>
	</div>

	<div class="container">
		<div class="row">
			<div class="col">
				<a href="BurgerDetail.um?product_code=1">
					<div class="card-deck">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/burger/1.png"
								alt="">
							<div class="card-body" id="card-inner">
								<strong class="ko">허니 크림치즈 상하이 버거</strong>
								<h5 class="card-title">
									Honey Cream Cheese <br>Shanghai Burger
								</h5>
								<!-- <a href="#" class="stretched-link"></a> -->
							</div>
						</div>
					</div>
				</a>
			</div>
			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=2">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/burger/2.png"
								alt="">
							<div class="card-body" id="card-inner">
								<div class="name">
									<strong class="ko">빅맥®</strong>
									<h5 class="card-title">Big Mac®</h5>
									<br>
								</div>
							</div>
						</div>
				</div>
				</a>
			</div>
			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=3">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/burger/3.png"
								alt="">
							<div class="card-body" id="card-inner">
								<div class="name">
									<strong class="ko">맥스파이시® 상하이 버거</strong>
									<h5 class="card-title">McSpicy®Shanghai Burger</h5>
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
					<a href="BurgerDetail.um?product_code=4">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/burger/4.png"
								alt="2">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">1955 버거™</strong>
								</h5>
								<strong>1955 Burger™</strong> <br>
							</div>
						</div>
				</div>
				</a>
			</div>


			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=5">
						<div class="card-body text-reft _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/burger/5.png"
								alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">맥치킨®모짜렐라</strong>
								</h5>
								<strong>McChicken®Mozzarella</strong> <br>
							</div>
						</div>
				</div>
				</a>
			</div>


			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=6">
						<div class="card-body text-reft _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/burger/6.png"
								alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">맥치킨®</strong>
								</h5>
								<strong>McChicken®</strong> <br>
							</div>
						</div>
				</div>
				</a>
			</div>
		</div>
	</div>

	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
</body>

<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> -->

<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>

<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>

<script
	src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>

<script>
	function getUrlParams() {
		var params = {};
		window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str,
				key, value) {
			params[key] = value;
		});
		return params;
	}
	$(document).ready(function() {

		var params = getUrlParams();

		console.log(params);
		loadProductListAjax(params.productKind, params.productCategory);

	});

	function loadProductListAjax(productKind, productCategory) {
		console.log(productKind + "   /  " + productCategory);
		$.ajax({
			type : "get",
			url : "/McDonalds/product/list",

			data : {

				productKind : decodeURIComponent(productKind),
				productCategory : decodeURIComponent(productCategory)
			},
			success : function(response) {
				console.log(response);

			},
		});

	}

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