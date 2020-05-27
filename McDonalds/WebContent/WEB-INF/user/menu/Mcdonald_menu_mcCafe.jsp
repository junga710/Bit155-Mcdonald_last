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
	<div class="mcCafe">
		<h1 class="titDep1">
			<strong>맥카페 & 음료</strong>
		</h1>
		<p class="subCopy">언제나 즐겁게, 맥카페와 다양한 음료를 부담없이 즐기세요!</p>
		<ul style="padding-left: 10%; padding-top: 3%">
			<li id="topli"><a href="../Mcdonald_main.html">Home</a></li>
			<li id="topli"><a href="../Mcdonald_main.html">Menu</a></li>
		</ul>
	</div>
	<div class="row mt-5">
		<div class="col-5"></div>
		<div class="col-1">
			<div id="productli">
				<a href="#" role="button" style="color: #808080;">맥카페</a>
			</div>
			<!-- 선택 된 태그에 aria-selected="true" 추가 -->
		</div>
		<div class="col-2" id="productli">
			<a href="MenuMacBeverageSet.um" role="button" style="color: #808080;">음료</a>
		</div>
	</div>


	<div class="mcMenu" wfd-id="34">
		<ul class="menuList" id="menuList" wfd-id="36">
			<li class="count" id="count">17 Products</li>
		</ul>
	</div>



	<div class="container">
		<div class="row">
			<div class="col">
				<a href="BurgerDetail.um?product_code=37">
					<div class="card-deck">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/drink/46.png"
								alt="">
							<div class="card-body" id="card-inner">
								<strong class="ko">배 칠러</strong>
								<h5 class="card-title">Pear Chiller</h5>
								<br>
							</div>
						</div>
					</div>
				</a>
			</div>

			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=38">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/drink/47.jpg"
								alt="">
							<div class="card-body" id="card-inner">
								<div class="name" wfd-id="53">
									<strong class="ko">파인애플 칠러</strong>
									<h5 class="card-title">Pineapple Chiller</h5>
									<br>
								</div>
							</div>
						</div>
				</div>
				</a>
			</div>
			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=39">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/drink/48.png"
								alt="">
							<div class="card-body" id="card-inner">
								<div class="name" wfd-id="53">
									<strong class="ko">자두 칠러</strong>
									<h5 class="card-title">Plum Chiller</h5>
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
					<a href="BurgerDetail.um?product_code=40">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/drink/49.png"
								alt="2">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">카페라떼</strong>
								</h5>
								<strong>Café Latte</strong> <br>
							</div>
						</div>
				</div>
				</a>
			</div>

			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=41">
						<div class="card-body text-reft _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/drink/50.jpg"
								alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">디카페인 카페라떼</strong>
								</h5>
								<strong>Decaffeine Café Latte</strong> <br>
							</div>
						</div>
				</div>
				</a>
			</div>


			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=42">
						<div class="card-body text-reft _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/drink/51.png"
								alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">아이스 카페라떼</strong>
								</h5>
								<strong>Iced Café Latte</strong> <br>
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