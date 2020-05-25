<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>McDonalds Admin</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

 	<jsp:include page="./common/head.jsp"></jsp:include>

    <!-- dataTable start -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admincss/assets/dataTable/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admincss/assets/dataTable/css/responsive.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admincss/assets/dataTable/css/main.css">
    <!-- dataTable end  -->

</head>

<body>
	<c:set var="oList" value="${requestScope.oList}" />

    <!-- Left Panel -->

    <jsp:include page="./common/LeftMenu.jsp"></jsp:include>

    <!-- Left Panel -->

    <!-- Right Panel -->

    <div id="right-panel" class="right-panel">

        <!-- Header-->
       <jsp:include page="./common/TopMenu.jsp"></jsp:include>
        <!-- Header-->

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>주문관리</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li class="active">주문관리</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <!-- dataTable -->
        <div class="content mt-3">
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row ">
                        <div class="col-12">
                            <div class="wrap">
                                <table id="myTable" class="table text-center" style="width:100%;">
                                    <thead>
                                        <tr class="text-center">
                                            <th class="text-center" style="width: 50px;">주문번호</th>
                                            <th class="text-center" style="width: 50px;">아이디</th>
                                            <th style="width: 30px;">지점명</th>
                                            <th style="width: 30px;">결제방법</th>
                                            <th style="width: 30px;">결제금액</th>
                                            <th style="width: 30px;">결제일자</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <c:forEach var="list" items="${oList}"> 
                                            <tr onmouseover="this.style.backgroundColor='#cecece'"
                                                onmouseout="this.style.backgroundColor='white'">
                                                <td align="center">
                                                    <a
                                                    href="OrderDetailPage.o?order_code=${list.order_code}">${list.order_code}</a>
                                                </td>
                                                <td align="center">${list.o_id}</td>
                                                <td align="center">${list.s_name}</td>
                                                <td align="center">${list.payment_method}</td>
                                                <td align="center">${list.payment_price}</td>
                                                <td align="center">${list.payment_date}</td>
                                            </tr>
                                         </c:forEach>
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



        </div> <!-- .content -->
    </div><!-- /#right-panel -->


   <jsp:include page="./common/script.jsp"></jsp:include>

    <!-- dataTaBle start -->
    <script src='${pageContext.request.contextPath}/admincss/assets/dataTable/js/jquery-3.3.1.min.js'></script>
    <script src="${pageContext.request.contextPath}/admincss/assets/dataTable/js/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath}/admincss/assets/dataTable/js/dataTables.responsive.min.js"></script>
    <script src="${pageContext.request.contextPath}/admincss/assets/dataTable/js/dataTables.buttons.min.js"></script>
    <script src="${pageContext.request.contextPath}/admincss/assets/dataTable/js/buttons.html5.min.js"></script>
    <script src="${pageContext.request.contextPath}/admincss/assets/dataTable/js/order.js"></script>
    <!-- dataTaBle end -->

    <script>
        $(function () {

        });

    </script>

</body>

</html>