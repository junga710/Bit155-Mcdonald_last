<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--css-->
<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<title>자유게시판</title>
</head>

<style>
.boardfreelist {
	background-color: #f5bd43;
}
/* 테이블 컬럼(맨위) 에다가 width 속성주기 */
.boardfreelist th:nth-child(1) {
	width: 7%
}

.boardfreelist th:nth-child(2) {
	widows: 44%;
}

.boardfreelist th:nth-child(3) {
	width: 12%
}

.boardfreelist th:nth-child(4) {
	width: 23%
}

.boardfreelist th:nth-child(5) {
	width: 7%
}

.boardfreelist th:nth-child(6) {
	width: 7%
}
</style>

<body>

	<!-- header include-->
	<jsp:include page="../common/header.jsp"></jsp:include>

	<div class="board_free_list2">
		<h1 class="titDep1" style="padding-bottom: 20px; padding-top: 20px;">
			<strong>자유게시판</strong>
		</h1>
		<ul style="padding-left: 10%;">
			<li id="topli"><a href="Macdonald_main.html">Home</a></li>
			<li id="topli"><a href="../menu/Mcdonald_menu_hamburger.html">Menu</a></li>
		</ul>
	</div>

	<p></p>


	<div class="container">
		<div class="row">
			<div class="col-md-6" style="border-right-color: rgb(243, 242, 242);">
				<!-- ??건의 데이터 가 있다고 동적으로 넣기 -->
				총 건의 게시글이 있습니다.
			</div>
			<div class="col-md-6"
				style="border-left-color: rgb(241, 241, 241); text-align: end;">
				<select class="form-group">
					<option selected>지점고르기</option>
					<option>옵션1</option>
					<option>옵션2</option>
					<option>옵션3</option>
				</select> <input type="text" placeholder="검색어를 입력하세요"> <img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTKePPh8P7YzgL6x0nXcz0JDeLRIlwjdtjw3hpJihg8hAwrcujT&usqp=CAU"
					width="30px" height="30px">
			</div>
		</div>

		<div class="row">
			<div class="col-md-12" style="height: 800px;">
				<table class="table table-hover">
					<thead>
						<tr class="boardfreelist" style="text-align: center;">
							<th>글번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
							<th>좋아요</th>
						</tr>
					</thead>
					<!-- <tbody>
                     <tr>
                        <td>John</td>
                        <td>Doe</td>
                        <td>john@example.com</td>
                      </tr> -->
					<!-- <tr>
                        <td>Mary</td>
                        <td>Moe</td>
                        <td>mary@example.com</td>
                      </tr>
                      <tr>
                        <td>July</td>
                        <td>Dooley</td>
                        <td>july@example.com</td>
                      </tr> -->
					<!-- </tbody>  -->
				</table>

			</div>
		</div>

		<div class="row" style="border-color: #eee;">
			<div class="col-md-4"></div>
			<div class="col-md-5" style="text-align: center;">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
						</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
								class="sr-only">Next</span>
						</a></li>
					</ul>
				</nav>

			</div>
			<div class="col-md-3">
				<button type="button" class="btn btn-warning"
					style="width: 100%; height: 60px">
					<p style="padding: 0px; height: 100%; margin-top: 10px;">글쓰기</p>
				</button>

			</div>
		</div>


	</div>
	<br>
	<br>
	<br>


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
<!-- JS -->
<!--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->

</html>