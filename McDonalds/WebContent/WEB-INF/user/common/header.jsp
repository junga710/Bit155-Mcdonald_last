<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav
	class="navbar navbar-expand-sm d-flex flex-row pr-3 pt-0 pb-0 sticky-top"
	style="padding-left: 5%; justify-content: center">


	<a href="${pageContext.request.contextPath}/Mcdonald_main.jsp" class="logo" title="메인으로 이동"> <img
		src="${pageContext.request.contextPath}/usercss/vendors/images/common/logo.png"
		alt="맥도날드" style="padding: 20px;">

		<div class="navbar mr-5" style="padding-left: 120px;">
			<div class="dropdown p-2" style="margin-left: 100px;">
				<button class="dropbtn">Menu</button>
				<!-- 현재페이지 메뉴에 current 클래스 추가 -->
				<div class="dropdown-content">
                  <a href="MenuBurger.um">버거</a>
                  <a href="MenuMacMorning.um">맥모닝</a>
                  <a href="MenuSideDesert.um">사이드 &amp; 디저트</a>
                  <a href="MenuMacBeverage.um">맥카페 &amp; 음료</a>
               </div>
			</div>
			<div class="dropdown">
				<button class="dropbtn ml-0">Comm</button>
				<div class="dropdown-content">
					<a href="BoardNotice.b">공지사항</a> 
				<!-- 	<a href="BoardReview.b">리뷰게시판</a> -->
					<a href="BoardFree.b">자유게시판</a>
				</div>
			</div>
			<div class="dropdown p-2">
				<button class="dropbtn">MyPage</button>
				<div class="dropdown-content">
					<c:choose>
						<c:when test="${id == 'admin'}">
							
							<a href="#">관리자 페이지</a>
						</c:when>
						<c:otherwise>
							<a href="Mcdonald_joinform_edit.ump">계정 설정</a>
							<a href="OrderHistory.uo">주문 조회</a>
							<!-- <a href="#">문의하기</a> -->
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div> <c:choose>
			<c:when test="${id != null}">
				<!-- 이거 불러와진다 -->


				<!-- <div class="p-2"><a href="Mcdonald_joinform.jsp" id="topbtnright" class="btn btn-danger" role="button" style="float: right;">JOIN</a></div> -->
				<div class="p-2">
					<a href="logout.ump" id="topbtnright" class="btn btn-warning"
						role="button" style="float: right;">LOGOUT</a>	</div>
			
				 <div class="p-2"><a href="SelectShop.ua" id="topbtnright" class="btn btn-info" role="button" style="float: right;">ORDER</a></div> 
				<!-- <div class="p-2"><a href="#" id="topbtnright" class="btn btn-info" role="button" style="float: right;">WEATHER API</a></div> -->
				<div class="p-2">${id}님반갑습니다^^*</div>

			</c:when>
			<c:otherwise>
				<div class="p-2">
					<a href="Mcdonald_joinform.ump" id="topbtnright"
						class="btn btn-danger" role="button" style="float: right;">JOIN</a>
				</div>
				<div class="p-2">
					<a href="Mcdonald_login.ump" id="topbtnright"
						class="btn btn-warning" role="button" style="float: right;">LOGIN</a>
				</div>

			</c:otherwise>
		</c:choose>
		<div class="row">
			<div class="col-md-6"
				style="padding-right: 0px; text-align-last: right;">
				<img class="imo" width="73%"> <input type="hidden"
					class="form-control col-8" id="myInput" placeholder="seoul"
					value="seoul">
			</div>
			<div class="col-md-6">
				<div class="d-flex">
					<b class="imo2"> </b> <b>℃</b>
				</div>
				<div class="d-flex">
					<b class="loc"> </b> <b class="nal"></b>
				</div>
			</div>
		</div>
</nav>
