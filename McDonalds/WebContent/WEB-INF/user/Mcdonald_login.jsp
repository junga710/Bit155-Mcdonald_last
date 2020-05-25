<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>로그인 페이지</title>

</head>

<body>

	<!-- header include-->
	<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>
	<section id="container">

	
 <div class="login">
        <h1 class="titDep1" style="padding-top: 5%;"><strong>로그인</strong></h1>
        <ul   style="padding-left: 10%;
        margin-top: 1%;">
            <li id="topli"><a href="Macdonald_main.html" style="color: white;">Home</a></li>
            <li id="topli2"><a href="#"style="color: white;" >Menu</a></li>
           
        </ul>
    </div>



		<div class="container" style="width:500px">


			<article class="card-body" style="width:500px; margin-top:100px ;margin-bottom:100px">
				 <h3 class="text-center ">Login</h3>
				<form action="login.b" method="post" name="loginForm"
					id="loginForm">
					<div class="form-group">
						<label>Your id</label> <input type="text" name="id" id="id" class="form-control"
							placeholder="Id" type="email">
					</div>
					<!-- form-group// -->
					<div class="form-group">
						 <label>Your
							password</label> <input type="password" name="pwd" id="pwd"class="form-control" placeholder="******">
					</div>
					<!-- form-group// -->
					<!-- form-group// -->
					<div class="form-group">
						<input type="submit" value="로그인" class="btn btn-warning"> 
					</div>
				</form>
					<div class="form-group " style="text-align: right" >
							<label> <a href="Mcdonald_joinform.jsp" class="text-warning">회원가입하러 가기</a>
							</label>
					</div>
					<!-- form-group// -->
			</article>





		</div>
	</section>


	<!--footer include -->
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>




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

