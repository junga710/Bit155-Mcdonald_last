<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">

   <title>MC도날드</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>


</head>
<body>
<nav class="navbar navbar-expand-sm d-flex flex-row pr-3 pt-0 pb-0 sticky-top" style="padding-left: 5%; justify-content: center">
    
	<a href="#" class="logo" title="메인으로 이동"> <img
			src="usercss/vendors/images/common/logo.png" alt="맥도날드"
			style="padding: 20px;">
	
         <div class="navbar mr-5" style= "padding-left: 120px;">
            <div class="dropdown p-2" style="margin-left: 100px;">
               <button class="dropbtn">Menu
               </button>
               <!-- 현재페이지 메뉴에 current 클래스 추가 -->
               <div class="dropdown-content">
                  <a href="MenuBurger.um">버거</a>
                  <a href="MenuMacMorning.um">맥모닝</a>
                  <a href="MenuSideDesert.um">사이드 &amp; 디저트</a>
                  <a href="MenuMacBeverage.um">맥카페 &amp; 음료</a>
               </div>
            </div>
            <div class="dropdown">
               <button class="dropbtn ml-0">Comm
               </button>
               <div class="dropdown-content">
                  <a href="BoardNotice.b">공지사항</a>
                <!--   <a href="BoardReview.b">리뷰게시판</a> -->
                  <a href="BoardFree.b">자유게시판</a>
               </div>
            </div>
            <div class="dropdown p-2">
               <button class="dropbtn">MyPage
               </button>
               <div class="dropdown-content">
                      <c:choose>
               <c:when test="${id == 'admin'}">
                  
                  <a href="#">관리자 페이지</a>
                   </c:when>
                   <c:otherwise>
                   <a href="Mcdonald_joinform_edit.ump">계정 설정</a>
                  <a href="OrderHistory.uo">주문 조회</a>
                 <!--  <a href="#">문의하기</a> -->
                   </c:otherwise>
               </c:choose>
               </div>
            </div>
         </div>
         <c:choose>
         <c:when test="${id != null}"><!-- 이거 불러와진다 -->

    <a href="Order2.uo?basket_code=1" id="topbtnright" class="btn btn-danger" role="button" style="float: right;">주문확인</a></div>
         <!-- <div class="p-2"><a href="Mcdonald_joinform.jsp" id="topbtnright" class="btn btn-danger" role="button" style="float: right;">JOIN</a></div> -->
         <div class="p-2"><a href="logout.ump" id="topbtnright" class="btn btn-warning" role="button" style="float: right;">LOGOUT</a></div>
         <div class="p-2"><a href="SelectShop.ua" id="topbtnright" class="btn btn-info" role="button" style="float: right;">ORDER</a></div> 
         <div class="p-2">${id}님 반갑습니다 ^^*</div>
         
         </c:when>
         <c:otherwise>
         <div class="p-2"><a href="Mcdonald_joinform.ump" id="topbtnright" class="btn btn-danger" role="button" style="float: right;">JOIN</a></div>
         <div class="p-2"><a href="Mcdonald_login.ump" id="topbtnright" class="btn btn-warning" role="button" style="float: right;">LOGIN</a></div>
        <!--  <div class="p-2"><a href="#" id="topbtnright" class="btn btn-info" role="button" style="float: right;">order</a></div>  -->
         </c:otherwise>
         </c:choose>
         
         <div class="row">
            <div class="col-md-6" style="padding-right: 0px;text-align-last: right;">
               <img class="imo"
               width="73%" >
               <input type="hidden" class="form-control col-8" id="myInput" placeholder="seoul" value="seoul" >
            </div>
            <div class="col-md-6" >
               <div class="d-flex">
               <b class="imo2"> </b> <b>℃</b> 
            </div>
            <div class="d-flex">
               <b class="loc"> </b> →
               <b class="nal"></b>
            </div>
            </div>
         </div>
        

      
   </nav>


   <!-- //header -->
   <section id="container">
      <div id="main-carousel" class="carousel slide" data-ride="carousel">
         <ul class="carousel-indicators">
            <li data-target="#main-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#main-carousel" data-slide-to="1" class="active"></li>
            <li data-target="#main-carousel" data-slide-to="2" class="active"></li>
         </ul>
         <div class="carousel-inner">
            <div class="carousel-item active">
               <img src="https://www.mcdonalds.co.kr/upload/main/banner/1585129372254.png">
               <div class="carousel-caption"></div>
            </div>
            <div class="carousel-item">
               <img src="https://www.mcdonalds.co.kr/upload/main/banner/1587529093913.png">
               <div class="carousel-caption"></div>
            </div>
            <div class="carousel-item">
               <img src="https://www.mcdonalds.co.kr/upload/main/banner/1588122129631.png">
               <div class="carousel-caption"></div>
            </div>
         </div>

         <a class="carousel-control-prev" href="#main-carousel" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
         </a>
         <a class="carousel-control-next" href="#main-carousel" data-slide="next">
            <span class="carousel-control-next-icon"></span>
         </a>

         <div class="progress" id="progress">
            <div class="progress-bar bg-danger progress-bar-striped" style="width:1%" id="myprogress"></div>
         </div>
      </div>
      <!-- //mainEvent -->
      <div class="container">
         <h1 class="titleMain mt-4 mb-5"><strong>McDonald's LIVE</strong></h1>
         <div class="row">
            <div class="col">
               <div class="card-deck">
                  <div class="card-body" style="width:380px">
                     <img class="card-img-top" src="usercss/vendors/images/card/1587529214177.png"
                        alt="매콤함의 부드러운 반전!NEW 허니 크림치즈 상하이 버거!">
                     <div class="card-body" id="card-inner">
                        <h5 class="card-title"><Strong>매콤함의 부드러운 반전!</Strong></h5>
                        <Strong>NEW 허니 크림치즈 상하이 버거!</Strong>
                        <br>
                        <br><br>
                        <a href="#" class="stretched-link"></a>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <div class="card-body text-reft" style="width:380px">
                           <img class="card-img-top" src="usercss/vendors/images/card/1585129454903.png"
                              alt="더 편리해진 맥도날드 앱 사용법">
                           <div class="card-body" id="card-inner">
                              <h5 class="card-title"><strong>올 여름 맥윙과 함께!</strong></h5>
                              <strong>맥윙 재출시</strong>
                              <br>
                              <br><br>
                              <a href="#" class="stretched-link"></a>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <div class="card-body text-reft" style="width:380px">
                           <img class="card-img-top" src="usercss/vendors/images/card/1588122162048.png"
                              alt="과일 땡겨? 쉽게 칠러!자두 칠러, 배 칠러">
                           <div class="card-body" id="card-inner">
                              <h5 class="card-title"><strong>더 편리해진 맥도날드 앱 사용법</strong></h5>
                              <br>
                              <br><br>
                              <a href="#" class="stretched-link"></a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <div class="container">
         <div class="row">
            <div class="col">
               <div class="card-deck">
                  <div class="card-body" style="width:380px">
                     <img class="card-img-top" src="usercss/vendors/images/card/1579235808560.png"
                        alt="2900원 부터 즐기는 맥모닝 콤보를 만나보세요">
                     <div class="card-body" id="card-inner">
                        <h5 class="card-title"><strong class="tit">2900원 부터 즐기는</strong></h5>
                        <strong>맥모닝 콤보를 만나보세요</strong>
                        <br>
                        <br><br>
                        <a href="#" class="stretched-link"></a>
                     </div>
                  </div>
               </div>
            </div>


            <div class="row">
               <div class="col">
                  <div class="card-body text-reft" style="width:380px">
                     <img class="card-img-top" src="usercss/vendors/images/card/1564021259329.png"
                        alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
                     <div class="card-body" id="card-inner">
                        <h5 class="card-title"><strong class="tit">농장에서 레스토랑까지</strong></h5>
                        <strong>좋은 음식을 제공하기 위한 맥도날드의 노력을 확인하세요!</strong>
                        <br>
                        <br>
                        <a href="#" class="stretched-link"></a>
                     </div>
                  </div>
               </div>
            </div>


            <div class="row">
               <div class="col">
                  <div class="card-body text-reft" style="width:380px">
                     <img class="card-img-top" src="usercss/vendors/images/card/1564021259329.png"
                        alt="취향저격 쿠폰부터 쏠쏠한 정보까지! 맥도날드앱 출시!">
                     <div class="card-body" id="card-inner">
                        <h5 class="card-title"><strong class="tit">취향저격 쿠폰부터 쏠쏠한 정보까지!</strong></h5>
                        <strong>지금 맥도날드 앱 가입하고 쿠폰받자</strong>
                        <br>
                        <br>
                        <a href="#" class="stretched-link"></a>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

   </section>


<!--footer ▼▼▼  -->
      <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>

<script type="text/javascript">
   $(function() {
      let publicAPI = "http://api.openweathermap.org/data/2.5/weather?";
      let data = {
         q : $('#myInput').val(),
         units : "metric",
         appid : "128c1b018422127293c9b438200c8ab8"
      };
      $
            .getJSON(
                  publicAPI,
                  data,
                  function(data, textStatus, xhr) {
                     $('#result').empty();
                     // console.log(data.weather);
                     // console.log(data.weather[0].description);
                     // console.log(data.weather[0]);

                     var table = "<table>";
                     table += "<tr><td>지역</td><td>날씨</td><td>상세</td><td>바람</td><td>구름</td><td>온도</td></tr>";

                     // console.log("data.weather[0].des==="+data.weather[0].description);//o
                     // console.log("data.wind.speed==="+data.wind.speed);//0
                     // console.log("data.weather[0].main==="+data.weather[0].main);//o
                     // console.log("data[clouds].all==="+data["clouds"].all); //o
                     console.log(data.weather[0].icon);
                     table += "<tr>";
                     table += "<td>" + data.name + "</td>";
                     table += "<td>" + data.weather[0].main + "</td>";
                     table += "<td>" + data.weather[0].description
                           + "</td>";
                     table += "<td>" + data.wind.speed + "</td>";
                     table += "<td>" + data["clouds"].all + "</td>";
                     table += "<td>" + data.main.temp + "℃" + "</td>";
                     table += "</tr>";
                     table += "</table>";
                     // $('#result').append(table);
                     var imgURL = "http://api.openweathermap.org/img/w/"
                           + data.weather[0].icon + ".png";
                     $('.imo').attr("src", imgURL);
                     $('.imo2').html(data.main.temp);
                     $('.loc').html(data.name);
                     $('.nal').html(data.weather[0].main);
                     $('#result').empty();
                     $('#result').append(table);
                     $('table').addClass('table');

                  });
   });
</script>



   <script>
      var i = 0;
      $(function () {
         if (i == 0) {
            i = 1;
            var elem = document.getElementById("myprogress");
            var width = 1;
            var id = setInterval(frame, 55);
            function frame() {
               if (width >= 100) {
                  clearInterval(id);
                  i = 0;
               } else {
                  width++;
                  elem.style.width = width + "%";
               }
            }
         }
      });
      
      $('#MacCafeButton').click(function(){
          
          //menulist empty
          $('#_menuList').empty()
          
          var product_category = $(this).attr('value')
       
          $.ajax({
             type : "post",
             url : "OrderPageMacCafe.ua",
             data : {
                /* product_category : decodeURIComponent(product_category) */
                product_category : product_category
             },
             success : function(response) {
                   $.each(response, function (index, item) {

               
                            let start = $("#_menuList");
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
                               row1_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[0].product_image + " \" style=\"background-color: #f6f6f6;\">"
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
                               row2_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[0].product_image + " \" style=\"background-color: #f6f6f6;\">"
                               row2_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
                               row2_col2 += " <div class=\"row\">";
                               row2_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
                               row2_col2 += "<div class=\"_productPrice\">가격 ₩" + response[1].product_price + " </div>"
                               row2_col2 += "<div class=\"_productCalorie\"> " + response[1].nutrition_code + " Kcal</div>"
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
                               row3_col2 += "<img class=\"card-img-top _productImage\" src=\"vendors/images/DB_images/" + response[0].product_image + " \" style=\"background-color: #f6f6f6;\">"
                               row3_col2 += "  <div class=\"card-body\" id=\"card-inner\" style=\"background-color: #f6f6f6;\">";
                               row3_col2 += " <div class=\"row\">";
                               row3_col2 += "<div class=\"col-6\" style=\"padding: 5px; border: aliceblue;\">";
                               row3_col2 += "<div class=\"_productPrice\">가격 ₩" + response[1].product_price + " </div>"
                               row3_col2 += "<div class=\"_productCalorie\"> " + response[1].nutrition_code + " Kcal</div>"
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
      
      
      
      
      
      


      //Get the button
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
   </script>




</body>
</html>