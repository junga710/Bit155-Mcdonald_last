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
						<h1>상품등록</h1>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="page-header float-right">
					<div class="page-title">
						<ol class="breadcrumb text-right">
							<li class="active">상품등록</li>
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
								<!-- <div class="card-header">
									<strong>OO</strong> 정보
								</div> -->
								<div class="card-body card-block d-flex justify-content-center">


									<form action="ProductUpdate.p?product_code=${productDto.product_code}" method="post"
										class="form-horizontal" enctype="multipart/form-data">
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
														<div class="custom-file">
															<input type="file" id="product_image"
																name="product_image" class="custom-file-input"
																accept="image/*" value="${productDto.product_image}"> <label
																class="custom-file-label" for="inputGroupFile01"
																style="text-align: left">Choosse file</label>
														</div>
													</div>
												</div>
											</div>

											<div class="row form-group">
												<div
													class="col col-md-3 d-flex justify-content-center align-items-center ">
													<label for="m_id" class=" form-control-label">상품번호</label>
												</div>
												<div class="col-12 col-md-9">
													<input style="width: 300px;" type="text" id="product_code"
														name="product_code" class="form-control" readonly
														value="${productDto.product_code}">
												</div>
											</div>

											<div class="row form-group">
												<div
													class="col col-md-3 d-flex justify-content-center align-items-center ">
													<label for="m_id" class=" form-control-label">상품이름</label>
												</div>
												<div class="col-12 col-md-9">
													<input style="width: 300px;" type="text" id="product_name"
														name="product_name" class="form-control"
														value="${productDto.product_name}">
												</div>
											</div>

											<div class="row form-group">
												<div
													class="col col-md-3 d-flex justify-content-center align-items-center ">
													<label for="password" class=" form-control-label">상품가격</label>
												</div>
												<div class="col-12 col-md-9">
													<input style="width: 300px;" type="text" id="product_price"
														name="product_price" class="form-control"
														value="${productDto.product_price}">
												</div>
											</div>

											<div class="row form-group">
												<div
													class="col col-md-3 d-flex justify-content-center align-items-center ">
													<label for="name" class=" form-control-label">카테고리</label>
												</div>
												<div class="col-12 col-md-9">
													<select name="product_category" id="product_category"
														class="form-control">
														 <option value="${productDto.product_category}">${productDto.product_category}(기존,선택X)</option> 
													</select>
												</div>
											</div>

											<div class="row form-group">
												<div
													class="col col-md-3 d-flex justify-content-center align-items-center ">
													<label for="name" class=" form-control-label">상품종류</label>
												</div>
												<div class="col-12 col-md-9">
												<select name="product_kind" id="product_kind"
														class="form-control">
														<option value="${productDto.product_kind}">${productDto.product_kind}(기존,선택X)</option>
														<option value="단품">단품</option>
														<option value="세트">세트</option>
													</select>
												</div>
											</div>

											<div class="row form-group">
												<div
													class="col col-md-3 d-flex justify-content-center align-items-center ">
													<label for="email" class=" form-control-label">상품재고</label>
												</div>
												<div class="col-12 col-md-9">
													<input style="width: 300px;" type="text" id="product_stock"
														name="product_stock" class="form-control"
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
															class="form-control" 
															value="${nutritionDto.weight}"></td>
														<td><input type="text" id="calorie" name="calorie"
															class="form-control" 
															value="${nutritionDto.calorie}"></td>
														<td><input type="text" id="sugar" name="sugar"
															class="form-control"
															value="${nutritionDto.sugar}"></td>
														<td><input type="text" id="protein" name="protein"
															class="form-control" 
															value="${nutritionDto.protein}"></td>
														<td><input type="text" id="fat" name="fat"
															class="form-control" 
															value="${nutritionDto.fat}"></td>
														<td><input type="text" id="natrium" name="natrium"
															class="form-control"
															value="${nutritionDto.natrium}"></td>
														<td><input type="text" id="caffeine" name="caffeine"
															class="form-control" 
															value="${nutritionDto.caffeine}"></td>
													</tr>
												</tbody>
											</table>
										</div>
								</div>

								<div class="card-footer">
									<button type="submit" class="btn btn-primary btn-sm">
										<i class="fa fa-dot-circle-o"></i> 수정
									</button>
									<!-- <a href="#" type="button" class="btn btn-danger btn-sm">
                                        <i class="fa fa-dot-circle-o"></i> 초기화?
                                    </a> -->
								</div>
								</form>

							</div>
						</div>

						<!-- <div class="col-4">

                        </div> -->


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
		$(function() {

			// Add the following code if you want the name of the file appear on select
			$(".custom-file-input").on(
					"change",
					function() {
						var fileName = $(this).val().split("\\").pop();
						$(this).siblings(".custom-file-label").addClass(
								"selected").html(fileName);
					});

			//썸네일 시작
			var file = document.querySelector('#product_image');

			file.onchange = function() {
				var fileList = file.files;

				// 읽기
				var reader = new FileReader();
				reader.readAsDataURL(fileList[0]);

				//로드 한 후
				reader.onload = function() {
					document.querySelector('#preview').src = reader.result;
				};
			};
			//썸네일 끝

			$.ajax({
				url : "CategoryList.ajax",
				type : 'POST',
				dataType : "json",
				success : function(data) {
					$.each(data, function(i) {
						console.log(i + " / " + data[i])
						$("#product_category").append(
								"<option value='"+data[i]+"'>" + data[i]
										+ "</option>")
					});
				},
				error : function(request, status, error) {
					console.log("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error:" + error);
				}

			});

		});
	</script>

</body>

</html>