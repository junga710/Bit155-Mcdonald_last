<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!--css-->
  <link rel="stylesheet" href="../assets/css/common.css">
<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">




  <title>주문 내역</title>
</head>

<style>

</style>

<body>
  <div class="hamburgermenu">
    <h1 class="titDep1-2"><strong>주문 완료</strong></h1>
  </div>

  <p></p>


  <div class="container show-grid">
    <div class="row" style="min-height: 600px;">

      <div class="col-md-12">
        <div class="row">
          <div class="col-md-12">
            <p style="padding-left: 2px; font-size: 30px;"> <br> 주문이 완료되었습니다. <br>맥도날드를 이용해 주셔서 감사합니다.</p>
            <br><br>
            주문 관련 문의 사항은 맥도날드 콜센터로 연락하시기 바랍니다. 1600-5252
            <br><br>
            <a href="Mcdonald_orderhistory.html" class="btn btn-danger" style="background-color: #D1402D; height: 40px;"><b>주문 조회</b></a>
            &nbsp; &nbsp;
            <a href="Mcdonald_order1.html" class="btn btn-danger" style="background-color: #D1402D; height: 40px;"><b>새로 주문하기</b></a>
            
          </div>
         

        </div>

      </div>
    </div>
  </div>

  <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>


  <!-- JS -->
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script> -->

  
  <!-- JS -->
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->

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