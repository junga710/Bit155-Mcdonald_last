<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>


<!-- summer note-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/summernote-lite.css">


<title>자유게시판</title>
</head>

<body>

	<!-- header include-->
	<jsp:include page="../common/header.jsp"></jsp:include>
<body>
	<div class="board_notice_detail">
		<h1 class="titDep1" style="padding-top: 3%; color: white;">
			<strong>자유게시판 글쓰기</strong>
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
				<div class="col-8">
					<input type="file" class="custom-file-input" id="customFile"
						name="customFile"> <label class="custom-file-label"
						for="customFile">파일을 선택해주세요.</label>
				</div>

				<div class="col-4 d-flex align-items-center ">
					<div class="mr-auto">
						<a style="margin-right: 10px;" href="#"><img
							src="${pageContext.request.contextPath}/usercss/vendors/images/svg/heart-regular.svg"></a>
						<strong>좋아요</strong>
					</div>
					<div class="ml-auto">
						<strong>오늘날짜&nbsp;&nbsp;|
							&nbsp;&nbsp;조회수&nbsp;&nbsp;&nbsp;</strong>
					</div>
				</div>
			</div>

			<div class="row mb-4">
				<div class="input-group ">
					<input type="text" name="title" id="title"
						class="form-control mb-4" placeholder="글제목"
						aria-label="Recipient's username" aria-describedby="button-addon2">
					<div class="input-group-append"></div>
				</div>
			</div>

			<textarea name="summernote" id="summernote" name="editordata"></textarea>

			<div class="row mb-4 d-flex justify-content-center">
				<div style="margin-left: 100px; margin: 50px 50px">
					<button type="submit" class="btn btn-danger mr-3 btn-lg">글등록</button>
				</div>
			</div>

		</form>



		<!-- <div class="row mt-3">
			<div class="col-9"></div>
			<div class="col">
				<button type="button" class="btn btn-info" id="freebtnMC">
					<strong>답글</strong>
				</button>
			</div>
			<div class="col">
				<button type="button" class="btn btn-warning" id="freebtnMC">
					</strong>수정</strong>
				</button>
			</div>
			<div class="col">
				<button type="button" class="btn btn-danger" id="freebtnMC">
					</strong>삭제</strong>
				</button>
			</div>
		</div> -->




		<!-- 	<div class="form-group">
			<div class="row mt-2">
				<div class="col-8"></div>
				<div class="col-1" style="margin-right: 0;">
					<a href="" type="button" class="btn btn-info" id="freebtnMC"
						style="position: absolute; right: 20%"> <strong>등록</strong>
					</a>
				</div>
				<div class="col-1">
					<a href="" type="button" class="btn btn-info" id="freebtnMC"
						style="position: absolute; right: 20%"> <strong>답글</strong>
					</a>
				</div>
				<div class="col-1">
					<a href="" type="button" class="btn btn-warning" id="freebtnMC"
						style="position: absolute; right: 20%"> </strong>수정</strong>
					</a>
				</div>
				<div class="col-1">
					<a href="" type="button" class="btn btn-danger" id="freebtnMC"
						style="position: absolute; right: 20%"> </strong>삭제</strong>
					</a>
				</div>
			</div>
		</div> -->

		<!-- <div>
			<table class="table table-hover">
				<tbody>
					<tr>
						<td>John</td>
						<td>Doe</td>
						<td>댓글나올자리</td>
					</tr>
				</tbody>
			</table>
		</div> -->

		<!-- //contArea -->
		<!-- 	<form id="searchForm" method="post" wfd-id="31">
		<input type="hidden" name="seq" id="seq" wfd-id="69"> <input
			type="hidden" name="rnum" id="rnum" wfd-id="68">
	</form> -->

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

	<script>
		$(document).ready(function() {

			$('#summernote').summernote({
				height : 300, // 에디터 높이
				minHeight : null, // 최소 높이
				maxHeight : null, // 최대 높이
				focus : true, // 에디터 로딩후 포커스를 맞출지 여부
				lang : "ko-KR", // 한글 설정
				placeholder : '최대 2048자까지 쓸 수 있습니다' //placeholder 설정
			});
		});
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