<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>


<title>맥모닝</title>
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

	<div class="mcmorning">
		<h1 class="titDep1">
			<Strong>맥모닝</Strong>
		</h1>
		<p class="subCopy">
			새벽 4시부터 오전 10시 30분까지 <br> 갓 구워내 신선한 맥모닝으로 따뜻한 아침 식사를 챙겨 드세요!
		</p>
		<ul style="padding-left: 10%;">
			<li id="topli"><a href="../Mcdonald_main.html">Home</a></li>
			<li id="topli"><a href="../menu/Mcdonald_menu_mcmorning.html">Menu</a></li>
		</ul>
	</div>
	<div class="row mt-5">
		<div class="col-5"></div>
		<div class="col-1">
			<div id="productli">
				<a href="MenuMacMorning.um" role="button" style="color: #808080;">단품메뉴</a>
			</div>
			<!-- 선택 된 태그에 aria-selected="true" 추가 -->
		</div>
		<div class="col-2" id="productli">
			<a href="#" role="button" style="color: #808080;">세트메뉴</a>
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
				<a href="BurgerDetail.um?product_code=19">
					<div class="card-deck">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/mcmorning/mcmorningset/mcs1.png"
								alt="">
							<div class="card-body" id="card-inner">
								<strong class="ko">치킨 치즈 머핀 세트</strong>
								<h5 class="card-title">Chicken 'n Cheese Muffin Extra Value
									Breakfast</h5>
								<br>
							</div>
						</div>
					</div>
				</a>
			</div>

			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=20">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/mcmorning/mcmorningset/mcs2.png"
								alt="">
							<div class="card-body" id="card-inner">
								<div class="name" wfd-id="53">
									<strong class="ko">에그 맥머핀® 세트</strong>
									<h5 class="card-title">Egg McMuffin® Extra Value Breakfast</h5>

									<br>
								</div>
							</div>
						</div>
				</div>
				</a>
			</div>
			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=21">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/mcmorning/mcmorningset/mcs3.png"
								alt="">
							<div class="card-body" id="card-inner">
								<div class="name" wfd-id="53">
									<strong class="ko">베이컨 에그 맥머핀® 세트</strong>
									<h5 class="card-title">Bacon Egg McMuffin® Extra Value
										Breakfast</h5>
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
					<a href="BurgerDetail.um?product_code=22">
						<div class="card-body _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/mcmorning/mcmorningset/mcs4.png"
								alt="2">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="ko">베이컨 에그 맥머핀® 세트</strong>
									<h5 class="card-title">Bacon Egg McMuffin® Extra Value
										Breakfast</h5>
									<br>
							</div>
						</div>
				</div>
				</a>
			</div>

			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=23">
						<div class="card-body text-reft _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/mcmorning/mcmorningset/mcs5.png"
								alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">베이컨 토마토 머핀 세트</strong>
								</h5>
								<strong>BLT Muffin Extra Value Breakfast</strong> <br> <br>

							</div>
						</div>
				</div>
				</a>
			</div>


			<div class="row">
				<div class="col">
					<a href="BurgerDetail.um?product_code=24">
						<div class="card-body text-reft _productListImage burger"
							style="width: 380px">
							<img class="card-img-top"
								src="${pageContext.request.contextPath}/usercss/vendors/images/mcmorning/mcmorningset/mcs6.png"
								alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
							<div class="card-body" id="card-inner">
								<h5 class="card-title">
									<strong class="tit">소시지 맥머핀® 세트</strong>
								</h5>
								<strong>Sausage McMuffin® Extra Value Breakfast</strong> <br>
								<br />
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