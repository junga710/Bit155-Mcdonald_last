<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>



<title>리뷰 게시판</title>

</head>

<body>

	<!-- header include-->
<jsp:include page="../common/header.jsp"></jsp:include>

	<div class="board_notice_detail">
		<h1 class="titDep1" style="padding-top: 3%; color: white;">
			<strong>리뷰게시판</strong>
		</h1>
	</div>

	<div class="container">
		<div class="row  mt-5">
			<div class="col-11"></div>
			<button class="btn btn-warning" role="button">
				<strong>글쓰기</strong>
			</button>
		</div>
	</div>

	<div class="container">


		<div class="row">
			<div class="col">
				<div class="card-deck">
					<div class="card-body" style="width: 380px">

						<img class="card-img-top"
							src="../vendors/images/card/1587529214177.png"
							alt="매콤함의 부드러운 반전!NEW 허니 크림치즈 상하이 버거!">
						<div class="card-body" id="card-inner">
							<h5 class="card-title">
								<Strong>매콤함의 부드러운 반전!</Strong>
							</h5>

							<Strong>NEW 허니 크림치즈 상하이 버거!</Strong> <br> <br> <br>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-warning" data-toggle="modal"
								data-target="#exampleModal">Launch demo modal</button>

							<!-- Modal -->
							<div class="modal fade" id="exampleModal" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Modal
												title</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">...</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												changes</button>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>


					<div class="row">
						<div class="col">
							<div class="card-body text-reft" style="width: 380px">
								<img class="card-img-top"
									src="../vendors/images/card/1585129454903.png"
									alt="더 편리해진 맥도날드 앱 사용법">
								<div class="card-body" id="card-inner">
									<h5 class="card-title">
										<strong>올 여름 맥윙과 함께!</strong>
									</h5>
									<strong>맥윙 재출시</strong> <br> <br> <br>
									<!-- Button trigger modal -->
									<button type="button" class="btn btn-warning"
										data-toggle="modal" data-target="#exampleModal1">
										Launch demo modal</button>

									<!-- Modal -->
									<div class="modal fade" id="exampleModal1" tabindex="-1"
										role="dialog" aria-labelledby="exampleModalLabel"
										aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">Modal
														title</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">...</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-dismiss="modal">Close</button>
													<button type="button" class="btn btn-primary">Save
														changes</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col">
							<div class="card-body text-reft" style="width: 380px">
								<img class="card-img-top"
									src="../vendors/images/card/1588122162048.png"
									alt="과일 땡겨? 쉽게 칠러!자두 칠러, 배 칠러">
								<div class="card-body" id="card-inner">
									<h5 class="card-title">
										<strong>더 편리해진 맥도날드 앱 사용법</strong>
									</h5>
									<br> <br> <br>
									<!-- Button trigger modal -->
									<button type="button" class="btn btn-warning"
										data-toggle="modal" data-target="#exampleModal2">
										Launch demo modal</button>

									<!-- Modal -->
									<div class="modal fade" id="exampleModal2" tabindex="-1"
										role="dialog" aria-labelledby="exampleModalLabel"
										aria-hidden="true">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalLabel">Modal
														title</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">...</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-dismiss="modal">Close</button>
													<button type="button" class="btn btn-primary">Save
														changes</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col">
				<div class="card-deck">
					<div class="card-body" style="width: 380px">
						<img class="card-img-top"
							src="../vendors/images/card/1579235808560.png"
							alt="2900원 부터 즐기는 맥모닝 콤보를 만나보세요">
						<div class="card-body" id="card-inner">
							<h5 class="card-title">
								<strong class="tit">2900원 부터 즐기는</strong>
							</h5>
							<strong>맥모닝 콤보를 만나보세요</strong> <br> <br> <br>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-warning" data-toggle="modal"
								data-target="#exampleModal3">Launch demo modal</button>

							<!-- Modal -->
							<div class="modal fade" id="exampleModal3" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Modal
												title</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">...</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												changes</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="col">
					<div class="card-body text-reft" style="width: 380px">
						<img class="card-img-top"
							src="../vendors/images/card/1564021259329.png"
							alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
						<div class="card-body" id="card-inner">
							<h5 class="card-title">
								<strong class="tit">농장에서 레스토랑까지</strong>
							</h5>
							<strong>좋은 음식을 제공하기 위한 맥도날드의 노력을 확인하세요!</strong> <br> <br>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-warning" data-toggle="modal"
								data-target="#exampleModal4">Launch demo modal</button>

							<!-- Modal -->
							<div class="modal fade" id="exampleModal4" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Modal
												title</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">...</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												changes</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="row">
				<div class="col">
					<div class="card-body text-reft" style="width: 380px">
						<img class="card-img-top"
							src="../vendors/images/card/1564021259329.png"
							alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
						<div class="card-body" id="card-inner">
							<h5 class="card-title">
								<strong class="tit">취향저격 쿠폰부터 쏠쏠한 정보까지!</strong>
							</h5>
							<strong>지금 맥도날드 앱 가입하고 쿠폰받자</strong> <br> <br>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-warning" data-toggle="modal"
								data-target="#exampleModal5">Launch demo modal</button>

							<!-- Modal -->
							<div class="modal fade" id="exampleModal5" tabindex="-1"
								role="dialog" aria-labelledby="exampleModalLabel"
								aria-hidden="true">
								<div class="modal-dialog" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="exampleModalLabel">Modal
												title</h5>
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<div class="modal-body">...</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">Close</button>
											<button type="button" class="btn btn-primary">Save
												changes</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>





	<!--footer include -->
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>
	
	<script src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>


	<script>
		//Get the button
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