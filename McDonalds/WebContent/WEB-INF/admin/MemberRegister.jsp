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

</head>

<body>


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
                        <h1>회원상세</h1>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">
                    <div class="page-title">
                        <ol class="breadcrumb text-right">
                            <li class="active">회원상세</li>
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

                        <div class="col-4">

                        </div>

                        <div class="col-4">
                            <div class="card">
                                <div class="card-header">
                                    <strong>OO</strong> 정보
                                </div>
                                <div class="card-body card-block">
                                    <form action="MemberRegister.m" method="post" class="form-horizontal">
                                        <div class="row form-group">
                                            <div class="col col-md-3 d-flex justify-content-center align-items-center ">
                                                <label for="m_id" class=" form-control-label">아이디</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="m_id" name="m_id" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3 d-flex justify-content-center align-items-center ">
                                                <label for="password" class=" form-control-label">비밀번호</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="password" name="password" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3 d-flex justify-content-center align-items-center ">
                                                <label for="name" class=" form-control-label">이름</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="name" name="name" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3 d-flex justify-content-center align-items-center ">
                                                <label for="email" class=" form-control-label">이메일</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="email" id="email" name="email" class="form-control">
                                            </div>
                                        </div>



                                        <div class="row form-group">
                                            <div class="col col-md-3 d-flex justify-content-center align-items-center ">
                                                <label for="post_code" class=" form-control-label">우편번호</label>
                                            </div>
                                            <div class="col-12 col-md-6">
                                                <input type="text" id="post_code" name="post_code" class="form-control">
                                            </div>
                                            <div class="col-12 col-md-3">
                                                <input type="button" onclick="execDaumPostcode()" value="찾기"
                                                    class="form-control">
                                            </div>
                                        </div>

                                        <div class="row form-group">
                                            <div class="col col-md-3 d-flex justify-content-center align-items-center ">
                                                <label for="address" class=" form-control-label">주소</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="address" name="address" class="form-control">
                                            </div>
                                        </div>

                                        <div class="row form-group">
                                            <div class="col col-md-3 d-flex justify-content-center align-items-center ">
                                                <label for="detailAddress" class=" form-control-label">상세주소</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="address_detail" name="address_detail"
                                                    class="form-control">
                                            </div>
                                        </div>

                                        <input style="display: none;" type="text" id="sample3_extraAddress"
                                            placeholder="참고항목">

                                        <div class="row form-group">
                                            <div class="col col-md-3 d-flex justify-content-center align-items-center ">
                                                <label for="phone" class=" form-control-label">핸드폰</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="phone" name="phone" class="form-control">
                                            </div>
                                        </div>
                                   
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary btn-sm">
                                        <i class="fa fa-dot-circle-o"></i> 등록
                                    </button>
                                </div>
                                 </form>
                            </div>
                        </div>

                        <div class="col-4">

                        </div>


                    </div>
                </div>
            </div>



        </div> <!-- .content -->
    </div><!-- /#right-panel -->


    <jsp:include page="./common/script.jsp"></jsp:include>

    <!-- <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.min.js"></script> -->
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <script>


        $(function () {
           

        });

        //다음 우편번호 
        function execDaumPostcode() {
                new daum.Postcode({
                    oncomplete: function (data) {
                        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                        var addr = ''; // 주소 변수
                        var extraAddr = ''; // 참고항목 변수

                        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                            addr = data.roadAddress;
                        } else { // 사용자가 지번 주소를 선택했을 경우(J)
                            addr = data.jibunAddress;
                        }

                        // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                        if (data.userSelectedType === 'R') {
                            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                                extraAddr += data.bname;
                            }
                            // 건물명이 있고, 공동주택일 경우 추가한다.
                            if (data.buildingName !== '' && data.apartment === 'Y') {
                                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                            }
                            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                            if (extraAddr !== '') {
                                extraAddr = ' (' + extraAddr + ')';
                            }
                            // 조합된 참고항목을 해당 필드에 넣는다.
                            //document.getElementById("extraAddress").value = extraAddr;

                        } else {
                            //document.getElementById("extraAddress").value = '';
                        }

                        // 우편번호와 주소 정보를 해당 필드에 넣는다.
                        document.getElementById('post_code').value = data.zonecode;
                        document.getElementById("address").value = addr;
                        // 커서를 상세주소 필드로 이동한다.
                        document.getElementById("detailAddress").focus();
                    }
                }).open();
            }

    </script>

</body>

</html>