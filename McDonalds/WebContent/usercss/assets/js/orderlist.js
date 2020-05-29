
$(document).ready(function() {	
	
	$("input[name=filter]").change(function() {
		var st = $(":input:radio[name=filter]:checked").val();
		console.log("필터 : " + st);
	});
	
	
var temp = '버거'
	// 주문 페이지 처음왔을때 버거&세트만
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
							if(index % 2 === 0) {
								start += "<div class=\"row row" + index + " \">";
							}
							start += "<div class=\"col\" style=\"height: 350px;\">";
							start += "<div class=\"card-deck\">";
							 	start += "<div class=\"card-body\" style=\"width: 380px\">";
							 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[index].product_image + " \" style=\"background-color: #f6f6f6;\">"
							 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
							 	start += " <strong class=\"ko _productName\"> " + response[index].product_name + " </strong>"
			                    start += " <div class=\"row\">";
			                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
		                        start += "<div class=\"_productPrice\">가격 ₩" + response[index].product_price.toLocaleString() + " </div>"
		                        start += "<div class=\"_productCalorie\"> " + response[index].nutrition_code + " Kcal</div>"
			                    start += "</div>"
			                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
		                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
		                      	start += "추가</button>";
			                    
		                        start += "</div>"; // col-6 2번째
		                        start += "</div>"; // row
		                       	start += "</div>"; // card-body
							 	start += "</div>"; // card-body
							 	start += "</div>"; // card-deck
								start += "</div>"; // col
								if(index % 2 === 0) {
							 		start += "</div>"; //row
							 	}
								if(index % 2 === 1){
									$(".row" + (index-1)).append(start);
								}else{
									$("#_menuList").append(start);	
								}
							
							
						} // 단품 if문 마지막
				})
			
		},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		}); 
	

	
	// 버거 & 세트 클릭했을때
	$('#burgerButton').click(function(){
		
		// menulist empty
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
								if(index % 2 === 0) {
									start += "<div class=\"row row" + index + " \">";
								}
								start += "<div class=\"col\" style=\"height: 350px;\">";
								start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[index].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
								 	start += " <strong class=\"ko _productName\"> " + response[index].product_name + " </strong>"
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[index].product_price.toLocaleString() + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[index].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; // col-6 2번째
			                        start += "</div>"; // row
			                       	start += "</div>"; // card-body
								 	start += "</div>"; // card-body
								 	start += "</div>"; // card-deck
									start += "</div>"; // col
									if(index % 2 === 0) {
								 		start += "</div>"; //row
								 	}
									if(index % 2 === 1){
										$(".row" + (index-1)).append(start);
									}else{
										$("#_menuList").append(start);	
									}
								
							} // 단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	});
	
	
	// 맥모닝 클릭했을때
	$('#MacMorningButton').click(function(){
		
		// menulist empty
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
								if(index % 2 === 0) {
									start += "<div class=\"row row" + index + " \">";
								}
								start += "<div class=\"col\" style=\"height: 350px;\">";
								start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[index].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
								 	start += " <strong class=\"ko _productName\"> " + response[index].product_name + " </strong>"
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[index].product_price.toLocaleString() + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[index].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; // col-6 2번째
			                        start += "</div>"; // row
			                       	start += "</div>"; // card-body
								 	start += "</div>"; // card-body
								 	start += "</div>"; // card-deck
									start += "</div>"; // col
									if(index % 2 === 0) {
								 		start += "</div>"; //row
								 	}
									if(index % 2 === 1){
										$(".row" + (index-1)).append(start);
									}else{
										$("#_menuList").append(start);	
									}
								
								
								
							} // 단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	});
	
	
	
	// 사이드 클릭했을때
	$('#SideButton').click(function(){
		
		// menulist empty
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
								if(index % 2 === 0) {
									start += "<div class=\"row row" + index + " \">";
								}
								start += "<div class=\"col\" style=\"height: 350px;\">";
								start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[index].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
								 	start += " <strong class=\"ko _productName\"> " + response[index].product_name + " </strong>"
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[index].product_price.toLocaleString() + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[index].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; // col-6 2번째
			                        start += "</div>"; // row
			                       	start += "</div>"; // card-body
								 	start += "</div>"; // card-body
								 	start += "</div>"; // card-deck
									start += "</div>"; // col
									if(index % 2 === 0) {
								 		start += "</div>"; //row
								 	}
									if(index % 2 === 1){
										$(".row" + (index-1)).append(start);
									}else{
										$("#_menuList").append(start);	
									}
								
							} // 단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	});
	
	
	// 디저트 클릭했을때
	$('#DesertButton').click(function(){
		
		// menulist empty
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
								if(index % 2 === 0) {
									start += "<div class=\"row row" + index + " \">";
								}
								start += "<div class=\"col\" style=\"height: 350px;\">";
								start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[index].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
								 	start += " <strong class=\"ko _productName\"> " + response[index].product_name + " </strong>"
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[index].product_price.toLocaleString() + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[index].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; // col-6 2번째
			                        start += "</div>"; // row
			                       	start += "</div>"; // card-body
								 	start += "</div>"; // card-body
								 	start += "</div>"; // card-deck
									start += "</div>"; // col
									if(index % 2 === 0) {
								 		start += "</div>"; //row
								 	}
									if(index % 2 === 1){
										$(".row" + (index-1)).append(start);
									}else{
										$("#_menuList").append(start);	
									}

								
							} // 단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	});
	
	
	
	// 맥카페 클릭했을때
	$('#MacCafeButton').click(function(){
		
		// menulist empty
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
								if(index % 2 === 0) {
									start += "<div class=\"row row" + index + " \">";
								}
									start += "<div class=\"col\" style=\"height: 350px;\">";
									start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[index].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
								 	start += " <strong class=\"ko _productName\"> " + response[index].product_name + " </strong>"
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[index].product_price.toLocaleString() + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[index].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; // col-6 2번째
			                        start += "</div>"; // row
			                       	start += "</div>"; // card-body
								 	start += "</div>"; // card-body
								 	start += "</div>"; // card-deck
									start += "</div>"; // col
									if(index % 2 === 0) {
								 		start += "</div>"; //row
								 	}
									if(index % 2 === 1){
										$(".row" + (index-1)).append(start);
									}else{
										$("#_menuList").append(start);	
									}
								
							} // 단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	});
	
	
	// 음료 클릭했을때
	$('#BeverageButton').click(function(){

		// menulist empty
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
								if(index % 2 === 0) {
									start += "<div class=\"row row" + index + " \">";
								}
									start += "<div class=\"col\" style=\"height: 350px;\">";
									start += "<div class=\"card-deck\">";
								 	start += "<div class=\"card-body\" style=\"width: 380px\">";
								 	start += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[index].product_image + " \" style=\"background-color: #f6f6f6;\">"
								 	start += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
								 	start += " <strong class=\"ko _productName\"> " + response[index].product_name + " </strong>"
				                    start += " <div class=\"row\">";
				                    start += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
			                        start += "<div class=\"_productPrice\">가격 ₩" + response[index].product_price.toLocaleString() + " </div>"
			                        start += "<div class=\"_productCalorie\"> " + response[index].nutrition_code + " Kcal</div>"
				                    start += "</div>"
				                    start += "<div class=\"col-6\" style=\"border: aliceblue;\">"
			                        start += "<button type=\"button\" class=\"btn btn-warning btn-lg\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"width: 100%; height: 50px; border: 2px solid red;\">"
			                      	start += "추가</button>";
				                    
			                        start += "</div>"; // col-6 2번째
			                        start += "</div>"; // row
			                       	start += "</div>"; // card-body
								 	start += "</div>"; // card-body
								 	start += "</div>"; // card-deck
									start += "</div>"; // col
									if(index % 2 === 0) {
								 		start += "</div>"; //row
								 	}
									if(index % 2 === 1){
										$(".row" + (index-1)).append(start);
									}else{
										$("#_menuList").append(start);	
									}
		
							} // 단품 if문 마지막
					})
				
			},
			
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
		});

	});
	
	
});