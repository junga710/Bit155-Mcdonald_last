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

</head>

<body>
	<%--   <c:set var="ordersDTO" value="${requestScope.ordersDTO}"/>    --%>

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
						<h1>주문정보</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="page-header float-right">
					<div class="page-title">
						<ol class="breadcrumb text-right">
							<li class="active">주문정보</li>
						</ol>
					</div>
				</div>
			</div>
		</div>

		<div class="content mt-3">
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row ">

						<div class="col-2"></div>

						<div class="col-8">
							<div class="card">
								<!-- <div class="card-header">
									<strong>OO</strong> 정보
								</div> -->
								<div class="card-body card-block">
									<form method="post" class="form-horizontal">
										<div class="row form-group">
											<div
												class="col col-md-3 d-flex justify-content-center align-items-center ">
												<label for="m_id" class=" form-control-label">주문번호</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="text" id="m_id" name="m_id"
													value="${ordersDTO.order_code}" disabled=""
													placeholder="Text" class="form-control">
											</div>
										</div>
										<div class="row form-group">
											<div
												class="col col-md-3 d-flex justify-content-center align-items-center ">
												<label for="password" class=" form-control-label">아이디</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="text" id="password" name="password"
													value="${ordersDTO.o_id}" disabled="" class="form-control">
											</div>
										</div>
										<div class="row form-group">
											<div
												class="col col-md-3 d-flex justify-content-center align-items-center ">
												<label for="name" class=" form-control-label">지점명</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="text" id="name" name="name"
													value="${ordersDTO.s_name}" disabled=""
													class="form-control">
											</div>
										</div>
										<div class="row form-group">
											<div
												class="col col-md-3 d-flex justify-content-center align-items-center ">
												<label for="email" class=" form-control-label">결제방법</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="email" id="email" name="email"
													value="${ordersDTO.payment_method}" disabled=""
													class="form-control">
											</div>
										</div>
										<div class="row form-group">
											<div
												class="col col-md-3 d-flex justify-content-center align-items-center ">
												<label for="post_code" class=" form-control-label">결제금액</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="text" id="post_code" name="post_code"
													value="${ordersDTO.payment_price}" disabled=""
													class="form-control">
											</div>
										</div>
										<div class="row form-group">
											<div
												class="col col-md-3 d-flex justify-content-center align-items-center ">
												<label for="post_code" class=" form-control-label">결제일자</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="text" id="post_code" name="post_code"
													value="${ordersDTO.payment_date}" disabled=""
													class="form-control">
											</div>
										</div>
										<div class="row form-group">
											<div
												class="col col-md-3 d-flex justify-content-center align-items-center ">
												<label for="address" class=" form-control-label">주소</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="text" id="address" name="address"
													value="${ordersDTO.address}" disabled=""
													class="form-control">
											</div>
										</div>

										<div class="row form-group">
											<div
												class="col col-md-3 d-flex justify-content-center align-items-center ">
												<label for="address" class=" form-control-label">상세주소</label>
											</div>
											<div class="col-12 col-md-9">
												<input type="text" id="address_detail" name="address_detail"
													value="${ordersDTO.address_detail}" disabled=""
													class="form-control">
											</div>
										</div>

										<!-- 구매상품 -->
										<div class="table-responsive">
											<table class="table table-bordered text-center">
												<thead>
													<tr>
														<th>#</th>
														<th>상품사진</th>
														<th>이름</th>
														<th>상품수량</th>
													</tr>
												</thead>
												<tbody>
													<c:set var="odList" value="${requestScope.odList}"/>
													<c:forEach var="list" items="${odList}">
														<tr>
															<td style="width: 100px; padding-top: 18px;">구매상품</td>
															<td><img id="preview"
																src="vendors/images/DB_images/${list.product_image}"
																width="250px" alt="로컬에 있는 이미지가 보여지는 영역"></td>
															<td><input type="text" id="" name=""
																class="form-control" value="${list.product_name}">
															</td>
															<td><input type="text" id="sugar" name="sugar"
																class="form-control" value="${list.order_amount}">
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
								</div>
								<div class="card-footer">
									<%-- <a href="MemberUpdatePage.m?m_id=${memberDTO.m_id}"
										type="button" class="btn btn-primary btn-sm"> <i
										class="fa fa-dot-circle-o"></i> 수정
									</a> <a href="MemberDelete.m?m_id=${memberDTO.m_id}" type="button"
										class="btn btn-danger btn-sm"> <i
										class="fa fa-dot-circle-o"></i> 삭제
									</a> --%>
									<!-- <button type="submit" class="btn btn-primary btn-sm">
                                        <i class="fa fa-dot-circle-o"></i> Submit
                                    </button> -->
									<!-- <button type="reset" class="btn btn-danger btn-sm">
                                        <i class="fa fa-ban"></i> Reset
                                    </button> -->
								</div>
								</form>
							</div>
						</div>

						<div class="col-2"></div>


					</div>
				</div>
			</div>



		</div>
		<!-- .content -->
	</div>
	<!-- /#right-panel -->


	<jsp:include page="./common/script.jsp"></jsp:include>
	<!-- 	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.min.js"></script> -->

	<script>
		$(function() {

		});
	</script>

</body>

</html>