<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>공지사항 상세</title>
    <jsp:include page="../common/head.jsp"></jsp:include>
</head>



<body>
    <div class="board_notice_detail">
        <h1 class="titDep1" style="padding-top: 3%; color:white;"><strong>공지사항</strong></h1>
        <ul style="padding-left: 10%;
        margin-top: 5%;">
            <li id="topli"><a href="../Mcdonald_main.html" style="color: white;">Home</a></li>
            <li id="topli"><a href="../menu/Mcdonald_menu_hamburger.html" style="color: white;">menu</a></li>
        </ul>
    </div>
    <!-- //visualArea -->
     <c:set var="board" value="${requestScope.boardNoticeDTO}" />    
    <div class="container" style="padding-top:2%; padding-right: 2%;">
        <div class="row">
            <div class="col"></div>
            <h5><strong>${board.n_title}</strong></h5>
            <div class="col-7"></div>
            <p class style="color:gray;"><strong>${board.n_write_date}&nbsp;&nbsp;|
                    &nbsp;&nbsp;${board.n_read_num}&nbsp;&nbsp;&nbsp;</strong></p>
        </div>
    </div>
        <hr style=" width: 70%; height:3px; margin-top: 0; background-color: black;">
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    여
    <br>
    기
    <br>
    에 
    <br>
    내
    <br>
    용이 들어갑니다
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>

    <div style="position: relative; left:75%;">
        <button type="submit" class="btn btn-danger mr-3 btn-sm">수정</button>
        <button type="submit" class="btn btn-warning btn-sm">삭제</button>
    </div>
<!--     <hr style= "width: 70%; height:1px;  background-color: black;">
    <button type="button" class="btn" id= "prev" ><strong>이전</strong></button>
    <button type="button" class="btn" id= "btnMC" ></strong>목록보기</strong></button> -->

<jsp:include page="../common/footer.jsp"></jsp:include>
<jsp:include page="../common/script.jsp"></jsp:include>
</body>

</html>