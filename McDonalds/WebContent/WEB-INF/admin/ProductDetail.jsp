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

<style>
#preview {
	width: 250px;
	height: 250px;
	border-radius: 10px;
	margin: auto;
	margin-bottom: 10px;
	outline: 1px dashed #92b0b3;
	outline-offset: -10px;
	text-align: center;
	transition: all .15s ease-in-out;
	background-color: lightgray;
}

#outer {
	width: 100%;
	text-align: center;
}
</style>

</head>

<body>

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
						<h1>상품상세</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="page-header float-right">
					<div class="page-title">
						<ol class="breadcrumb text-right">
							<li class="active">상품상세</li>
						</ol>
					</div>
				</div>
			</div>
		</div>

		<!-- dataTable -->
		<div class="content mt-3">
			<div class="main-panel">
				<div class="content-wrapper">
					<!-- <div class="row d-flex justify-content-center"> -->
					<div class="row">
						<div class="col-2"></div>

						<div class="col-8">
							<div class="card">
								<!-- <div class="card-header"> -->
								<!-- 	<strong>OO</strong> 정보 -->
								<!-- </div> -->
								<div class="card-body card-block d-flex justify-content-center">


									<form action="#" method="post" class="form-horizontal">
										<div style="width: 500px;"text-center">

											<div class="row form-group">
												<div id="outer"
													class=" d-flex justify-content-center align-items-center">
													<div class="col col-md-3 ">
														<label for="m_id" class=" form-control-label">상품사진</label>
													</div>
													<div class="col-12 col-md-9 ">
														<img id="preview"
															src="vendors/images/DB_images/${productDto.product_image}"
															width="200" alt="로컬에 있는 이미지가 보여지는 영역"
															style="margin-bottom: 15px;">
														<!-- <div class="custom-file">
                                                            <input type="file" id="fileName" name="fileName"
                                                                class="custom-file-input" accept="image/*">
                                                            <label class="custom-file-label" for="inputGroupFile01"
                                                                style="text-align:left">Choosse
                                                                file</label>
                                                        </div> -->
													</div>
												</div>
											</div>

											<div class="row form-group">
												<div
													class="col col-md-3 d-flex justify-content-center align-items-center ">
													<label for="m_id" class=" form-control-label">상품번호</label>
												</div>
												<div class="col-12 col-md-9">
													<input style="width: 300px;" type="text" id="m_id"
														name="m_id" class="form-control" disabled=""
														value="${productDto.product_code}">
												</div>
											</div>

											<div class="row form-group">
												<div
													class="col col-md-3 d-flex justify-content-center align-items-center ">
													<label for="m_id" class=" form-control-label">상품이름</label>
												</div>
												<div class="col-12 col-md-9">
													<input style="width: 300px;" type="text" id="m_id"
														name="m_id" class="form-control" disabled=""
														value="${productDto.product_name}">
												</div>
											</div>

											<div class="row form-group">
												<div
													class="col col-md-3 d-flex justify-content-center align-items-center ">
													<label for="password" class=" form-control-label">상품가격</label>
												</div>
												<div class="col-12 col-md-9">
													<input style="width: 300px;" type="text" id="password"
														name="password" class="form-control" disabled=""
														value="${productDto.product_price}">
												</div>
											</div>

											<div class="row form-group">
												<div
													class="col col-md-3 d-flex justify-content-center align-items-center ">
													<label for="name" class=" form-control-label">카테고리</label>
												</div>
												<div class="col-12 col-md-9">
													<input style="width: 300px;" type="text" id="name"
														name="name" class="form-control" disabled=""
														value="${productDto.product_category}">
												</div>
											</div>

											<div class="row form-group">
												<div
													class="col col-md-3 d-flex justify-content-center align-items-center ">
													<label for="name" class=" form-control-label">상품종류</label>
												</div>
												<div class="col-12 col-md-9">
													<input style="width: 300px;" type="text" id="name"
														name="name" class="form-control" disabled=""
														value="${productDto.product_kind}">
												</div>
											</div>

											<div class="row form-group">
												<div
													class="col col-md-3 d-flex justify-content-center align-items-center ">
													<label for="email" class=" form-control-label">상품재고</label>
												</div>
												<div class="col-12 col-md-9">
													<input style="width: 300px;" type="email" id="email"
														name="email" class="form-control" disabled=""
														value="${productDto.product_stock}">
												</div>
											</div>
										</div>




										<!-- 상품 영양정보 -->
										<div class="table-responsive">
											<table class="table table-bordered text-center">
												<thead>
													<tr>
														<th>#</th>
														<th>중량</th>
														<th>열량</th>
														<th>당</th>
														<th>단백질</th>
														<th>포화지방</th>
														<th>나트륨</th>
														<th>카페인</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td style="width: 100px; padding-top: 18px;">영양정보</td>
														<td><input type="text" id="weight" name="weight"
															class="form-control" disabled="" value="${nutritionDto.weight}g"></td>
														<td><input type="text" id="calorie" name="calorie"
															class="form-control" disabled="" value="${nutritionDto.calorie}kcal"></td>
														<td><input type="text" id="sugar" name="sugar"
															class="form-control" disabled="" value="${nutritionDto.sugar}g"></td>
														<td><input type="text" id="protein" name="protein"
															class="form-control" disabled="" value="${nutritionDto.protein}g"></td>
														<td><input type="text" id="fat" name="fat"
															class="form-control" disabled="" value="${nutritionDto.fat}g"></td>
														<td><input type="text" id="natrium" name="natrium"
															class="form-control" disabled="" value="${nutritionDto.natrium}mg"></td>
														<td><input type="text" id="caffeine" name="caffeine"
															class="form-control" disabled="" value="${nutritionDto.caffeine}mg"></td>
													</tr>
												</tbody>
											</table>
										</div>

									</form>
								</div>
								
								<div class="card-footer">
									<a href="ProductUpdatePage.p?product_code=${productDto.product_code}" type="button" class="btn btn-primary btn-sm"> <i
										class="fa fa-dot-circle-o"></i> 수정
									</a> 
									<a href="ProductDelete.p?product_code=${productDto.product_code}&nutrition_code=${nutritionDto.nutrition_code}" type="button" class="btn btn-danger btn-sm"> <i
										class="fa fa-dot-circle-o"></i> 삭제
									</a>
								</div>
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

	<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.min.js"></script>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script>

        $(function () {

            // Add the following code if you want the name of the file appear on select
            $(".custom-file-input").on("change", function () {
                var fileName = $(this).val().split("\\").pop();
                $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
            });

        });


    </script>

</body>

</html>