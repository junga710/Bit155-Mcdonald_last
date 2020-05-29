<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@2.4.0/fonts/remixicon.css"
	rel="stylesheet">
<!-- 아이콘 -->

<!--  popover -->
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.3.1/flatly/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath}/usercss/vendors/vendors/popover/popModal.css"
	rel="stylesheet">

<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>

<!--css-->
<!--css-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/usercss/assets/css/common.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">


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
					<button id="SideButton" type="button" class="btn btn-warning"
						value="사이드">사이드</button>
					<button id="DesertButton" type="button" class="btn btn-warning"
						value="디저트">디저트</button>
					<button id="MacCafeButton" type="button" class="btn btn-warning"
						value="맥카페" style="border-bottom: 1px solid darkblue;">맥카페</button>
					<button id="BeverageButton" type="button" class="btn btn-warning"
						value="음료" style="border-bottom: 1px solid darkblue;">음료</button>
					<button type="button" class="btn btn-warning"
						style="border-top: 1px solid darkblue;">
						<br>
					</button>

					<br>


					<div style="width: 100%;">
						<p style="padding-left: 0">
							<button id="hint" class="btn btn-primary hintModal">
								하루 권장 섭취량
								<div class="hintModal_container">
									<table class="table">
										<thead>
											<tr>
												<th scope="col">#</th>
												<th scope="col">나이</th>
												<th scope="col">남자</th>
												<th scope="col">여자</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row">1</th>
												<td>12-14</td>
												<td>2,500</td>
												<td>2,000</td>
											</tr>
											<tr>
												<th scope="row">2</th>
												<td>15-18</td>
												<td>2,700</td>
												<td>2,000</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>19-29</td>
												<td>2,600</td>
												<td>2,100</td>
											</tr>
											<tr>
												<th scope="row">4</th>
												<td>30-49</td>
												<td>2,400</td>
												<td>1,900</td>
											</tr>
											<tr>
												<th scope="row">5</th>
												<td>50-64</td>
												<td>2,200</td>
												<td>1,800</td>
											</tr>
										</tbody>
									</table>
								</div>
							</button>



							<!-- 	<div class="custom-control custom-radio">
							<input type="radio" class="custom-control-input"
								id="defaultGroupExample1" name="filter" value="total" checked>
							<label class="custom-control-label" for="defaultGroupExample1">전체보기</label>
						</div> -->

							<!-- <hr> -->
							<!--  -->
							<!-- <div class="custom-control custom-radio">
							<input type="radio" class="custom-control-input"
								id="defaultGroupExample2" name="filter"> 
								<label
								class="custom-control-label" for="defaultGroupExample2">낮은
								가격순</label>
						</div>

						<div class="custom-control custom-radio">
							<input type="radio" class="custom-control-input"
								id="defaultGroupExample3" name="filter"> 
								<label
								class="custom-control-label" for="defaultGroupExample3">높은
								가격순</label>
						</div>

						<hr>
						<div class="custom-control custom-radio">
							<input type="radio" class="custom-control-input"
								id="defaultGroupExample4" name="filter" value="low"> <label
								class="custom-control-label" for="defaultGroupExample4"
								>낮은
								칼로리순</label>
						</div>

						<div class="custom-control custom-radio">
							<input type="radio" class="custom-control-input"
								id="defaultGroupExample5" name="filter" value="high"> 
								<label
								class="custom-control-label" for="defaultGroupExample5">높은
								칼로리순</label>
						</div>  -->
					</div>

				</div>
			</div>

			<!-- 동적추가완료 -->
			<div id="_menuList" class="col-md-7"></div>


			<div class="col-md-3" style="background-color: whitesmoke;">
				<div class="row" style="place-content: center;">내 주문 정보</div>
				<hr>
				<div class="row">
					&nbsp; &nbsp;선택 매장 : 강남&nbsp; <span class="select_store">${requestScope.s_name}</span>
					점
					<!-- 여기에 주소를 받아야댐 -->
				</div>
				<hr>
				<div class="row">
					&nbsp; &nbsp;배달 주소 : ${requestScope.address}
					${requestScope.address_detail}
					<!-- 여기에 주소를 받아야댐 -->
				</div>
				<hr>

				<div class="row">
					<div class="col-md-6" style="padding-left: 0px;">
						&nbsp; &nbsp;총 주문합계 :
						<!-- 여기에 총 가격 받아야댐 -->
					</div>
					<div class="col-md-6">
						<p style="color: green" id="_sum">₩ 0</p>
					</div>
				</div>
				<p></p>
				<div class="row" style="justify-content: center;">
					<!-- <a id="go" href="Order2.uo" class="btn btn-danger"
						style="width: 85%; background-color: #D1402D; height: 40px;">결제
						진행하기</a> -->
					<button id="go" class="btn btn-danger"
						style="width: 85%; background-color: #D1402D; height: 40px;">결제
						진행하기</button>

					<!-- 버튼으로 넘어가야대는거 넣어야댐 -->
				</div>
				<hr>

				<div id="_order_detail">
					<p>주문 세부사항</p>

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
						<img class="card-img-top" id="_thumbnail" src="" alt=""
							style="background-color: #ffffffab;">
						<div class="card-body" id="card-inner"
							style="background-color: #f6f6f6;">
							<strong class="product_code_one"></strong> <strong
								class="product_code_set"></strong> <strong
								class="product_category"></strong>
							<!-- 	style="display: none"  -->
							<strong class="ko">허니 크림치즈 상하이 버거</strong>
							<div class="row">
								<div class="col-6"
									style="padding: 5px; border: aliceblue; align-self: center;">
									<div class="input-group">
										<span class="input-group-btn">
											<button type="button" class="btn btn-danger btn-number"
												data-type="minus" data-field="quant[1]"
												style="height: 45px;">
												<p style="margin: 0">-</p>
											</button>
										</span> <input type="text" name="quant[1]" id="_one_input"
											class="form-control input-number" value="0" min="0" max="100"
											style="height: auto"> <span class="input-group-btn">
											<button type="button" class="btn btn-success btn-number"
												data-type="plus" data-field="quant[1]" style="height: 45px;">
												<p style="margin: 0">+</p>
											</button>
										</span>
									</div>

								</div>
								<div class="col-6"
									style="border: aliceblue; align-self: center;">
									<div class="row">
										<div class="col-6">
											<img class="card-img-top" id="_one_image" src="" alt="">
										</div>
										<div class="col-6" style="place-self: center; margin: 0">

											<p style="margin: 0">단품</p>
											<p style="padding: 0" id="_onlyone_price">(₩ 5,500)</p>
											<!-- 여기에 가격 동적으로 추가 -->
										</div>
									</div>
								</div>
							</div>
							<div class="row" id="set">
								<div class="col-6"
									style="padding: 5px; border: aliceblue; align-self: center;">


									<div class="input-group">
										<span class="input-group-btn">
											<button type="button" class="btn btn-danger btn-number"
												data-type="minus" data-field="quant[2]"
												style="height: 45px;">
												<p style="margin: 0">-</p>
											</button>
										</span> <input type="text" name="quant[2]" id="_set_input"
											class="form-control input-number" value="0" min="0" max="100"
											style="height: auto"> <span class="input-group-btn">
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
											<img class="card-img-top" id="_set_image" src="" alt="">
										</div>
										<div class="col-6" style="place-self: center;">
											<p style="margin: 0">세트</p>
											<p style="padding: 0" id="_set_price">(₩ 8,200)</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer" style="justify-content: left;">

					<button type="button" class="btn btn-warning"
						style="background-color: rgba(255, 217, 0, 0.87); border: 2px solid rgb(255, 0, 0); height: 40px;"
						id="_modal_plus">추가하기</button>
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
					<button type="button" class="btn btn-default" data-dismiss="modal"
						id="_close_btn">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 여기 까지가 모달 끝 -->

	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>


	<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>



	<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>

	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<!-- JS -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<%-- 
	<script
		src="${pageContext.request.contextPath}/usercss/assets/js/orderlist.js"></script> --%>

	<script>

$(document).ready(function() {

	var count = 0; //장바구니 담은 개수 count 값 
	loadTotalBasket();
	
	//새로고침 시 기존 데이터 유지
	function loadTotalBasket(){
		var totalSum = 0;
	$.ajax({
		type: 'GET',
		url: 'basketLoadFull.ua',
		success: function(response) {
			
			console.log("기존 데이터야 떠라 얍얍얍ㅇ뱝ㅇ")
			console.log("나는 마멉사 뿜무무 : " + response);
			
			$.each(response, function(index, item){
					var detailImg = $('#_thumbnail').attr('src');
					
					var detailName = $('#myModal .ko').text();
			var viewDetail = "";
			
			viewDetail += "<div class=\"row code" + response[index].product_code + " \">";
			viewDetail += "<div class=\"col-4\">";
			viewDetail += "<img src=vendors/images/DB_images/"+response[index].product_image+" style=\"width:100%\">";
			viewDetail += "</div>";
			viewDetail += "<div class=\"col-8\" style=\"padding-top:inherit\">";
			viewDetail += "<span style=\"font-size:x-small\">"+ response[index].product_name +"</span>";
			if(response[index].product_kind === '단품'){
				viewDetail += " <button class=\"" + response[index].product_code + "\" id='_delete_btn' style=\"float: right;background-color: crimson;color: floralwhite;\"><i class='ri-delete-bin-line'></i></button>";
				viewDetail += "<div>단품 : "+ response[index].amount +"개 </div>";
				viewDetail += "<span style=\"font-size:small;float:right;color:forestgreen;\">  ₩ " + response[index].total_product_price +"</span>";
			}else{
				viewDetail += " <button class=\"" + response[index].product_code + "\" id='_delete_btn' style=\"float: right;background-color: crimson;color: floralwhite;\"><i class='ri-delete-bin-line'></i></button>";
				viewDetail += "<div>세트 : "+ response[index].amount +"개 </div>";
				viewDetail += "<span style=\"font-size:small;float:right;color:forestgreen;\">  ₩ " + response[index].total_product_price +"</span>";
			}
		/* 	viewDetail += "<div>단품 : "+ oneAmount +"개 </div>";
			viewDetail += "<div>세트 : "+ setAmount +"개 </div>"; */
			
			viewDetail += "</div>";
			viewDetail += "</div>";
		
	$('#_order_detail').append(viewDetail);
	totalSum += response[index].total_product_price;		
	
	count++;
			});
			
			$('#_sum').text('₩ ' + totalSum.toLocaleString());
	},  error:function(request,status,error){
        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    }
	
	
	});
	}
	
	
	$("#_menuList").click(function (evt) {
		
		evt.preventDefault();
		if (evt.target.dataset.toggle === 'modal') {
			var productName = $.trim($(evt.target).parent().parent().prev().text());
			
			$.ajax({
				type: 'GET',
				url: '/McDonalds/SelectBurgerModal.ua',
				data: {
					product_name: decodeURIComponent(productName)
				},
				success: function(response) {
					
			
				
					console.log("사이드떠라제발 " + response[0].product_category)
					console.log("크기 " + response.length)
					
					$('#_one_input').val('0');
					$('#_set_input').val('0');
					var one = response[0];
					var set = response[1];
					console.log(response);
					
					var setPrice = response[1]?.product_price.toLocaleString() || 0;
					$('#_onlyone_price').text('(₩ ' + response[0].product_price.toLocaleString() + ')' );
					$('#_set_price').text('(₩ ' + setPrice + ')' );
					
					var oneImage = "vendors/images/DB_images/" + response[0].product_image;
					var setImage = "vendors/images/DB_images/" + response[1]?.product_image;
					
					$('#_thumbnail').attr('src', oneImage);
					$('#_one_image').attr('src', oneImage);
					$('#_set_image').attr('src', setImage);
					
					$('#myModal .ko').text(productName);
					
					if(response.length === 1){
						$('#myModal .product_code_one').text(response[0].product_code);
						$('#myModal .product_category').text(response[0].product_category); 
						$('#set').hide(); //단품만 있는 메뉴 선택시 숨기기
						
					}else{
						$('#myModal .product_code_one').text(response[0].product_code);
						$('#myModal .product_code_set').text(response[1].product_code);
						$('#myModal .product_category').text(response[0].product_category); 
						$('#set').show(); //단품만 있는 메뉴 선택시 보이기
					}
					/* $('#myModal .product_category_set').text(response[0].product_category); 
					$('#myModal .product_category_noset').text(response[1].product_category);  */
				}
			});
		}
	});
	
 	//modal에서 추가하기 버튼
	$('#_modal_plus').click(function(evt) {
		//location.reload(); //페이지 새로고침
		/* count++;
		console.log("count늘어나라 : " + count) */
		
		var sum = parseInt(getOnlyNumber($('#_sum').text()), 10);
		var oneAmount = $('#_one_input').val();
 		var onePrice = getOnlyNumber($('#_onlyone_price').text());
 		
 		let detailSum = 0;
		
		sum += (oneAmount * onePrice);
		
		detailSum +=(oneAmount * onePrice);
		
		if (getOnlyNumber($('#_set_price').text()) != 0) {
			var setAmount = $('#_set_input').val();
			var setPrice = getOnlyNumber($('#_set_price').text());
			
			
			sum += (setAmount * setPrice);
			detailSum += (setAmount * setPrice);
		}
		
		$('#_sum').text('₩ ' + sum.toLocaleString());
		
		$(this).attr('data-dismiss', 'modal');
		 //ajax로 데이터 보내줘서 장바구니 DB에 인서트
		$.ajax({
			type: 'GET',
			url: 'basketAdd.ua',
		 	data: {
				product_code_one : $('.product_code_one').text(), //단일 상품 번호
				product_code_set : $('.product_code_set').text(), //세트 상품 번호
				amount_one: oneAmount,
				amount_set: setAmount,
				product_category : $('.product_category').text(),
			}, 
			success: function(response) {
				
			}
		}).done(function(){
			loadBakset();
		});
		 
		 if($('#_set_input').val() > 0 && $('#_one_input').val() > 0){
			 count += 2;
			console.log("count 2개 늘어나라 : " + count)
		 } else if($('#_set_input').val() > 0 || $('#_one_input').val() > 0) {
			 count += 1;
			console.log("count 1개 늘어나라 : " + count)
		 } 
	
	
	}) 
	
	 //장바구니에 인서트한거 불러오기
	 function loadBakset(){

	$.ajax({
		type: 'GET',
		url: 'basketLoad.ua',
		data: {
			oneAmount : $('#_one_input').val(),
			setAmount : $('#_set_input').val(),
		},
		success: function(response) {
			console.log("여긴옴...");
			$.each(response, function(index, item){
				
				console.log("성공은 하니??");
				
				var oneAmount = $('#_one_input').val();

				var setAmount = $('#_set_input').val();
			
				console.log("oneAmount : " + oneAmount);
				console.log("setAmount : " + setAmount);
				
				if(oneAmount > 0 || setAmount > 0){
					console.log("오나...");
					
					var detailImg = $('#_thumbnail').attr('src');
					
					var detailName = $('#myModal .ko').text();
			var viewDetail = "";
			
			viewDetail += "<div class=\"row code" + response[index].product_code + " \" >";
			viewDetail += "<div class=\"col-4\">";
			viewDetail += "<img src=vendors/images/DB_images/"+response[index].product_image+" style=\"width:100%\">";
			viewDetail += "</div>";
			viewDetail += "<div class=\"col-8\" style=\"padding-top:inherit\">";
			viewDetail += "<span style=\"font-size:x-small\">"+ response[index].product_name +"</span>";
			if(response[index].product_kind === '단품'){
				viewDetail += " <button class=\"" + response[index].product_code + "\" id='_delete_btn' style=\"float: right;background-color: crimson;color: floralwhite;\"><i class='ri-delete-bin-line'></i></button>";
				viewDetail += "<div>단품 : "+ response[index].amount +"개 </div>";
				viewDetail += "<span style=\"font-size:small;float:right;color:forestgreen;\">  ₩ " + response[index].total_product_price +"</span>";
			}else{
				viewDetail += " <button class=\"" + response[index].product_code + "\" id='_delete_btn' style=\"float: right;background-color: crimson;color: floralwhite;\"><i class='ri-delete-bin-line'></i></button>";
				viewDetail += "<div>세트 : "+ response[index].amount +"개 </div>";
				viewDetail += "<span style=\"font-size:small;float:right;color:forestgreen;\">  ₩ " + response[index].total_product_price +"</span>";
			}
		/* 	viewDetail += "<div>단품 : "+ oneAmount +"개 </div>";
			viewDetail += "<div>세트 : "+ setAmount +"개 </div>"; */
			
			viewDetail += "</div>";
			viewDetail += "</div>";
		
	$('#_order_detail').append(viewDetail);
				}
			

			
			});
	},  error:function(request,status,error){
        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    }
	
	
	});
 	}

	
	function getOnlyNumber(str) {
		return str.replace(/[^0-9]/g,'');
	}
 	
 	
	/* href="Order2.uo"  */
    $('#go').click(function (e) {
    	if(count === 0){
    		alert('장바구니에 1개이상 담아주세요.')
    	}else{
    	e.preventDefault();
    	location.href="Order2.uo"
    	console.log("ss");
    	}
    });
	
	
	///▼▼▼▼ 휴지통 버튼 클릭시 삭제하는거 만들기
	$(document).on("click", "#_delete_btn", function(){
		console.log("대박 : " + $(this).attr('class'));

		//ajajx
		$.ajax({
			type: 'GET',
			url: 'basketDelete.ua',
		 	 data: {
				product_code : $(this).attr('class')
			},  
			success: function(response) {
				
			},
			 error:function(request,status,error){
			        console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			    }
		})
		
		var detailRow = $(this).parent().parent();
		console.log("아나!! " + detailRow)
		detailRow.remove();
		
		var detailPrice = parseInt(getOnlyNumber($(this).next().next().text()), 10);
		
		console.log("상품가격??? " + detailPrice);
		
		var totalPrice = parseInt(($('#_sum').text().replace(/[^0-9]/g,'')), 10);
		console.log("총 가격: " + totalPrice);
		
		$('#_sum').text('₩ ' +(totalPrice-detailPrice).toLocaleString());
		
		count--;
		console.log("count 줄어들어라 : " + count);
    });


 	
});
    </script>



	<script>
/* var checkUnload = true;
$(window).on("beforeunload", function(){
    if(checkUnload) return "이 페이지를 벗어나면 작성된 내용은 저장되지 않습니다.";
}); */

//새로고침 막기
/* $(document).keydown(function (e) {
    
    if (e.which === 116) {
        if (typeof event == "object") {
            event.keyCode = 0;
        }
        alert('새로고침 막기')
        return false;
    } else if (e.which === 82 && e.ctrlKey) {
    	alert('새로고침 막기')
        return false;
    }
});  */

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



	<script
		src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>

	<script
		src="${pageContext.request.contextPath}/usercss/assets/js/orderlist.js"></script>

	<script src="https://code.jquery.com/jquery-1.12.4.min.js"
		integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ"
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/usercss/vendors/vendors/popover/popModal.js"></script>


<!--페이지 한번만 새로고침 -->
	<script>
    if (self.name != 'reload') {
        self.name = 'reload';
        self.location.reload(true);
    }
    else self.name = ''; 
    </script>

</body>


</html>