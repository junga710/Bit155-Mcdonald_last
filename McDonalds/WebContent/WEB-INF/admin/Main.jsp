<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>McDonalds Admin</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">


<jsp:include page="./common/head.jsp"></jsp:include>

<%-- <link rel="apple-touch-icon" href="apple-icon.png">
<link rel="shortcut icon" href="favicon.ico">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admincss/vendors/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admincss/vendors/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admincss/vendors/themify-icons/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/admincss/vendors/flag-icon-css/css/flag-icon.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/admincss/vendors/selectFX/css/cs-skin-elastic.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/admincss/vendors/jqvmap/dist/jqvmap.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/admincss/assets/css/style.css">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'> --%>

</head>

<body>


	<!-- Left Panel -->
	<jsp:include page="./common/LeftMenu.jsp"></jsp:include>

	<!-- Left Panel -->

	<!-- Right Panel -->

	<div id="right-panel" class="right-panel">


		<jsp:include page="./common/TopMenu.jsp"></jsp:include>


		<div class="breadcrumbs">
			<div class="col-sm-4">
				<div class="page-header float-left">
					<div class="page-title">
						<h1>메인</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="page-header float-right">
					<div class="page-title">
						<ol class="breadcrumb text-right">
							<li class="active">메인</li>
						</ol>
					</div>
				</div>
			</div>
		</div>

		<div class="content mt-3">
			<div class="col-lg-3 col-md-6">
				<div class="card">
					<div class="card-body">
						<div class="stat-widget-one">
							<div class="stat-icon dib"
								style="margin-left: 13px; margin-top: 7px;">
								<img style="margin-left: 10px;" width="50px;" height="50px;"
									src="${pageContext.request.contextPath}/admincss/images/won.png"
									alt=""> &nbsp;
								<!-- <i class="ti-money text-success border-success"></i> -->
							</div>
							<div class="stat-content dib">
								<div class="stat-text">월 매출 평균</div>
								<div id="chart1" class="stat-digit" style="height: 35.5px"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-6">
				<div class="card">
					<div class="card-body">
						<div class="stat-widget-one">
							<div class="stat-icon dib">
								<img style="margin-top: 9px; margin-left: 15px;" width="50px;" height="50px;"
									src="${pageContext.request.contextPath}/admincss/images/won.png"
									alt=""> &nbsp;
							</div>
							<div class="stat-content dib">
								<div class="stat-text">일 매출 평균</div>
								<div id="chart2" class="stat-digit"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-6">
				<div class="card">
					<div class="card-body">
						<div class="stat-widget-one">
							<div class="stat-icon dib">
								<i class="ti-hand-point-up text-warning border-warning"></i>
							</div>
							<div class="stat-content dib">
								<div class="stat-text">최다주문 회원</div>
								<div id="chart3" class="stat-digit"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-lg-3 col-md-6">
				<div class="card">
					<div class="card-body">
						<div class="stat-widget-one">
							<div class="stat-icon dib">
								<i class="ti-user text-primary border-primary"></i>
							</div>
							<div class="stat-content dib">
								<div class="stat-text">총 회원</div>
								<div id="chart4" class="stat-digit"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 차트 시작 -->
			<div class="col-xl-6">
				<div class="card">
					<div class="card-body">
						<div class="row"></div>
						<div class="chart-wrapper mt-4">
							<canvas id="chart" height="267"></canvas>
						</div>

					</div>
				</div>
			</div>

			<!-- 각 매장별 매니저(1행 4열) -->
			<div class="col-xl-3 col-lg-6">
				<div class="card">
					<div class="card-body">
						<div class="mx-auto d-flex">
							<img class="rounded-circle mx-auto d-block"
								src="${pageContext.request.contextPath}/admincss/images/kim.jpg"
								alt="Card image cap" style="height: 50px;">
							<div class="mx-auto d-block">
								<h5 class="text-sm-center mt-2 mb-1">김우철</h5>
								<div class="location text-sm-center">
									<i class="fa fa-map-marker"></i> 선릉점 점장, 070-7017-4081
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-body">
						<div class="mx-auto d-flex">
							<img class="rounded-circle mx-auto d-block"
								src="${pageContext.request.contextPath}/admincss/images/lee.jpg"
								alt="Card image cap" style="height: 50px;">
							<div class="mx-auto d-block">
								<h5 class="text-sm-center mt-2 mb-1">이정아</h5>
								<div class="location text-sm-center">
									<i class="fa fa-map-marker"></i> 강남삼성DT점 점장, 070-7209-0677
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-body">
						<div class="mx-auto d-flex">
							<img class="rounded-circle mx-auto d-block"
								src="${pageContext.request.contextPath}/admincss/images/admin.jpg"
								alt="Card image cap" style="height: 50px;">
							<div class="mx-auto d-block">
								<h5 class="text-sm-center mt-2 mb-1">장민봉</h5>
								<div class="location text-sm-center">
									<i class="fa fa-map-marker"></i> 강남구청점 점장, 070-7017-4547
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-body">
						<div class="mx-auto d-flex">
							<img class="rounded-circle mx-auto d-block"
								src="${pageContext.request.contextPath}/admincss/images/jeon.jpg"
								alt="Card image cap" style="height: 50px;">
							<div class="mx-auto d-block">
								<h5 class="text-sm-center mt-2 mb-1">이연규</h5>
								<div class="location text-sm-center">
									<i class="fa fa-map-marker"></i> 코엑스점 점장, 070-7209-0565
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card">
					<div class="card-body">
						<div class="mx-auto d-flex">
							<img class="rounded-circle mx-auto d-block"
								src="${pageContext.request.contextPath}/admincss/images/gu.jpg"
								alt="Card image cap" style="height: 50px;">
							<div class="mx-auto d-block">
								<h5 class="text-sm-center mt-2 mb-1">구슬기</h5>
								<div class="location text-sm-center">
									<i class="fa fa-map-marker"></i> 삼성역점 점장, 070-7017-6471
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- 각 메뉴 Best / Worst -->
			<div class="col-xl-3 col-lg-6">
				<aside class="profile-nav alt" style="margin-bottom: 10px;">
					<section class="card">
						<div class="card-header user-header alt bg-light">각 메뉴 Best
							상품</div>

						<ul class="list-group list-group-flush">
						
							<li class="list-group-item">
								<span id="burgerBest"></span>
								<span class="badge badge-primary pull-right">버거</span>
							</li>
							<li class="list-group-item">
								<span id="macMorningBest"></span>
								<span class="badge badge-danger pull-right">맥모닝</span> 
							</li>
							<li class="list-group-item">
								<span id="sideBest"></span> 
								<span class="badge badge-success pull-right">사이드</span>
							</li>
							<li class="list-group-item">
								<span id="desertBest"></span>
								<span class="badge badge-info pull-right r-activity">디저트</span>
							</li>
							<li class="list-group-item">
								<span id="macCaffeeBest"></span>
								<span class="badge badge-secondary pull-right r-activity">맥커피</span>
							</li>
							<li class="list-group-item"">
								<span id="beverageBest"></span>
								<span class="badge badge-light pull-right r-activity">음료</span>
							</li>

						</ul>

					</section>
				</aside>

				<!-- 디저트 판매량 랭킹 Top4 -->
				<aside class="profile-nav alt">
					<section class="card">
						<div class="card-header user-header alt bg-light">각 메뉴 Worst
							상품</div>


						<ul class="list-group list-group-flush">
							<li class="list-group-item">
								<span id="burgerWorst"></span>
								<span class="badge badge-primary pull-right">버거</span>
							</li>
							<li class="list-group-item">
								<span id="macMorningWorst"></span>
								<span class="badge badge-danger pull-right">맥모닝</span> 
							</li>
							<li class="list-group-item">
								<span id="sideWorst"></span> 
								<span class="badge badge-success pull-right">사이드</span>
							</li>
							<li class="list-group-item">
								<span id="desertWorst"></span>
								<span class="badge badge-info pull-right r-activity">디저트</span>
							</li>
							<li class="list-group-item">
								<span id="macCaffeeWorst"></span>
								<span class="badge badge-secondary pull-right r-activity">맥커피</span>
							</li>
							<li class="list-group-item"">
								<span id="beverageWorst"></span>
								<span class="badge badge-light pull-right r-activity">음료</span>
							</li>

						</ul>

					</section>
				</aside>
			</div>

		</div>
		<!-- .content -->
	</div>
	<!-- /#right-panel -->

	<!-- Right Panel -->

	<jsp:include page="./common/script.jsp"></jsp:include>

	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
	<!-- <script src="./vendors/chart.js/dist/Chart.bundle.min.js"></script> -->

	<!-- <script src="./assets/js/dashboard.js"></script> -->
	<!-- <script src="./assets/js/widgets.js"></script> -->
	<script>
		$(function() {

			$.ajax({
				type : "post",
				url : "MainChart.ajax",
				dataType : "json", //POINT
				success : function(data) {
					/*인덱스 
					0 : 삼성역
					1 : 강남구청
					2 : 코엑스
					3: 선릉 
					4 : 강남삼성DT
					 */
					console.log("name : " + data[0].s_name);
					console.log("count0 : " + data[0].order_count);
					console.log("count1 : " + data[1].order_count);
					console.log("count2 : " + data[2].order_count);
					console.log("count3 : " + data[3].order_count);
					console.log("count4 : " + data[4].order_count);
					/* Math.random() * 90000 */
					var barChartData = {
						labels : [ "5월 26일" ],
						// type: 'bar',
						datasets : [ {
							label : "선릉점",
							backgroundColor : 'rgba(244,99,132,0.2)',
							data : [ data[3].order_count ]
						}, {
							label : "강남삼성DT점",
							backgroundColor : 'rgba(54,162,235,0.2)',
							data : [ data[4].order_count ]
						}, {
							label : "강남구청점",
							backgroundColor : 'rgba(255,206,86,0.2)',
							data : [ data[1].order_count ]
						}, {
							label : "코엑스점",
							backgroundColor : 'rgba(75,192,192,0.2)',
							data : [ data[2].order_count ]
						}, {
							label : "삼성역점",
							backgroundColor : 'rgba(153,102,255,0.2)',
							data : [ data[0].order_count ]
						} ]
					};

					var ctx = $('#chart').get(0).getContext("2d");
					window.theChart = new Chart(ctx, {
						type : 'bar',
						data : barChartData,
						options : {
							title : {
								display : true,
								text : "매장별 당일 주문건수",
								position : 'top',
								fontSize : 20,
								lineHeight : 1.2,
								padding : 0,
							},
							legend : {
								labels : {
									fontSize : 13,
								},
							},
							scales : {
								xAxes : [ {
									ticks : {
										fontColor : 'rgba(12, 13, 13, 1)',
										fontSize : 13
									},
									barPercentage : 0.9,
									categoryPercentage : 0.9,
								} ],
								yAxes : [ {
									ticks : {
										min : 0,
										max : 10,
										stepSize : 2
									},
								} ],
							}

						}
					});

				},
				error : function(request, status, error) {
					console.log("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error:" + error);
				}

			});

			/*   var ctx = $('#chart').get(0).getContext("2d");
			  window.theChart = new Chart(ctx, {
			      type: 'bar',
			      data: barChartData,
			      options: {
			          title: {
			              display: true,
			              text: "매장별 당일 주문건수",
			              position: 'top',
			              fontSize: 20,
			              lineHeight: 1.2,
			              padding: 0,
			          },
			          legend: {
			              labels: {
			                  fontSize: 13,
			              },
			          },
			          scales: {
			              xAxes: [{
			                  ticks: {
			                      fontColor: 'rgba(12, 13, 13, 1)',
			                      fontSize: 13
			                  },
			                  barPercentage: 0.9,
			                  categoryPercentage: 0.9,
			              }],
			              yAxes: [{
			                  
			              }],
			          }

			      }
			  }); */

			//월 매출 평균, 일 매출 평균(26일), 최다주문 회원, 총 회원수
			$.ajax({
				url : "MainSingleFour.ajax",
				type : 'POST',
				cache : false,
				dataType : 'json',
				success : function(data) {
					console.log("monthAvg " + data[0].monthAvg);
					console.log("dayAvg " + data[0].dayAvg);
					console.log("merberTopOrder " + data[0].merberTopOrder);
					console.log("memberTotal " + data[0].memberTotal);
					$('#chart1').text(data[0].monthAvg);
					$('#chart2').text(data[0].dayAvg);
					$('#chart3').text(data[0].merberTopOrder);
					$('#chart4').text(data[0].memberTotal);

				},
				error : function(request, status, error) {
					console.log("code:" + request.status + "\n" + "error:"
							+ error);

				}
			})

			//메뉴별 best 상품(4개)
			$.ajax({
				url : "MainBest.ajax",
				type : 'POST',
				cache : false,
				dataType : 'json',
				success : function(data) {

					console.log("burgerBest " + data[0].burgerBest);
					console.log("macMorningBest " + data[0].macMorningBest);
					console.log("sideBest " + data[0].sideBest);
					console.log("desertBest " + data[0].desertBest);
					console.log("macCaffeeBest " + data[0].macCaffeeBest);
					console.log("beverageBest " + data[0].beverageBest);
					
					$('#burgerBest').text(data[0].burgerBest);
					$('#macMorningBest').text(data[0].macMorningBest);
					$('#sideBest').text(data[0].sideBest);
					$('#desertBest').text(data[0].desertBest);
					$('#macCaffeeBest').text(data[0].macCaffeeBest);
					$('#beverageBest').text(data[0].beverageBest);

				},
				error : function(request, status, error) {
					console.log("code:" + request.status + "\n" + "error:"
							+ error);

				}
			})

			//메뉴별 worst 상품(4개)
			$.ajax({
				url : "MainWorst.ajax",
				type : 'POST',
				cache : false,
				dataType : 'json',
				success : function(data) {
					console.log("burgerWorst " + data[0].burgerWorst);
					console.log("macMorningWorst " + data[0].macMorningWorst);
					console.log("sideWorst " + data[0].sideWorst);
					console.log("desertWorst " + data[0].desertWorst);
					console.log("macCaffeeWorst " + data[0].macCaffeeWorst);
					console.log("beverageWorst " + data[0].beverageWorst);
					
					$('#burgerWorst').text(data[0].burgerWorst);
					$('#macMorningWorst').text(data[0].macMorningWorst);
					$('#sideWorst').text(data[0].sideWorst);
					$('#desertWorst').text(data[0].desertWorst);
					$('#macCaffeeWorst').text(data[0].macCaffeeWorst);
					$('#beverageWorst').text(data[0].beverageWorst);

				},
				error : function(request, status, error) {
					console.log("code:" + request.status + "\n" + "error:"
							+ error);

				}
			})

		});
	</script>

</body>

</html>