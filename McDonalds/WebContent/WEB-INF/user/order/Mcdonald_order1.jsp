<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>
<title>주문하기</title>

</head>
<style>
.show-grid [class^=col-] {
   padding-top: 10px;
   padding-bottom: 10px;
   background-color: #eee;
   background-color: #F3F3F3;
   border: 1px solid #ddd;
   border: 1px solid #FFFFFF;
}
</style>
<body>
	<!-- header include-->
	<jsp:include page="../common/header.jsp"></jsp:include>

	<div class="hamburgermenu">
		<h1 class="titDep1">
			<strong>주문하기</strong>
		</h1>
		<ul style="padding-left: 10%; margin-top: 5%;">
			<li id="topli"><a href="../Mcdonald_main.html">Home</a></li>
			<li id="topli"><a href="../menu/Mcdonald_menu_hamburger.html">Menu</a></li>
		</ul>
	</div>

	<div class="container show-grid">
		<div class="row">
			<div class="col-md-2">공간</div>
			<div class="col-md-10">메뉴 || 버거 & 세트</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<div class="btn-group-vertical" style="width: 99%">
					<button type="button" class="btn btn-warning"
						style="border-bottom: 1px solid darkblue;">일반메뉴</button>
					<button id="burgerButton" type="button" class="btn btn-warning"
						style="border-top: 1px solid darkblue;" value="버거">버거 &
						세트</button>
						
					<button id="MacMorningButton" type="button" class="btn btn-warning"
						value="맥모닝">맥모닝</button>
					<button id="SideButton" type="button" class="btn btn-warning" value="사이드">사이드
						</button>
					<button id="DesertButton" type="button" class="btn btn-warning" value="디저트">디저트
						</button>
					<button id="MacCafeButton" type="button" class="btn btn-warning" value="맥카페"
						style="border-bottom: 1px solid darkblue;">맥카페</button>
					<button id="BeverageButton" type="button" class="btn btn-warning" value="음료"
						style="border-bottom: 1px solid darkblue;">음료</button>
					<button type="button" class="btn btn-warning"
						style="border-top: 1px solid darkblue;">
						<br>
					</button>

					<br>
					<div style="width: 100%; margin-left: 8px; padding-right: 10px;">
						<!-- 전체보기 라디오버튼 -->
						<div class="custom-control custom-radio">
							<input type="radio" class="custom-control-input"
								id="defaultGroupExample1" name="groupOfDefaultRadios" checked>
							<label class="custom-control-label" for="defaultGroupExample1">전체보기</label>
						</div>

						<hr>
						<!--  -->
						<div class="custom-control custom-radio">
							<input type="radio" class="custom-control-input"
								id="defaultGroupExample2" name="groupOfDefaultRadios"> <label
								class="custom-control-label" for="defaultGroupExample2">낮은
								가격순</label>
						</div>

						<div class="custom-control custom-radio">
							<input type="radio" class="custom-control-input"
								id="defaultGroupExample3" name="groupOfDefaultRadios"> <label
								class="custom-control-label" for="defaultGroupExample3">높은
								가격순</label>
						</div>

						<hr>
						<div class="custom-control custom-radio">
							<input type="radio" class="custom-control-input"
								id="defaultGroupExample4" name="groupOfDefaultRadios"> <label
								class="custom-control-label" for="defaultGroupExample4">낮은
								칼로리순</label>
						</div>

						<div class="custom-control custom-radio">
							<input type="radio" class="custom-control-input"
								id="defaultGroupExample5" name="groupOfDefaultRadios"> <label
								class="custom-control-label" for="defaultGroupExample5">높은
								칼로리순</label>
						</div>
					</div>

				</div>
			</div>
<<<<<<< HEAD
=======

			<div class="col-md-7 _menuList">
>>>>>>> 6c715e7a11c0a63509ea2643d29a789661441096


			<!-- 동적추가완료 -->
			<div id="_menuList" class="col-md-7">
			
			
			
			</div>


			<div class="col-md-3" style="background-color: whitesmoke;">
				<div class="row" style="place-content: center;">내 주문 정보</div>
				<hr>
				<div class="row">
					&nbsp; &nbsp;배달 주소 : 경기도 하남시 덕풍동
					<!-- 여기에 주소를 받아야댐 -->
				</div>
				<hr>
				<div class="row">
					<div class="col-md-6" style="padding-left: 0px;">
						&nbsp; &nbsp;총 주문합계 :
						<!-- 여기에 총 가격 받아야댐 -->
					</div>
					<div class="col-md-6">
						<p style="color: green">₩ 17,300</p>
					</div>
				</div>
				<p></p>
				<div class="row" style="justify-content: center;">
					<a href="Mcdonald_order2.html" class="btn btn-danger"
						style="width: 85%; background-color: #D1402D; height: 40px;">결제
						진행하기</a>

					<!-- 버튼으로 넘어가야대는거 넣어야댐 -->
				</div>
				<hr>
				<div class="row">
					&nbsp; &nbsp; 주문 세부사항 <br> ----------------------------------
					<br> &nbsp; &nbsp; 동적으로 추가해야댐
					<!-- 동적으로 추가해야댐 대애애앰~~~~!!! -->
				</div>
			</div>
		</div>
	</div>


	<!-- 모달 버튼 누르면 해당 컨텐츠 나오게 해야댐 (6개 필요) -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">

				<div class="card-deck">
					<div class="card-body" style="width: 380px">
						<img class="card-img-top _productImage" src="" alt=""
							style="background-color: #ffffffab;">
						<div class="card-body" id="card-inner"
							style="background-color: #f6f6f6;">
							<strong class="_productName">허니sssss</strong>
							<div class="row">
								<div class="col-6"
									style="padding: 5px; border: aliceblue; align-self: center;">
									<div class="input-group">
										<span class="input-group-btn">
											<button type="button" class="btn btn-danger btn-number"
												data-type="minus" data-field="quant[2]"
												style="height: 45px;">
												<p style="margin: 0">-</p>
											</button>
										</span> <input type="text" name="quant[2]"
											class="form-control input-number" value="10" min="1"
											max="100" style="height: auto"> <span
											class="input-group-btn">
											<button type="button" class="btn btn-success btn-number"
												data-type="plus" data-field="quant[2]" style="height: 45px;">
												<p style="margin: 0">+</p>
											</button>
										</span>
									</div>

								</div>
								<div class="col-6"
									style="border: aliceblue; align-self: center;">
									<div class="row">
										<div class="col-6">
											<img class="card-img-top _productImage" src="" alt="">
										</div>
										<div class="col-6" style="place-self: center; margin: 0">

											<p style="margin: 0" class="_productKind">단품sss</p>
											<div class="_productPrice2"></div>
											<!-- 여기에 가격 동적으로 추가 -->
										</div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-6"
									style="padding: 5px; border: aliceblue; align-self: center;">


									<div class="input-group">
										<span class="input-group-btn">
											<button type="button" class="btn btn-danger btn-number"
												data-type="minus" data-field="quant[2]"
												style="height: 45px;">
												<p style="margin: 0">-</p>
											</button>
										</span> <input type="text" name="quant[2]"
											class="form-control input-number" value="10" min="1"
											max="100" style="height: auto"> <span
											class="input-group-btn">
											<button type="button" class="btn btn-success btn-number"
												data-type="plus" data-field="quant[2]" style="height: 45px;">
												<p style="margin: 0">+</p>
											</button>
										</span>
									</div>



								</div>
								<div class="col-6"
									style="border: aliceblue; align-self: center;">
									<div class="row">
										<div class="col-6">
											<img class="card-img-top _productImage2" src="" alt="">
										</div>
										<div class="col-6" style="place-self: center;">
											<p style="margin: 0" class="_productKind2">세트ssss</p>
											<div class="_productPrice3"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer" style="justify-content: left;">

					<button type="button" class="btn btn-warning"
						style="background-color: rgba(255, 217, 0, 0.87); border: 2px solid rgb(255, 0, 0); height: 40px;">추가하기</button>
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
</body>

<!--css-->
<link rel="stylesheet" href="../assets/css/common.css">
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
   integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
   crossorigin="anonymous">

<!--font-->
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&display=swap"
   rel="stylesheet">
<link
   href="https://fonts.googleapis.com/css2?family=Rubik:wght@700&display=swap"
   rel="stylesheet">

<!--Jquery, Popper.js, Bootstrap Js-->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
   integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
   crossorigin="anonymous"></script>

<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
   crossorigin="anonymous"></script>

<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
   crossorigin="anonymous"></script>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<!-- JS -->
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<script>

$(document).ready(function() {
<<<<<<< HEAD
	
	var temp = '버거'
	//주문 페이지 처음왔을때 버거&세트만
		 $.ajax({
			type : "post",
			url : "OrderPageBurger.ua",
			data : {
				product_category : temp
			},
			success : function(response) {
					$.each(response, function (index, item) {

							if(response[index].product_kind === '단품'){
								let start = $("#_menuList"); 
								start = "";
								if(index === 0){
								 	start += "<div class=\"row\" id=\"row1\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[0].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
								 	start += " <strong class=\"ko _productName\"> " + response[0].product_name + " </strong>"
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[0].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[0].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								} else if(index === 1){
									let row1_col2 = '';
									row1_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row1_col2 += "<div class=\"card-deck\">";
									row1_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row1_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[1].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row1_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row1_col2 += " <strong class=\"ko _productName\"> " + response[1].product_name + " </strong>"
									row1_col2 += " <div class=\"row\">";
									row1_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row1_col2 += "<div class=\"_productPrice\">가격 ₩" + response[1].product_price + " </div>"
									row1_col2 += "<div class=\"_productCalorie\"> " + response[1].nutrition_code + " Kcal</div>"
									row1_col2 += "</div>"
									row1_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row1_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row1_col2 += "추가</button>";
				                    
									row1_col2 += "</div>"; //col-6 2번째
									row1_col2 += "</div>"; //row
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-deck
									row1_col2 += "</div>"; //col
									$("#row1").append(row1_col2);	
								} else if(index === 2){
									start += "<div class=\"row\" id=\"row2\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[2].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
								 	start += " <strong class=\"ko _productName\"> " + response[2].product_name + " </strong>"
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[2].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[2].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 3){
									let row2_col2 = '';
									row2_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row2_col2 += "<div class=\"card-deck\">";
									row2_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row2_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[3].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row2_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row2_col2 += " <strong class=\"ko _productName\"> " + response[3].product_name + " </strong>"
									row2_col2 += " <div class=\"row\">";
									row2_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row2_col2 += "<div class=\"_productPrice\">가격 ₩" + response[3].product_price + " </div>"
									row2_col2 += "<div class=\"_productCalorie\"> " + response[3].nutrition_code + " Kcal</div>"
									row2_col2 += "</div>"
									row2_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row2_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row2_col2 += "추가</button>";
				                    
									row2_col2 += "</div>"; //col-6 2번째
									row2_col2 += "</div>"; //row
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-deck
									row2_col2 += "</div>"; //col
									$("#row2").append(row2_col2);	
								} else if(index === 4){
									start += "<div class=\"row\" id=\"row3\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[4].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
								 	start += " <strong class=\"ko _productName\"> " + response[4].product_name + " </strong>"
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[4].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[4].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 5){
									let row3_col2 = '';
									row3_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row3_col2 += "<div class=\"card-deck\">";
									row3_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row3_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[5].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row3_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row3_col2 += " <strong class=\"ko _productName\"> " + response[5].product_name + " </strong>"
									row3_col2 += " <div class=\"row\">";
									row3_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row3_col2 += "<div class=\"_productPrice\">가격 ₩" + response[5].product_price + " </div>"
									row3_col2 += "<div class=\"_productCalorie\"> " + response[5].nutrition_code + " Kcal</div>"
									row3_col2 += "</div>"
									row3_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row3_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row3_col2 += "추가</button>";
				                    
									row3_col2 += "</div>"; //col-6 2번째
									row3_col2 += "</div>"; //row
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-deck
									row3_col2 += "</div>"; //col
									$("#row3").append(row3_col2);	
								} 
								
							} //단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		}); 
	
	
	
	//버거 & 세트 클릭했을때 
	$('#burgerButton').click(function(){
		
		//menulist empty
		$('#_menuList').empty()
		
		var product_category = $(this).attr('value')
	
		$.ajax({
			type : "post",
			url : "OrderPageBurger.ua",
			data : {
				/* product_category : decodeURIComponent(product_category) */
				product_category : product_category
			},
			success : function(response) {
					$.each(response, function (index, item) {

							if(response[index].product_kind === '단품'){
								let start = $("#_menuList");
								start = "";
								if(index === 0){
								 	start += "<div class=\"row\" id=\"row1\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[0].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[0].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[0].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								} else if(index === 1){
									let row1_col2 = '';
									row1_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row1_col2 += "<div class=\"card-deck\">";
									row1_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row1_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[1].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row1_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row1_col2 += " <div class=\"row\">";
									row1_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row1_col2 += "<div class=\"_productPrice\">가격 ₩" + response[1].product_price + " </div>"
									row1_col2 += "<div class=\"_productCalorie\"> " + response[1].nutrition_code + " Kcal</div>"
									row1_col2 += "</div>"
									row1_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row1_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row1_col2 += "추가</button>";
				                    
									row1_col2 += "</div>"; //col-6 2번째
									row1_col2 += "</div>"; //row
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-deck
									row1_col2 += "</div>"; //col
									$("#row1").append(row1_col2);	
								} else if(index === 2){
									start += "<div class=\"row\" id=\"row2\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[2].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[2].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[2].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 3){
									let row2_col2 = '';
									row2_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row2_col2 += "<div class=\"card-deck\">";
									row2_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row2_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[3].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row2_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row2_col2 += " <div class=\"row\">";
									row2_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row2_col2 += "<div class=\"_productPrice\">가격 ₩" + response[3].product_price + " </div>"
									row2_col2 += "<div class=\"_productCalorie\"> " + response[3].nutrition_code + " Kcal</div>"
									row2_col2 += "</div>"
									row2_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row2_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row2_col2 += "추가</button>";
				                    
									row2_col2 += "</div>"; //col-6 2번째
									row2_col2 += "</div>"; //row
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-deck
									row2_col2 += "</div>"; //col
									$("#row2").append(row2_col2);	
								} else if(index === 4){
									start += "<div class=\"row\" id=\"row3\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[4].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[4].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[4].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 5){
									let row3_col2 = '';
									row3_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row3_col2 += "<div class=\"card-deck\">";
									row3_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row3_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[5].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row3_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row3_col2 += " <div class=\"row\">";
									row3_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row3_col2 += "<div class=\"_productPrice\">가격 ₩" + response[5].product_price + " </div>"
									row3_col2 += "<div class=\"_productCalorie\"> " + response[5].nutrition_code + " Kcal</div>"
									row3_col2 += "</div>"
									row3_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row3_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row3_col2 += "추가</button>";
				                    
									row3_col2 += "</div>"; //col-6 2번째
									row3_col2 += "</div>"; //row
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-deck
									row3_col2 += "</div>"; //col
									$("#row3").append(row3_col2);	
								} 
								
								
								
							} //단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	});
	
	
	//맥모닝 클릭했을때
	$('#MacMorningButton').click(function(){
		
		//menulist empty
		$('#_menuList').empty()
		
		var product_category = $(this).attr('value')
	
		$.ajax({
			type : "post",
			url : "OrderPageBurger.ua",
			data : {
				/* product_category : decodeURIComponent(product_category) */
				product_category : product_category
			},
			success : function(response) {
					$.each(response, function (index, item) {
						console.log("ss : " + response[0].product_image)
							if(response[index].product_kind === '단품'){
								let start = $("#_menuList");
								start = "";
								if(index === 0){
								 	start += "<div class=\"row\" id=\"row1\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[0].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[0].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[0].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								} else if(index === 1){
									let row1_col2 = '';
									row1_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row1_col2 += "<div class=\"card-deck\">";
									row1_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row1_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[1].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row1_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row1_col2 += " <div class=\"row\">";
									row1_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row1_col2 += "<div class=\"_productPrice\">가격 ₩" + response[1].product_price + " </div>"
									row1_col2 += "<div class=\"_productCalorie\"> " + response[1].nutrition_code + " Kcal</div>"
									row1_col2 += "</div>"
									row1_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row1_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row1_col2 += "추가</button>";
				                    
									row1_col2 += "</div>"; //col-6 2번째
									row1_col2 += "</div>"; //row
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-deck
									row1_col2 += "</div>"; //col
									$("#row1").append(row1_col2);	
								} else if(index === 2){
									start += "<div class=\"row\" id=\"row2\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[2].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[2].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[2].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 3){
									let row2_col2 = '';
									row2_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row2_col2 += "<div class=\"card-deck\">";
									row2_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row2_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[3].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row2_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row2_col2 += " <div class=\"row\">";
									row2_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row2_col2 += "<div class=\"_productPrice\">가격 ₩" + response[3].product_price + " </div>"
									row2_col2 += "<div class=\"_productCalorie\"> " + response[3].nutrition_code + " Kcal</div>"
									row2_col2 += "</div>"
									row2_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row2_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row2_col2 += "추가</button>";
				                    
									row2_col2 += "</div>"; //col-6 2번째
									row2_col2 += "</div>"; //row
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-deck
									row2_col2 += "</div>"; //col
									$("#row2").append(row2_col2);	
								} else if(index === 4){
									start += "<div class=\"row\" id=\"row3\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[4].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[4].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[4].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 5){
									let row3_col2 = '';
									row3_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row3_col2 += "<div class=\"card-deck\">";
									row3_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row3_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[5].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row3_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row3_col2 += " <div class=\"row\">";
									row3_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row3_col2 += "<div class=\"_productPrice\">가격 ₩" + response[5].product_price + " </div>"
									row3_col2 += "<div class=\"_productCalorie\"> " + response[5].nutrition_code + " Kcal</div>"
									row3_col2 += "</div>"
									row3_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row3_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row3_col2 += "추가</button>";
				                    
									row3_col2 += "</div>"; //col-6 2번째
									row3_col2 += "</div>"; //row
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-deck
									row3_col2 += "</div>"; //col
									$("#row3").append(row3_col2);	
								} 
								
								
								
							} //단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	});
	
	
	
	//사이드 클릭했을때
	$('#SideButton').click(function(){
		
		//menulist empty
		$('#_menuList').empty()
		
		var product_category = $(this).attr('value')
	
		$.ajax({
			type : "post",
			url : "OrderPageBurger.ua",
			data : {
				/* product_category : decodeURIComponent(product_category) */
				product_category : product_category
			},
			success : function(response) {
					$.each(response, function (index, item) {
						console.log("ss : " + response[0].product_image)
							if(response[index].product_kind === '단품'){
								let start = $("#_menuList");
								start = "";
								if(index === 0){
								 	start += "<div class=\"row\" id=\"row1\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[0].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[0].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[0].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								} else if(index === 1){
									let row1_col2 = '';
									row1_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row1_col2 += "<div class=\"card-deck\">";
									row1_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row1_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[1].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row1_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row1_col2 += " <div class=\"row\">";
									row1_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row1_col2 += "<div class=\"_productPrice\">가격 ₩" + response[1].product_price + " </div>"
									row1_col2 += "<div class=\"_productCalorie\"> " + response[1].nutrition_code + " Kcal</div>"
									row1_col2 += "</div>"
									row1_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row1_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row1_col2 += "추가</button>";
				                    
									row1_col2 += "</div>"; //col-6 2번째
									row1_col2 += "</div>"; //row
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-deck
									row1_col2 += "</div>"; //col
									$("#row1").append(row1_col2);	
								} else if(index === 2){
									start += "<div class=\"row\" id=\"row2\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[2].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[2].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[2].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 3){
									let row2_col2 = '';
									row2_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row2_col2 += "<div class=\"card-deck\">";
									row2_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row2_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[3].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row2_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row2_col2 += " <div class=\"row\">";
									row2_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row2_col2 += "<div class=\"_productPrice\">가격 ₩" + response[3].product_price + " </div>"
									row2_col2 += "<div class=\"_productCalorie\"> " + response[3].nutrition_code + " Kcal</div>"
									row2_col2 += "</div>"
									row2_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row2_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row2_col2 += "추가</button>";
				                    
									row2_col2 += "</div>"; //col-6 2번째
									row2_col2 += "</div>"; //row
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-deck
									row2_col2 += "</div>"; //col
									$("#row2").append(row2_col2);	
								} else if(index === 4){
									start += "<div class=\"row\" id=\"row3\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[4].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[4].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[4].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 5){
									let row3_col2 = '';
									row3_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row3_col2 += "<div class=\"card-deck\">";
									row3_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row3_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[5].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row3_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row3_col2 += " <div class=\"row\">";
									row3_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row3_col2 += "<div class=\"_productPrice\">가격 ₩" + response[5].product_price + " </div>"
									row3_col2 += "<div class=\"_productCalorie\"> " + response[5].nutrition_code + " Kcal</div>"
									row3_col2 += "</div>"
									row3_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row3_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row3_col2 += "추가</button>";
				                    
									row3_col2 += "</div>"; //col-6 2번째
									row3_col2 += "</div>"; //row
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-deck
									row3_col2 += "</div>"; //col
									$("#row3").append(row3_col2);	
								} 
								
								
								
							} //단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	});
	
	
	//디저트 클릭했을때
	$('#DesertButton').click(function(){
		
		//menulist empty
		$('#_menuList').empty()
		
		var product_category = $(this).attr('value')
	
		$.ajax({
			type : "post",
			url : "OrderPageBurger.ua",
			data : {
				/* product_category : decodeURIComponent(product_category) */
				product_category : product_category
			},
			success : function(response) {
					$.each(response, function (index, item) {
						console.log("ss : " + response[0].product_image)
							if(response[index].product_kind === '단품'){
								let start = $("#_menuList");
								start = "";
								if(index === 0){
								 	start += "<div class=\"row\" id=\"row1\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[0].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[0].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[0].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								} else if(index === 1){
									let row1_col2 = '';
									row1_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row1_col2 += "<div class=\"card-deck\">";
									row1_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row1_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[1].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row1_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row1_col2 += " <div class=\"row\">";
									row1_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row1_col2 += "<div class=\"_productPrice\">가격 ₩" + response[1].product_price + " </div>"
									row1_col2 += "<div class=\"_productCalorie\"> " + response[1].nutrition_code + " Kcal</div>"
									row1_col2 += "</div>"
									row1_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row1_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row1_col2 += "추가</button>";
				                    
									row1_col2 += "</div>"; //col-6 2번째
									row1_col2 += "</div>"; //row
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-deck
									row1_col2 += "</div>"; //col
									$("#row1").append(row1_col2);	
								} else if(index === 2){
									start += "<div class=\"row\" id=\"row2\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[2].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[2].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[2].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 3){
									let row2_col2 = '';
									row2_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row2_col2 += "<div class=\"card-deck\">";
									row2_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row2_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[3].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row2_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row2_col2 += " <div class=\"row\">";
									row2_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row2_col2 += "<div class=\"_productPrice\">가격 ₩" + response[3].product_price + " </div>"
									row2_col2 += "<div class=\"_productCalorie\"> " + response[3].nutrition_code + " Kcal</div>"
									row2_col2 += "</div>"
									row2_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row2_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row2_col2 += "추가</button>";
				                    
									row2_col2 += "</div>"; //col-6 2번째
									row2_col2 += "</div>"; //row
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-deck
									row2_col2 += "</div>"; //col
									$("#row2").append(row2_col2);	
								} else if(index === 4){
									start += "<div class=\"row\" id=\"row3\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[4].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[4].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[4].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 5){
									let row3_col2 = '';
									row3_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row3_col2 += "<div class=\"card-deck\">";
									row3_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row3_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[5].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row3_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row3_col2 += " <div class=\"row\">";
									row3_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row3_col2 += "<div class=\"_productPrice\">가격 ₩" + response[5].product_price + " </div>"
									row3_col2 += "<div class=\"_productCalorie\"> " + response[5].nutrition_code + " Kcal</div>"
									row3_col2 += "</div>"
									row3_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row3_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row3_col2 += "추가</button>";
				                    
									row3_col2 += "</div>"; //col-6 2번째
									row3_col2 += "</div>"; //row
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-deck
									row3_col2 += "</div>"; //col
									$("#row3").append(row3_col2);	
								} 
								
								
								
							} //단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	});
	
	
	
	//맥카페 클릭했을때
	$('#MacCafeButton').click(function(){
		
		//menulist empty
		$('#_menuList').empty()
		
		var product_category = $(this).attr('value')
	
		$.ajax({
			type : "post",
			url : "OrderPageBurger.ua",
			data : {
				/* product_category : decodeURIComponent(product_category) */
				product_category : product_category
			},
			success : function(response) {
					$.each(response, function (index, item) {
						console.log("ss : " + response[0].product_image)
							if(response[index].product_kind === '단품'){
								let start = $("#_menuList");
								start = "";
								if(index === 0){
								 	start += "<div class=\"row\" id=\"row1\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[0].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[0].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[0].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								} else if(index === 1){
									let row1_col2 = '';
									row1_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row1_col2 += "<div class=\"card-deck\">";
									row1_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row1_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[1].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row1_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row1_col2 += " <div class=\"row\">";
									row1_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row1_col2 += "<div class=\"_productPrice\">가격 ₩" + response[1].product_price + " </div>"
									row1_col2 += "<div class=\"_productCalorie\"> " + response[1].nutrition_code + " Kcal</div>"
									row1_col2 += "</div>"
									row1_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row1_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row1_col2 += "추가</button>";
				                    
									row1_col2 += "</div>"; //col-6 2번째
									row1_col2 += "</div>"; //row
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-deck
									row1_col2 += "</div>"; //col
									$("#row1").append(row1_col2);	
								} else if(index === 2){
									start += "<div class=\"row\" id=\"row2\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[2].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[2].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[2].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 3){
									let row2_col2 = '';
									row2_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row2_col2 += "<div class=\"card-deck\">";
									row2_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row2_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[3].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row2_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row2_col2 += " <div class=\"row\">";
									row2_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row2_col2 += "<div class=\"_productPrice\">가격 ₩" + response[3].product_price + " </div>"
									row2_col2 += "<div class=\"_productCalorie\"> " + response[3].nutrition_code + " Kcal</div>"
									row2_col2 += "</div>"
									row2_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row2_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row2_col2 += "추가</button>";
				                    
									row2_col2 += "</div>"; //col-6 2번째
									row2_col2 += "</div>"; //row
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-deck
									row2_col2 += "</div>"; //col
									$("#row2").append(row2_col2);	
								} else if(index === 4){
									start += "<div class=\"row\" id=\"row3\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[4].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[4].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[4].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 5){
									let row3_col2 = '';
									row3_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row3_col2 += "<div class=\"card-deck\">";
									row3_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row3_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[5].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row3_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row3_col2 += " <div class=\"row\">";
									row3_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row3_col2 += "<div class=\"_productPrice\">가격 ₩" + response[5].product_price + " </div>"
									row3_col2 += "<div class=\"_productCalorie\"> " + response[5].nutrition_code + " Kcal</div>"
									row3_col2 += "</div>"
									row3_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row3_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row3_col2 += "추가</button>";
				                    
									row3_col2 += "</div>"; //col-6 2번째
									row3_col2 += "</div>"; //row
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-deck
									row3_col2 += "</div>"; //col
									$("#row3").append(row3_col2);	
								} 
								
								
								
							} //단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	});
	
	
	//음료 클릭했을때
	$('#BeverageButton').click(function(){
		
		
		
		
		
		//menulist empty
		$('#_menuList').empty()
		
		var product_category = $(this).attr('value')
	
		$.ajax({
			type : "post",
			url : "OrderPageBurger.ua",
			data : {
				/* product_category : decodeURIComponent(product_category) */
				product_category : product_category
			},
			success : function(response) {
					$.each(response, function (index, item) {
						console.log("ss : " + response[0].product_image)
							if(response[index].product_kind === '단품'){
								let start = $("#_menuList");
								start = "";
								if(index === 0){
								 	start += "<div class=\"row\" id=\"row1\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[0].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[0].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[0].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								} else if(index === 1){
									let row1_col2 = '';
									row1_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row1_col2 += "<div class=\"card-deck\">";
									row1_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row1_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[1].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row1_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row1_col2 += " <div class=\"row\">";
									row1_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row1_col2 += "<div class=\"_productPrice\">가격 ₩" + response[1].product_price + " </div>"
									row1_col2 += "<div class=\"_productCalorie\"> " + response[1].nutrition_code + " Kcal</div>"
									row1_col2 += "</div>"
									row1_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row1_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row1_col2 += "추가</button>";
				                    
									row1_col2 += "</div>"; //col-6 2번째
									row1_col2 += "</div>"; //row
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-body
									row1_col2 += "</div>"; //card-deck
									row1_col2 += "</div>"; //col
									$("#row1").append(row1_col2);	
								} else if(index === 2){
									start += "<div class=\"row\" id=\"row2\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[2].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[2].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[2].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 3){
									let row2_col2 = '';
									row2_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row2_col2 += "<div class=\"card-deck\">";
									row2_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row2_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[3].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row2_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row2_col2 += " <div class=\"row\">";
									row2_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row2_col2 += "<div class=\"_productPrice\">가격 ₩" + response[3].product_price + " </div>"
									row2_col2 += "<div class=\"_productCalorie\"> " + response[3].nutrition_code + " Kcal</div>"
									row2_col2 += "</div>"
									row2_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row2_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row2_col2 += "추가</button>";
				                    
									row2_col2 += "</div>"; //col-6 2번째
									row2_col2 += "</div>"; //row
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-body
									row2_col2 += "</div>"; //card-deck
									row2_col2 += "</div>"; //col
									$("#row2").append(row2_col2);	
								} else if(index === 4){
									start += "<div class=\"row\" id=\"row3\" >"; 
								 	start += "<div class=\"col\" style=\"height: 350px;\">";
								 	start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[4].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[4].product_price + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[4].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; //col-6 2번째
			                        start += "</div>"; //row
			                       	start += "</div>"; //card-body
								 	start += "</div>"; //card-body
								 	start += "</div>"; //card-deck
									start += "</div>"; //col
									start += "</div>"; //row
									$("#_menuList").append(start);	
								}  else if(index === 5){
									let row3_col2 = '';
									row3_col2 += "<div class=\"col\" style=\"height: 350px;\">";
									row3_col2 += "<div class=\"card-deck\">";
									row3_col2 += "<div class=\"card-body\" style=\"width: 380px\">";
									row3_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[5].product_image + " \" style=\"background-color: #f6f6f6;\">"
									row3_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
									row3_col2 += " <div class=\"row\">";
									row3_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
									row3_col2 += "<div class=\"_productPrice\">가격 ₩" + response[5].product_price + " </div>"
									row3_col2 += "<div class=\"_productCalorie\"> " + response[5].nutrition_code + " Kcal</div>"
									row3_col2 += "</div>"
									row3_col2 += "<div class=\"col-6\" style=\"border: aliceblue;\">"
									row3_col2 += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
									row3_col2 += "추가</button>";
				                    
									row3_col2 += "</div>"; //col-6 2번째
									row3_col2 += "</div>"; //row
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-body
									row3_col2 += "</div>"; //card-deck
									row3_col2 += "</div>"; //col
									$("#row3").append(row3_col2);	
								} 
								
								
								
							} //단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	});
	
	
});
    </script>

<script>
      var mybutton = document.getElementById("myBtn");
    
      // When the user scrolls down 20px from the top of the document, show the button
      window.onscroll = function () { scrollFunction() };
    
      function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
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
    
      
      //모달 창 띄웠을때 숫자 +- 버튼
      $('.btn-number').click(function (e) {
        e.preventDefault();
    
        fieldName = $(this).attr('data-field');
        type = $(this).attr('data-type');
        var input = $("input[name='" + fieldName + "']");
        var currentVal = parseInt(input.val());
        if (!isNaN(currentVal)) {
          if (type == 'minus') {
    
            if (currentVal > input.attr('min')) {
              input.val(currentVal - 1).change();
            }
            if (parseInt(input.val()) == input.attr('min')) {
              $(this).attr('disabled', true);
            }
    
          } else if (type == 'plus') {
    
            if (currentVal < input.attr('max')) {
              input.val(currentVal + 1).change();
            }
            if (parseInt(input.val()) == input.attr('max')) {
              $(this).attr('disabled', true);
            }
    
          }
        } else {
          input.val(0);
        }
      });
      
      
      $('.input-number').focusin(function () {
        $(this).data('oldValue', $(this).val());
      });
      
      
      $('.input-number').change(function () {
    
        minValue = parseInt($(this).attr('min'));
        maxValue = parseInt($(this).attr('max'));
        valueCurrent = parseInt($(this).val());
    
        name = $(this).attr('name');
        if (valueCurrent >= minValue) {
          $(".btn-number[data-type='minus'][data-field='" + name + "']").removeAttr('disabled')
        } else {
          alert('Sorry, the minimum value was reached');
          $(this).val($(this).data('oldValue'));
        }
        if (valueCurrent <= maxValue) {
          $(".btn-number[data-type='plus'][data-field='" + name + "']").removeAttr('disabled')
        } else {
          alert('Sorry, the maximum value was reached');
          $(this).val($(this).data('oldValue'));
        }
    
    
      });
      
      
      $(".input-number").keydown(function (e) {
        // Allow: backspace, delete, tab, escape, enter and .
        if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
          // Allow: Ctrl+A
          (e.keyCode == 65 && e.ctrlKey === true) ||
          // Allow: home, end, left, right
          (e.keyCode >= 35 && e.keyCode <= 39)) {
          // let it happen, don't do anything
          return;
        }
        // Ensure that it is a number and stop the keypress
        if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
          e.preventDefault();
        }
      });
      
      
    </script>




</html>