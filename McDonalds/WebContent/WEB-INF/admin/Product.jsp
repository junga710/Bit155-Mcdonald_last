<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>McDonalds Admin</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="./common/head.jsp"></jsp:include>

<!-- dataTable start -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/admincss/assets/dataTable/css/jquery.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/admincss/assets/dataTable/css/responsive.dataTables.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/admincss/assets/dataTable/css/main.css">
<!-- dataTable end  -->

</head>

<body>
	<c:set var="pList" value="${requestScope.pList}" />

	<!-- Left Panel -->

	<jsp:include page="./common/LeftMenu.jsp"></jsp:include>

	<!-- Left Panel -->

	<!-- Right Panel -->

	<div id="right-panel" class="right-panel">

		<!-- Header-->
		<jsp:include page="./common/TopMenu.jsp"></jsp:include>
		<!-- Header-->

		<div class="breadcrumbs">
			<div class="col-sm-4">
				<div class="page-header float-left">
					<div class="page-title">
						<h1>상품관리</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="page-header float-right">
					<div class="page-title">
						<ol class="breadcrumb text-right">
							<li class="active">상품관리</li>
						</ol>
					</div>
				</div>
			</div>
		</div>

		<!-- dataTable -->
		<div class="content mt-3">
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row ">
						<div class="col-12">
							<div class="wrap">
								<table id="myTable" class="table text-center "
									style="width: 100%;">
									<thead>
										<tr class="text-center">
											<th class="text-center" style="width: 50px;">상품사진</th>
											<th class="text-center" style="width: 50px;">상품번호</th>
											<th style="width: 30px;">상품이름</th>
											<th style="width: 30px;">상품가격</th>
											<th style="width: 30px;">상품종류</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${pList}">
											<tr onmouseover="this.style.backgroundColor='#cecece'"
												onmouseout="this.style.backgroundColor='white'" 
												style="vertical-align:center" >
												<td align="center"><img
													src="vendors/images/DB_images/${list.product_image}"
													style="width: 100px; heigfht: 100px;"></td>
												<td align="center"><a href="ProductDetail.p?product_code=${list.product_code}">${list.product_code}</a>
												</td>
												<td align="center">${list.product_name}</td>
												<td align="center">${list.product_price}</td>
												<td align="center">${list.product_kind}</td>
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
		<!-- .content -->
	</div>
	<!-- /#right-panel -->


	<jsp:include page="./common/script.jsp"></jsp:include>

	<!-- dataTaBle start -->
	<script
		src='${pageContext.request.contextPath}/admincss/assets/dataTable/js/jquery-3.3.1.min.js'></script>
	<script
		src="${pageContext.request.contextPath}/admincss/assets/dataTable/js/jquery.dataTables.js"></script>
	<script
		src="${pageContext.request.contextPath}/admincss/assets/dataTable/js/dataTables.responsive.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admincss/assets/dataTable/js/dataTables.buttons.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admincss/assets/dataTable/js/buttons.html5.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/admincss/assets/dataTable/js/product.js"></script>
	<!-- dataTaBle end -->

	<script>
        $(function () {

        });

    </script>

</body>

</html>