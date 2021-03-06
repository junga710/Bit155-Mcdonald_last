<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>


<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->


<title>버거</title>
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
  .ui-state-active{
    background-color: #D1402D;
  }
</style>


<body>


<!-- header include-->
	<jsp:include page="../common/header.jsp"></jsp:include>

  <div class="hamburgermenu">
    <h1 class="titDep1">주문 내역</h1>
    <p>주문하신 내역을 확인해주세요</p>
  </div>

  <p ></p>

  <div class="container show-grid">
    <div class="row">
      <div class="col-md-12">나의 주문 내역</div>
    </div>
    <div class="row" style="min-height: 600px; ">

      <div class="col-md-12">




        <div id="accordion" >

   
<c:forEach var="e" items="${listod}">
              
      
 
		<h3 style="background-color:#ffc32d;">결제 일자 : ${e.payment_date}</h3>
          <div class="row" style="padding:0px;">
            <div class="col-md-2" style="background-color: inherit">
              주문 번호 : <br>
              <p style="font-size: 17px; color:#406E96"> ${e.order_code}</p> 
            </div>
            <div class="col-md-1" >
              지점명 : <br>
              ${e.s_name}
            </div>
          
             
            <div class="col-md-5" id="herehere">
            
            <c:forEach var="i" items="${listdetail}" > 
         		<c:choose>
             
              <c:when test = "${e.order_code == i.order_code}">
              <div class="row">
                <div class="col-md-2">
                  	${i.order_amount} 
                  <br>  
                </div>
            <div class="col-md-3" style="padding:0px;">
                 <img src="${pageContext.request.contextPath}/usercss/vendors/images/DB_images/${i.product_image}" alt="" style="width:100%">
            </div>
			<div class="col-md-7" >
				 ${i.product_name}  
				<div>
				
				 </div>
            </div>
              </div>
               </c:when>
              
           		</c:choose>
            </c:forEach> 
              
              
            </div>
            
            
       
           
           
            
            <div class="col-md-4" style="background-color: inherit">
              배달 주소 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${e.address} ${e.address_detail}
               <p></p>
              <div class="row">
                <div class="col-md-6" style="background-color: inherit">
                총 주문합계 : 
                </div>
                <div class="col-md-6" style="background-color: inherit">
                  <p style="color:green">₩ ${e.payment_price}</p>
                </div>
              </div>
              <hr>
            </div>
          </div>
          
          <%-- </c:forEach> --%>
    </c:forEach>  
        </div>
      </div>
    </div>
  </div>


  <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>


<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>

<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>



<script
	src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>

  	<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  
  <script
		src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>
  
  <script type="text/javascript">
   $( function() {
    $( "#accordion" ).accordion({
      heightStyle: "content"
    });
  } );
  </script>


 <script
		src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script> 

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
</script>
</body>
</html>