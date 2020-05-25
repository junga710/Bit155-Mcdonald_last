<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../assets/css/common.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Rubik:wght@700&display=swap"
	rel="stylesheet">

<!--Jquery, Popper.js, Bootstrap Js-->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>


<!-- summer note-->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
	rel="stylesheet">


<title>리뷰게시판 글쓰기</title>

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
	<jsp:include page="/user/header.jsp"></jsp:include>
	
	<div class="board_notice_detail">
        <h1 class="titDep1" style="padding-top: 3%; color:white;"><strong>리뷰게시판</strong></h1>
        <ul style="padding-left: 10%; margin-top: 5%;">
            <li id="topli"><a href="../Mcdonald_main.html" style="color: white;">Home</a></li>
            <li id="topli"><a href="../menu/Mcdonald_menu_hamburger.html" style="color: white;">menu</a></li>
        </ul>
    </div>


		<div class="container">

			<form>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputPassword4">지점별</label> <select
							class="custom-select">
							<option selected>지점 고르기</option>
							<option value="1">One</option>
							<option value="2">Two</option>
							<option value="3">Three</option>
						</select>
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">별점</label>
						<p id="star_grade">
							<a href="#">★</a> <a href="#">★</a> <a href="#">★</a> <a href="#">★</a>
							<a href="#">★</a>
						</p>
					</div>
				</div>
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
	<jsp:include page="/user/footer.jsp"></jsp:include>

	<script
		src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
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
        // Add the following code if you want the name of the file appear on select
        $(".custom-file-input").on("change", function () {
            var fileName = $(this).val().split("\\").pop();
            $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
        });
    </script>
	<script>
        $('#star_grade a').click(function(){
            $(this).parent().children("a").removeClass("on");  /* 별점의 on 클래스 전부 제거 */ 
            $(this).addClass("on").prevAll("a").addClass("on"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
            return false;
        });

        $('#summernote').summernote({
          placeholder: 'Hello Bootstrap 4',
          tabsize: 2,
          height: 200
        });
</script>
</body>

</html>

