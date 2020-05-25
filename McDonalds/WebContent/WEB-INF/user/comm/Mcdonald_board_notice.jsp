<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="../common/head.jsp"></jsp:include>

<!-- dataTable start -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/usercss/assets/dataTable/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/usercss/assets/dataTable/css/responsive.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/usercss/assets/dataTable/css/main.css">
<!-- dataTable end  -->

</head>


<body>
	<div class="board_notice">
		<h1 class="titDep1" style="padding-top: 3%; color: white;">
			<strong>공지사항</strong>
		</h1>
		<ul style="padding-left: 10%; margin-top: 5%;">
			<li id="topli"><a href="../Mcdonald_main.jsp"
				style="color: white;">Home</a></li>
			<li id="topli"><a href="../menu/Mcdonald_menu_hamburger.jsp"
				style="color: white;">menu</a></li>
		</ul>
	</div>
	<!-- //visualArea -->
	<!-- dataTable -->

	<div class="content mt-3">
		<div class="main-panel">
			<div class="content-wrapper">
				<div class="row ">
					<div class="col-12">
						<div class="wrap">
							<table id="myTable" class="table text-center"
								style="width: 100%;">
								<thead>
									<tr class="text-center">
										<th style="width: 10%;">번호</th>
										<th style="width: 50%;">제목</th>
										<th style="width: 30%;">날짜</th>
									</tr>
								</thead>

								<tbody>
									<c:set var="blist" value="${requestScope.blist}" />
									<c:forEach var="boardNotice" items="${blist}">
										<tr onmouseover="this.style.backgroundColor='#cecece'"
											onmouseout="this.style.backgroundColor='white'">
											<td align="center">${boardNotice.n_code}</td>
											<td align="center"><a
												href="BoardNoticeDetail.b?n_code=${boardNotice.n_code}">${boardNotice.n_title}</a></td>
											<td align="center">${boardNotice.n_write_date}</td>
										</tr>
									</c:forEach>
								</tbody>

							</table>
						</div>
					</div>
				</div>
			</div>
		</div>



	</div>


	<!-- footer -->
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<jsp:include page="../common/script.jsp"></jsp:include>

	<!-- dataTaBle start -->
	<script
		src="${pageContext.request.contextPath}/usercss/assets/dataTable/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/usercss/assets/dataTable/js/jquery.dataTables.js"></script>
	<script
		src="${pageContext.request.contextPath}/usercss/assets/dataTable/js/dataTables.responsive.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/usercss/assets/dataTable/js/dataTables.buttons.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/usercss/assets/dataTable/js/buttons.html5.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/usercss/assets/dataTable/js/notice.js"></script>

	<!-- dataTaBle end -->

</body>


</html>