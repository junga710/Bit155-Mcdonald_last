<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>공지사항 상세보기</title>
<jsp:include page="../common/head.jsp"></jsp:include>
</head>


<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div class="board_notice_detail">
		<h1 class="titDep1" style="padding-top: 3%; color: white;">
			<strong>공지사항</strong>
		</h1>
		<ul style="padding-left: 10%; margin-top: 5%;">
			<li id="topli"><a href="../Mcdonald_main.html"
				style="color: white;">Home</a></li>
			<li id="topli"><a href="../menu/Mcdonald_menu_hamburger.html"
				style="color: white;">menu</a></li>
		</ul>
	</div>
	<!-- //visualArea -->
	<c:set var="board" value="${requestScope.boardNoticeDTO}" />
	<div style="padding-top: 2%; padding-right: 2%;">
		<div class="container">
			<div class="row" style="border-bottom: 3px solid #292929;">
				<div class="col"></div>
				<h4>
					<strong>${board.n_title}</strong>
				</h4>
				<div class="col-8">
					<p style="color: black; position:relative; right:-35%;">
						작성일 : ${board.n_write_date}&nbsp;&nbsp;|
							&nbsp;&nbsp;조회수 : ${board.n_read_num}&nbsp;&nbsp;&nbsp;
					</p>
				</div>
			</div>


			<div class="contentarea" style="border-bottom: 0.5px solid #292929;">
				<p style="text-align: center; align: center; padding-left: 0px;">
					<br style="clear: both;"> <br style="clear: both;">${board.n_content}</p>

				<br> <br> <br> <br> <br>
			</div>
			</div>
			<div style="padding-top:3%; position: relative;">
				<c:choose>
					<c:when test="${id == 'admin'}">
						<a href="BoardNoticeUpdatePage.b?n_code=${board.n_code}"
							class="btn btn-danger btn-lg" role="button"
							style="display: inline-block; border-radius: 70px; position:absolute; top: 10%; right:29%;"><b>수정</b></a>
						<a href="BoardNoticeDelete.b?n_code=${board.n_code}"
							class="btn btn-warning btn-lg" role="button"
							style="border-radius: 70px; position:absolute; top: 10%; right:25%;"><b>삭제</b></a>
					</c:when>
					<c:otherwise>

					</c:otherwise>
				</c:choose>
			</div>
		</div>
	<!--     <hr style= "width: 70%; height:1px;  background-color: black;">
    <button type="button" class="btn" id= "prev" ><strong>이전</strong></button>
    <button type="button" class="btn" id= "btnMC" ></strong>목록보기</strong></button> -->

	<jsp:include page="../common/footer.jsp"></jsp:include>
	<jsp:include page="../common/script.jsp"></jsp:include>
	<script
		src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>
</body>

</html>