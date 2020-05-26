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


<title>공지게시판 수정</title>

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
	<jsp:include page="../common/header.jsp"></jsp:include>
 

	<div class="review_detail">
		<h1 class="titDep1" style="color: white;">공지게시판 글 수정하기</h1>
		<ul style="margin-left: 100px;">
			<li id="topli"><a href="../Mcdonald_main.html">Home</a></li>
			<li id="topli"><a href="../menu/Mcdonald_menu_hamburger.html">Menu</a></li>
		</ul>
	</div>




	<h2 style="text-align: center;">공지게시판 글 수정</h2>
	<br>
	<br>
	<br>
	<div class="container">
		<form method="post" name="BoardNoticeRegister"
			id="BoardNoticeRegister" action="BoardNoticeUpdate.b?n_code=${boardNoticeDTO.n_code} ">
			<div class="input-group">
				<input type="text" name="n_title" class="form-control"
					value="${boardNoticeDTO.n_title}">
			</div>
			
			<br>
			<textarea id="summernote" name="n_content">${boardNoticeDTO.n_content}</textarea>
			
			<div style="position: relative; left: 360px; margin: 50px 50px">
				<input id="subBtn" type="submit" class="btn btn-warning btn-lg"
					value="글 수정하기" onclick="goWrite(this.form)" />
			</div>
		</form>
	</div>


	<!--footer include -->
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>

	<script
		src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>

<script src="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/summernote-lite.js"></script>
<script src="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/lang/summernote-ko-KR.js"></script>

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

	<!-- 썸머노트 -->
	<script>
function goWrite(frm) {
	var title = frm.n_title.value;
	var content = frm.n_content.value;
	
	if (title.trim() == ''){
		alert("제목을 입력해주세요");
		return false;
	}
	if (content.trim() == ''){
		alert("내용을 입력해주세요");
		return false;
	}
	frm.submit();
}
</script>
	
	
	<script>
	$(document).ready(function(){
		$('#summernote').summernote({
			tabsize : 2,
			height : 500,
			focus:true,
			minHeight:null,
			maxHeight:null
		});
	});
	</script>
</body>

</html>

