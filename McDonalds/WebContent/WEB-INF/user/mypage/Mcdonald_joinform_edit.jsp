<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>회원가입</title>

</head>

<body>

	<!-- header include-->
	<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>
	<section id="container">
	
<div class="joinform">
        <h1 class="titDep1" style="padding-top: 5%; color:white"><strong>회원정보수정</strong></h1>
        <ul   style="padding-left: 10%; margin-top: 1%;">
            <li id="topli"><a href="../Mcdonald_main.html" style="color: white;">Home</a></li>
            <li id="topli"><a href="#"style="color: white;" >Menu</a></li>
           
        </ul>
    </div>




		<div class="container" style="width:500px">

			<article class="card-body" style="width:500px">
				 <h3 class="text-center ">회원정보수정</h3>
				<form action="Mcdonald_joinform_editOk.ump" method="post" name="joinform" id="joinform">
					<div class="form-group">
					<label>아이디</label>
					<div class="row">
						<div class="col-9">
						<input class="form-control"
							type="text" name="id" id="id" value="${memberDTO.m_id}" readonly>
						</div>
						<!-- <div class="col-3" >
						<button type="submit" class="btn btn-warning p-1" >중복확인</button>
						</div> -->
						</div>
					</div>

					<div class="form-group">
						 <label>비밀번호</label> <input class="form-control" value="${memberDTO.password}"
							type="password" name="pwd" id="pwd">
					</div>
	
					<div class="form-group">
						 <label>비밀번호 확인</label> <input class="form-control" value="${memberDTO.password}"
							type="password">
					</div>
				
					<div class="form-group">
						<label>이름</label> <input class="form-control" value="${memberDTO.name}"
							 type="text" name="mname" id="mname">
					</div>
					
					<div class="form-group">
						<label>이메일</label> <input class="form-control" value="${memberDTO.email}"
							 type="text" name="email" id="email">
					</div>
					
					
					<!--  우편번호 -->
					
					<input type="text" id="sample6_postcode" name="sample6_postcode" value="${memberDTO.post_code}" class="form-control">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" class="form-control"><br>
					<input type="text" id="sample6_address" name="sample6_address" value="${memberDTO.address}" class="form-control"><br>
					<input type="text" id="sample6_detailAddress" name="sample6_detailAddress" value="${memberDTO.address_detail}" class="form-control">
					<!-- <input type="text" id="sample6_extraAddress"  name="sample6_extraAddress" class="form-control" > -->
					

					<!--  우편번호 끝 -->
					
					<div class="form-group">
						<label>핸드폰 번호(- 제외)</label> <input class="form-control"
							value="${memberDTO.phone}" type="text" name="pnum" id="pnum">
					</div>
					<div class="form-group">
						
							<input type="submit" class="btn btn-warning btn-block" value="정보수정하기">
					</div>
					<!-- form-group// -->
				</form>
					<!-- <div class="form-group " style="text-align: right" >
							<label> <a class="text-warning">이미 아이디가 있으신가요? <a href="Mcdonald_login.ump" class="text-primary">로그인</a></a>
							</label>
					</div> -->
			</article>





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
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
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
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    //document.getElementById("sample6_extraAddress").value = extraAddr;
                    //document.getElementById("sample6_extraAddress").value = '';
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

</body>

</html>

