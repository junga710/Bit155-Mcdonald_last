<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>



<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


<title>자유게시판 상세보기</title>
</head>

	<!-- header include-->
	<jsp:include page="../common/header.jsp"></jsp:include>

<body>
	<div class="board_notice_detail">
		<h1 class="titDep1" style="padding-top: 3%; color: white;">
			<strong>자유게시판</strong>
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
		<div class="row">
			<div class="col"></div>
			<h5>
				<strong>제목</strong>
			</h5>
			<div class="col-7"></div>
			<p class style="color: gray;">
				<strong>오늘날짜&nbsp;&nbsp;| &nbsp;&nbsp;조회수&nbsp;&nbsp;&nbsp;</strong>
			</p>
		</div>
	</div>
	<hr
		style="width: 70%; height: 3px; margin-top: 0; background-color: black;">
	</div>
	<br>
	<br>
	<br>
	<br>
	<br> 여
	<br> 기
	<br> 에
	<br> 내
	<br> 용이 들어갑니다
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-9"></div>
			<a href=""><img src="../vendors/images/svg/heart-regular.svg"></a>
			<div class="col">
				<strong>좋아요</strong>
			</div>
			<a href=""><img
				src="../vendors/images/svg/comment-dots-regular.svg"></a>
			<div class="col">
				<strong>댓글</strong>
			</div>
		</div>


		<div class="container">
			<div class="row mt-3">
				<div class="col-10"></div>
				<div class="col">
					<button type="button" class="btn btn-info" id="freebtnMC"
						style="position: absolute; right: 20%">
						<strong>답글</strong>
					</button>
				</div>
				<div class="col">
					<!--수정, 삭제는 본인만 볼수 있음 -->
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
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row mb-4"></div>
	</div>
	<div class="container">
		<h3>
			<strong>댓글</strong>
		</h3>
		<form action=".do">
			<div class="row"></div>
			<form>
				<div class="form-group">
					<label for="comment"></label>
					<textarea class="form-control" rows="5" id="comment"></textarea>
					<div class="row mt-2">
						<div class="col-11"></div>
						<div class="col">
							<a href="#" class="btn btn-info" role="button">등록</a>
						</div>
					</div>
				</div>
			</form>
	</div>

	<div class="container">
		<table class="table table-hover">
			<tbody>
				<tr>
					<td>John</td>
					<td>Doe</td>
					<td>댓글나올자리</td>
					<td>수정 취소</td>
				</tr>
			</tbody>
		</table>
	</div>



	<!-- 
                            <article class="bbsCon">
                                <div align="" style="" wfd-id="39">
                                    <div align="" style="" wfd-id="40">
                                        <div align="" style="" wfd-id="41">
                                            <p><img src="/upload/editor/20200227151443c34e6d0a-f3c3-4794-8336-681581d69c78.png"
                                                    title="%EC%88%98%EC%A0%95%EB%90%A8_%EC%BD%94%EB%A1%9C%EB%82%98%ED%8C%9D%EC%97%850226.png"
                                                    width="50%"><br style="clear:both;">&nbsp;</p>
                                        </div>
                                        <p><br></p>
                                    </div>
                                    <p><br></p>
                                </div>
                                <p><br></p>
                            </article> -->

	<!-- //contArea -->
	<form id="searchForm" method="post" wfd-id="31">
		<input type="hidden" name="seq" id="seq" wfd-id="69"> <input
			type="hidden" name="rnum" id="rnum" wfd-id="68">
	</form>

	<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>


	<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>
	
	<script src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>


</body>

</html>