<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<aside id="left-panel" class="left-panel">
	<nav class="navbar navbar-expand-sm navbar-default">

		<div class="navbar-header">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#main-menu" aria-controls="main-menu"
				aria-expanded="false" aria-label="Toggle navigation">
				<i class="fa fa-bars"></i>
			</button>
			<a class="navbar-brand" href="./"><img width="50px;" height="50px;" src="${pageContext.request.contextPath}/admincss/images/mclogo.png"
				alt="Logo"></a> <a class="navbar-brand hidden" href="#"><img
				src="${pageContext.request.contextPath}/admincss/images/logo2.png" alt="Logo"></a>
		</div>

		<div id="main-menu" class="main-menu collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="Main.m"> <i
						class="menu-icon fa fa-home"></i>메인
				</a></li>
				<!-- <h3 class="menu-title">UI elements</h3>/.menu-title -->
				<li class="menu-item"><a href="MemberList.m"><i
						class="menu-icon fa fa-user"></i>회원관리</a></li>
				<li class="menu-item"><a href="Product.p"><i
						class="menu-icon fa fa-amazon"></i>상품관리</a></li>
				<li class="menu-item"><a href="Order.o"><i
						class="menu-icon fa fa-shopping-cart"></i>주문관리</a></li>
				<!-- <li class="menu-item"><a href="Schedule.s"><i
						class="menu-icon fa fa-calendar"></i>일정관리</a></li> -->
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</nav>
</aside>
<!-- /#left-panel -->