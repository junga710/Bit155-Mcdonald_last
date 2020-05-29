<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>매장선택</title>
<style>
</style>
</head>

<body>

	<!-- header include-->
	<jsp:include page="../common/header.jsp"></jsp:include>
	<section id="container">



		<div class="selectstore">
			<h1 class="titDep1"">
				<strong>매장선택</strong>
			</h1>
		</div>



		<div class="container">
			<div class="row">
				<h2 style="margin: 20px 20px"><b>주문을 원하는 매장을 선택하세요</b></h2>
				<div id="map" style="width: 2000px; height: 500px;"></div>

			</div>
		</div>


		<div class="container">
			<div class="row">
				<table class="table table-hover"
					style="margin: 50px 50px; text-align: center">
					<thead class="thead-dark">
						<tr>
							<th>매장명</th>
							<th>주소</th>
							<th>전화번호</th>
							<th>영업시간</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<b><td id="s_name"></td>
							<td id="s_address"></td>
							<td id="s_phone"></td>
							<td id="s_bhour"></td>
							<td>
							<!-- <a class="btn btn-primary" id="kwc" href="Order1.uo"
								href="Order1.uo" role="button" onclick="javascript:btn()">다음</a> -->
								<button class="btn btn-warning" id="kwc"role="button" onclick="javascript:btn()"
								style="border-radius: 70px;"><b>다음</b></button>
								
							</td>
						</tr>
					</tbody>
				</table>

			</div>
		</div>

	</section>


	<!--footer include -->
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>


	<script>
      //Get the button
      var mybutton = document.getElementById("myBtn");

      // When the user scrolls down 20px from the top of the document, show the button
      window.onscroll = function() {
         scrollFunction()
      };

      function scrollFunction() {
         if (document.body.scrollTop > 20
               || document.documentElement.scrollTop > 20) {
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

	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e300e4bb56b1946cdad5103ee9d8b3e6"></script>
	<script>
	
	
               var container = document.getElementById('map');
               var options = {
                  center : new kakao.maps.LatLng(37.5123701991336,
                        127.049761082666),
                  level : 5
               };

               var map = new kakao.maps.Map(container, options);
   
         
               ///////////////////////////////////////////////////////////////////////////////////////////////////////////좌표 추가 코드
               // 마커를 표시할 위치입니다 
               /* var position =  new kakao.maps.LatLng(37.5035470555751, 127.047033596011);  //맥도날드 선릉점 //http://kko.to/oiLPnLoD0
               var position2 =  new kakao.maps.LatLng(37.510942210119, 127.047318512892);  // 강남삼성 DT점  //http://kko.to/g23WuLoD0
               var position3 =  new kakao.maps.LatLng(37.5162728163012, 127.04132524415); // 강남구청점     //http://kko.to/4BfluLBDM
               var position4 =  new kakao.maps.LatLng(37.5118239121138, 127.059159043842); //코엑스점       //http://kko.to/-75XqRBDo
               var position5 =  new kakao.maps.LatLng(37.5083178432764, 127.058778402547);   //삼성역점     //http://kko.to/MafvuLBDp */
               // 마커를 표시할 위치와 title 객체 배열입니다 
               var positions = [
                     {
                        title : '선릉',
                        latlng : new kakao.maps.LatLng(
                              37.5035470555751, 127.047033596011)
                     },
                     {
                        title : '강남삼성DT',
                        latlng : new kakao.maps.LatLng(37.510942210119,
                              127.047318512892)
                     },
                     {
                        title : '강남구청',
                        latlng : new kakao.maps.LatLng(
                              37.5162728163012, 127.04132524415)
                     },
                     {
                        title : '코엑스',
                        latlng : new kakao.maps.LatLng(
                              37.5118239121138, 127.059159043842)
                     },
                     {
                        title : '삼성역',
                        latlng : new kakao.maps.LatLng(
                              37.5083178432764, 127.058778402547)
                     } ];

               

               // 마커 이미지의 이미지 주소입니다
               var imageSrc = "https://pngimg.com/uploads/mcdonalds/mcdonalds_PNG7.png";
               
               //for문 시작
               for (var i = 0; i < positions.length; i++) {

                  // 마커 이미지의 이미지 크기 입니다
                  var imageSize = new kakao.maps.Size(35, 35);

                  // 마커 이미지를 생성합니다    
                  var markerImage = new kakao.maps.MarkerImage(imageSrc,
                        imageSize);

                  // 마커를 생성합니다
                  var marker = new kakao.maps.Marker({
                     map : map, // 마커를 표시할 지도
                     position : positions[i].latlng, // 마커를 표시할 위치
                     title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
                     image : markerImage
                  
                  });
                  
                  // 마커에 표시할 인포윈도우를 생성합니다 
                   var infowindow = new kakao.maps.InfoWindow({
                       content: positions[i].title // 인포윈도우에 표시할 내용
                   });

                   // 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
                   // 이벤트 리스너로는 클로저를 만들어 등록합니다 
                   // for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
                   kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(map, marker, infowindow));
                   kakao.maps.event.addListener(marker, 'mouseout', makeOutListener(infowindow));
                   
                   (function(marker, infowindow) {
                       // 마커에 mouseover 이벤트를 등록하고 마우스 오버 시 인포윈도우를 표시합니다 
                       kakao.maps.event.addListener(marker, 'click', function() {
                            console.log(marker.mc);
                           
                           $.ajax({
                           url : "SelectShopok.ua", //지점정보 가져오는 url
                           type : 'POST',
                            data:{
                              s_name : marker.mc
                           } ,
                           cache : false,
                           dataType : 'json',
                           success : function(data) {
                              $('#s_name').text(data[0].s_name);
                              $('#s_address').text(data[0].s_address);
                              $('#s_phone').text(data[0].s_phone_number);
                              $('#s_bhour').text(data[0].s_business_hour);
                           },
                           error : function(request, status, error) {
                              console.log("code:" + request.status + "\n" + "error:"
                                    + error);
                           }
                        })
                            
                           //console.log(positions[i].title.val());
                       });

                       
                   })(marker, infowindow);
               }
               
               // 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
               function makeOverListener(map, marker, infowindow) {
                   return function() {
                       infowindow.open(map, marker);
                   };
               }

               // 인포윈도우를 닫는 클로저를 만드는 함수입니다 
               function makeOutListener(infowindow) {
                   return function() {
                       infowindow.close();
                   };
               }
 
       
		$('#kwc').click(function(e) {
			if ($('#s_name').text() === '') {
				alert('매장을 선택하시오');
				e.preventDefault();
			}else{
				console.log("여긴타니 : " + $('#s_name').text());
				location.href = "Order1.uo?s_name=" + $('#s_name').text() + " ";
			}
		});
		
		

		/* 	function btn() {
				if ($('#s_name').text() === '') {
					alert('막힘');
					$('#kwc').click(function(e) {
						alert('막힘');
						e.preventDefault();
					});
				}
			} */
	</script>
</body>

 <script
		src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script> 


	<script>
	

		//Get the button
		var mybutton = document.getElementById("myBtn");

		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {
			scrollFunction()
		};

		function scrollFunction() {
			if (document.body.scrollTop > 20
					|| document.documentElement.scrollTop > 20) {
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




</html>