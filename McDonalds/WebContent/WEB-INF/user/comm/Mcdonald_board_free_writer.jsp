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
<link rel="stylesheet" href="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/summernote-lite.css">

<title>자유게시판 글쓰기</title>

<style>
#star_grade a {
	text-decoration: none;
	color: gray;
}

#star_grade a.on {
	color: red;
}
</style>
</head>

<body>

	
	<!-- header include-->
	<%-- <jsp:include page="../common/header.jsp"></jsp:include> --%>


	<div class="review_detail">
		<h1 class="titDep1" style="color: white;">자유게시판 글쓰기</h1>
		<ul style="margin-left: 100px;">
			<li id="topli"><a href="../Mcdonald_main.html">Home</a></li>
			<li id="topli"><a href="../menu/Mcdonald_menu_hamburger.html">Menu</a></li>
		</ul>
	</div>





	<div class="container">

		<form name="form" id="form" role="form" method="post"
					action="BoardFreeRegister.b" enctype="multipart/form-data">

			<div class="input-group mb-3">
				<div class="custom-file">
					<input type="file" class="custom-file-input" id="inputGroupFile02">
					<label class="custom-file-label" for="inputGroupFile02"
						aria-describedby="inputGroupFileAddon02">Choose file</label>
				</div>
			</div>
			
			<div class="input-group ">
				<input type="text" class="form-control mb-4" placeholder="글제목"
					aria-label="Recipient's username" aria-describedby="button-addon2">
				<div class="input-group-append"></div>

			</div>

			<div id="summernote"></div>

			<div style="position: relative; left: 400px; margin: 50px 50px">
				<button type="submit" class="btn btn-danger mr-3 btn-lg">글등록</button>
			</div>
		</form>
	</div>



	<!--footer include -->
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>

<script src="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/lang/summernote-ko-KR.js"></script>

	<script
		src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>


	<script>
		// Add the following code if you want the name of the file appear on select
		$(".custom-file-input").on(
				"change",
				function() {
					var fileName = $(this).val().split("\\").pop();
					$(this).siblings(".custom-file-label").addClass("selected")
							.html(fileName);
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
		$('#star_grade a').click(function() {
			$(this).parent().children("a").removeClass("on"); /* 별점의 on 클래스 전부 제거 */
			$(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
			return false;
		});

		$('#summernote').summernote({
			placeholder : 'Hello Bootstrap 4',
			tabsize : 2,
			height : 200
		});
	</script>
</body>

</html>

