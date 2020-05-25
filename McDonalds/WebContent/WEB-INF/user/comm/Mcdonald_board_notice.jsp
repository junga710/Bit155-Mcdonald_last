<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page import="java.util.List"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항</title>
      <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
<jsp:include page="../common/head.jsp"></jsp:include>

<!-- dataTable start -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/usercss/assets/dataTable/css/jquery.dataTables.min.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/usercss/assets/dataTable/css/responsive.dataTables.min.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/usercss/assets/dataTable/css/main.css">
<!-- dataTable end  -->
</head>


<body>
    <div class="board_notice">
        <h1 class="titDep1" style="padding-top: 3%; color:white;"><strong>공지사항</strong></h1>
        <ul style="padding-left: 10%;
        margin-top: 5%;">
            <li id="topli"><a href="../Mcdonald_main.jsp" style="color: white;">Home</a></li>
            <li id="topli"><a href="../menu/Mcdonald_menu_hamburger.jsp" style="color: white;">menu</a></li>
        </ul>
    </div>
    <!-- //visualArea -->
    <!-- dataTable -->
    <div class="content mt-3">
        <div class="main-panel">
            <div class="content-wrapper">
                <div class="row ">
                    <div class="col-12">
                        <div class="wrap">
                            <table id="myTable" class="table text-center" style="width:100%;">
                        
                                    <tr class="text-center">
                                        <th class="text-center" style="width: 10%;">번호</th>
                                        <th class="text-center" style="width: 50%;">제목</th>
                                        <th class="text-center" style="width: 30%;">날짜</th>
                                    </tr>
                                <tbody>
                                 <c:set var="list" value="${requestScope.blist}"/>
                                   <c:forEach var="boardNotice" items="${blist}">         
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">${boardNotice.n_code}</td>
                                        <td align="center">
                                           <a href="BoardNoticeDetail.b?n_code=${boardNotice.n_code}">${boardNotice.n_title}</a></td>
                                       <td align="center">${boardNotice.n_write_date}</td>
                                    </tr>
                                    </c:forEach>
                                  <!--   <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">15</td>
                                        <td align="center">
                                            <a href="#">카페인 커피 미판매 매장
                                                안내</a>
                                        </td>
                                        <td align="center">2020.01.20</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">14</td>
                                        <td align="center">
                                            <a href="#">칠러 미판매 매장
                                                안내</a>
                                        </td>
                                        <td align="center">2020.01.17</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">13</td>
                                        <td align="center">
                                            <a href="#">맥도날드 모바일 쿠폰 사용 제외 매장
                                                안내</a>
                                        </td>
                                        <td align="center">2019.10.07</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">12</td>
                                        <td align="center">
                                            <a href="#">맥도날드, 올해 역대 최대 규모 6백명 정규직
                                                채용한다</a>
                                        </td>
                                        <td align="center">2020.01.13</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">11</td>
                                        <td align="center">
                                            <a href="#">맥도날드, 디카페인 커피 출시로 국내 커피
                                                시장 공략 가속화</a>
                                        </td>
                                        <td align="center">2020.01.02</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">10</td>
                                        <td align="center">
                                            <a href="#">12월엔 맥도날드에서 매일 매일 크리스마스
                                                선물 받으세요!</a>
                                        </td>
                                        <td align="center">2019.11.28</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">9</td>
                                        <td align="center">
                                            <a href="#">맥도날드, 신입 레스토랑 관리직 매니저 120여명 공개 채용</a>
                                        </td>
                                        <td align="center">2019.11.27</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">8</td>
                                        <td align="center">
                                            <a href="#">맥도날드, 전 레스토랑에 음식점 위생등급제 인증 추진</a>
                                        </td>
                                        <td align="center">2019.11.25</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">7</td>
                                        <td align="center">
                                            <a href="#">맥도날드, 오늘 주방 공개하고 고객 의견 듣는다</a>
                                        </td>
                                        <td align="center">2019.11.19</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">6</td>
                                        <td align="center">
                                            <a href="#">맥도날드, 2019 올해의 일자리 대상 수상</a>
                                        </td>
                                        <td align="center">2019.11.15</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">5</td>
                                        <td align="center">
                                            <a href="#">맥도날드, 최고령 직원 임갑지 크루 위해 특별한 은퇴식 열어</a>
                                        </td>
                                        <td align="center">2019.11.13</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">4</td>
                                        <td align="center">
                                            <a href="#">용혈성요독증후군 어린이의 치료와 건강회복을 위해 상호 합의하였음을 알려드립니다</a>
                                        </td>
                                        <td align="center">2019.11.12</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">3</td>
                                        <td align="center">
                                            <a href="#">맥도날드, 원재료 관리 및 조리 과정 가감 없이 공개</a>
                                        </td>
                                        <td align="center">2019.11.11</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                        onmouseout="this.style.backgroundColor='white'">
                                        <td align="center">2</td>
                                        <td align="center">
                                            <a href="#">한국 맥도날드는 고객님을 위해 더 노력하겠습니다</a>
                                        </td>
                                        <td align="center">2019.11.01</td>
                                    </tr>
                                    <tr onmouseover="this.style.backgroundColor='#cecece'"
                                    onmouseout="this.style.backgroundColor='white'">
                                    <td align="center">1</td>
                                    <td align="center">
                                        <a href="#">한국 맥도날드 직원의 목소리</a>
                                    </td>
                                    <td align="center">2019.11.01</td>
                                </tr>
                          -->
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- footer -->
<jsp:include page="../common/footer.jsp"></jsp:include>
<jsp:include page="../common/script.jsp"></jsp:include>

      <!-- dataTaBle start -->
	<script src="${pageContext.request.contextPath}/usercss/assets/dataTable/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/usercss/assets/dataTable/js/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath}/usercss/assets/dataTable/js/dataTables.responsive.min.js"></script>
    <script src="${pageContext.request.contextPath}/usercss/assets/dataTable/js/dataTables.buttons.min.js"></script>
    <script src="${pageContext.request.contextPath}/usercss/assets/dataTable/js/buttons.html5.min.js"></script>
    <script src="${pageContext.request.contextPath}/usercss/assets/dataTable/js/notice.js"></script>
<!-- dataTaBle end -->
  
</body>


</html>