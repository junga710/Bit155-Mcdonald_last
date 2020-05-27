<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
 <jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include> 


<!-- summer note-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/summernote-lite.css">


<title>공지게시판</title>

<style>
#star_grade a {
	text-decoration: none;
	color: gray;
}

#star_grade a.on {
	color: red;
}

/*  p{
padding-left:0px;
 } */
 
</style>
</head>

<body>

	
	<!-- header include-->
	<jsp:include page="../common/header.jsp"></jsp:include>
 

	<div class="review_detail">
		<h1 class="titDep1" style="color: white;">공지게시판 글쓰기</h1>
		<ul style="margin-left: 100px;">
			<li id="topli"><a href="../Mcdonald_main.html">Home</a></li>
			<li id="topli"><a href="../menu/Mcdonald_menu_hamburger.html">Menu</a></li>
		</ul>
	</div>


<div class="container" style="border-bottom: 1px solid; width:20%;">
<h2 style="text-align: center;">공지게시판 글 작성</h2>
	</div>
	<br>
	<br>
	<br>
	<div class="container">
		<form method="post" name="BoardNoticeRegister"
			id="BoardNoticeRegister" action="BoardNoticeRegister.b">
			<div class="input-group">
				<input type="text" name="n_title" class="form-control"
					placeholder="글제목">
			</div>
			
			<br>
			<textarea id="summernote" name="n_content"></textarea>
			<div style="position: relative; padding-top: 2%;">
				<input id="subBtn" type="submit" class="btn btn-warning btn-lg"
					value="글 등록" onclick="goWrite(this.form)" 
					style="position: absolute; right: 50%; border-radius: 70px;"/>
			</div>
			<br>
			<br>
			<br>
		</form>
	</div>


	<!--footer include -->
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>

	<script
		src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>

 <script src="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/summernote-lite.js"></script>
<%-- <script src="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/lang/summernote-ko-KR.js"></script>
 --%>
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
			focus:false,
			minHeight:null,
			maxHeight:null,
		});
		$("p").each(function(){
		    if (!$(this).text().trim().length) {
		        $(this).remove();
		    }
		});
	
		
	});
	</script>
</body>

</html>

