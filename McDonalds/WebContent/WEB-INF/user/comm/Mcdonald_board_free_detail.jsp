<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>


<title>자유게시판</title>
</head>

<!-- header include-->
<jsp:include page="../common/header.jsp"></jsp:include>

<body>
	<c:set var="boardFreeDto" value="${requestScope.boardFreeDto}" />
	<c:set var="f_code" value="${requestScope.f_code}" />

	<div class="board_notice_detail">
		<h1 class="titDep1" style="padding-top: 3%; color: white;">
			<strong>자유게시판 상세보기</strong>
		</h1>
		<ul style="padding-left: 10%; margin-top: 5%;">
			<li id="topli"><a href="../Mcdonald_main.html"
				style="color: white;">Home</a></li>
			<li id="topli"><a href="../menu/Mcdonald_menu_hamburger.html"
				style="color: white;">menu</a></li>
		</ul>
	</div>
	<!-- //visualArea -->


	<div class="container" style="padding-top: 2%; padding-right: 2%;">

		<form name="form" id="form" role="form" method="post"
			action="BoardFreeRegister.b" enctype="multipart/form-data">
			<div class="row mb-4">
				<div class="col-8"></div>

				<div class="col-4 d-flex align-items-center ">
					<div class="mr-auto"></div>
					<div class="ml-auto">
						<strong>${boardFreeDto.f_writer}&nbsp;&nbsp;|&nbsp;&nbsp;${boardFreeDto.f_date}&nbsp;&nbsp;|
							&nbsp;&nbsp;조회수 : ${boardFreeDto.f_readnum}&nbsp;&nbsp;&nbsp;</strong>
					</div>
				</div>
			</div>


			<div class="input-group mb-4">
				
				
				<input type="text" name="title" id="title" class="form-control mb-4"
					placeholder="글제목" aria-label="Recipient's username"
					aria-describedby="button-addon2" value="${boardFreeDto.f_title}"
					readonly>
				<div class="input-group-append"></div>
			</div>



			<div class="input-group mb-4">
				<textarea name="content" class="form-control" rows="5" readonly>
            			${boardFreeDto.f_content}
            		</textarea>
			</div>




			<%-- <div class="input-group">
				<textarea name="" id="" cols="30" rows="10">
			${boardFreeDto.f_content}
			</textarea>
			</div> --%>



			<div class="card mb-2">
				<!-- Post Content Column -->
				<div class="card-body main">

					<div class="d-flex justify-content-end">
						첨부파일 : <a href="#" class="mr-auto">&nbsp;${boardFreeDto.f_file_upload}</a>
						<a href="#" style="margin-right: 5px;"> <img
							src="${pageContext.request.contextPath}/usercss/vendors/images/svg/heart-regular.svg">
						</a> <strong style="margin: 0 10px;">좋아요&nbsp;${boardFreeDto.f_like}</strong>
						<a href="#" style="margin-right: 5px;"> <img
							style="margin-right: 5px;"
							src="${pageContext.request.contextPath}/usercss/vendors/images/svg/comment-dots-regular.svg">
						</a> <strong style="margin-right: 10px;">댓글&nbsp;?</strong> <a
							href="#" class="btn btn-primary" style="margin: 0 5px;">답글</a> <a
							href="BoardFreeUpdatePage.b?f_code=${f_code}"
							class="btn btn-warning" style="margin: 0 5px;">수정</a> <a
							href="BoardFreeDelete.b?f_code=${f_code}" class="btn btn-danger"
							style="margin: 0 5px;">삭제</a>
					</div>
					<hr>
					<!-- Comments Form -->
					<div class="card my-4">
						<h5 class="card-header">Leave a Comment:</h5>
						<div class="card-body">
							<form>
								<div class="form-group">
									<textarea class="form-control" rows="3"></textarea>
								</div>
								<button type="submit" class="btn btn-primary">Submit</button>
							</form>
						</div>
					</div>

					<!-- Single Comment -->
					<div class="media mb-4">
						<img class="d-flex mr-3 rounded-circle"
							src="http://placehold.it/50x50" alt="">
						<div class="media-body">
							<h5 class="mt-0">Commenter Name</h5>
							Cras sit amet nibh libero, in gravida nulla. Nulla vel metus
							scelerisque ante sollicitudin. Cras purus odio, vestibulum in
							vulputate at, tempus viverra turpis. Fusce condimentum nunc ac
							nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
						</div>
					</div>
				</div>
			</div>
		</form>

	</div>
	<!-- //container  -->
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>

	<script
		src="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/summernote-lite.js"></script>
	<script
		src="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/lang/summernote-ko-KR.js"></script>

	<script
		src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>

	<script>
		$(function() {
			// Add the following code if you want the name of the file appear on select
			$(".custom-file-input").on(
					"change",
					function() {
						var fileName = $(this).val().split("\\").pop();
						$(this).siblings(".custom-file-label").addClass(
								"selected").html(fileName);
					});

		});
	</script>

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


<!-- <div class="row mt-3">
			<div class="col-10"></div>
			<div class="col">
				<button type="button" class="btn btn-info" id="freebtnMC"
					style="position: absolute; right: 20%">
					<strong>답글</strong>
				</button>
			</div>
			<div class="col">
				<button type="button" class="btn btn-warning" id="freebtnMC"
					style="position: absolute; right: 20%">
					</strong>수정</strong>
				</button>
			</div>
			<div class="col">
				<button type="button" class="btn btn-danger" id="freebtnMC"
					style="position: absolute; right: 20%">
					</strong>삭제</strong>
				</button>
			</div>
		</div> -->


</html>