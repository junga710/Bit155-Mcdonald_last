<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>

<title>회원정보수정</title>

</head>

<body>

	<!-- header include-->
	<jsp:include page="../common/header.jsp"></jsp:include>
	<section id="container">

		<div class="joinform">
			<h1 class="titDep1" style="padding-top: 5%; color: white">
				<strong>회원정보수정</strong>
			</h1>
		</div>


		<div class="container" style="width: 500px">

			<article class="card-body" style="width: 500px">
				<h3 class="text-center ">회원정보수정</h3>
				<form action="Mcdonald_joinform_editOk.ump" method="post"
					name="joinform" id="joinform">
					
					
					<div class="form-group">
						<label>아이디</label>
						
								<input class="form-control" type="text" name="id" id="id"
									value="${memberDTO.m_id}" readonly>
						
					</div>

					<div class="form-group">
						<label><strong>비밀번호</strong></label> 
						<input class="form-control" value="${memberDTO.password}" type="password" name="pwd" id="pwd">
						<span class="password hide" ></span>
					</div>
					
					

					<div class="form-group">
						<label><strong>비밀번호 확인</strong></label> 
						<input class="form-control" value="${memberDTO.password}" type="password" name="pwdc" id="pwdc">
						<div id="message" ></div>
					</div>



					<div class="form-group">
						<label><strong>이름</strong></label>
						<input class="form-control" value="${memberDTO.name}" type="text" name="mname" id="mname">
						<span class="name hide" ></span>
					</div>

					<div class="form-group">
						<label><strong>이메일</strong></label> 
						<input class="form-control" value="${memberDTO.email}" type="text" name="email" id="email">
						<span class="email hide" ></span>
					</div>



					<label><strong>주소</strong></label> 
					<input type="text" id="sample6_postcode" name="sample6_postcode"
						value="${memberDTO.post_code}" class="form-control"> <input
						type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"
						class="form-control"><br> <input type="text"
						id="sample6_address" name="sample6_address"
						value="${memberDTO.address}" class="form-control"><br>
					<input type="text" id="sample6_detailAddress"
						name="sample6_detailAddress" value="${memberDTO.address_detail}"
						class="form-control">



					<div class="form-group">
						<label><strong>핸드폰 번호(- 제외)</strong></label> 
						<input class="form-control" value="${memberDTO.phone}" type="text" name="pnum" id="pnum">
						<span class="phone hide" ></span>
					</div>
					<div class="form-group">

						<input type="submit" class="btn btn-warning btn-block"
							value="정보수정하기">
					</div>
				</form>
			</article>





		</div>
	</section>


	<!--footer include -->
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>


	<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>
	
	<script>
		
		//내용입력 이랑 입력 강제 
		$(function(){
			
			 $('#joinform').submit(function () {
	             //alert("가입");
	             if ($('#id').val() == "") { // 아이디 검사
	                 alert('ID를 입력해 주세요.');
	                 $('#id').focus();
	                 return false;
	             } else if ($('#pwd').val() == "") { // 비밀번호 검사
	                 alert('비밀번호를 입력해 주세요.');
	                 $('#pwd').focus();
	                 return false;
	             } else if ($('#pwdc').val() == "") { // 비밀번호 검사
	                 alert('비밀번호 확인을 입력해 주세요.');
	                 $('#pwdc').focus();
	                 return false;
	             } else if ($('#mname').val() == "") { // 이름 검사
	                 alert('name를 입력해 주세요.');
	                 $('#mname').focus();
	                 return false;
	             } else if ($('#email').val() == "") { // 나이 검사
	                 alert('email를 입력해 주세요.');
	                 $('#email').focus();
	                 return false;
	             } else if ($('#sample6_address').val() == "") { // 주소 검사
	                 alert('주소를 입력해 주세요.');
	                 $('#sample6_address').focus();
	                 return false;
	             } else if ($('#sample6_detailAddress').val() == "") { // 상세주소 검사
	                 alert('상세주소를 입력해 주세요.');
	                 $('#sample6_detailAddress').focus();
	                 return false;
	             }
	             else if ($('#pnum').val() == "") { // 우편번호
	                 alert('phone를 입력해 주세요.');
	                 $('#pnum').focus();
	                 return false;
	             }
	             
	             
	             else if (regFlag[0] === false || regFlag[1] === false
							|| regFlag[2] === false || regFlag[3] === false) {
						alert('정규표현식을 맞춰주세요.')
						return false;
					} else {
						return true;
					}

	         });
			
			
			
		//유효성 검사
						// 목표 : 이름은 2글자 이상 10글자 이하로 정한다
						// 숫자나 특수문자가 입력되면 안된다.

						// 1. input창에 값을 받아서 확인한다.
						// 2. 값이 올바르게 입력되면 "GOOD"을 프린트한다.
						// 3. 값이 올바르지 않으면 "글자나 영어를 2~5개까지 입력하셔야 합니다."라는 경고창이 뜬다.

						var regFlag = [false, false, false, false];
						
						let check_num = /[0-9]/; // 숫자
						let check_eng = /[a-zA-Z]/; // 문자
						let check_spc = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자
						let check_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크

						let nameInput = document.querySelector("#mname");
						let nameResult = document.querySelector(".name");

						function nameCheck() {
						  if (nameInput.value.length > 1 && nameInput.value.length < 10) {
						    if (
						      check_kor.test(nameInput.value) &&
						      !check_num.test(nameInput.value) &&
						      !check_eng.test(nameInput.value) &&
						      !check_spc.test(nameInput.value)
						    ) {
						      nameResult.innerHTML = "GOOD";
						      regFlag[0] = true;
						      console.log("regFlag[0] : " + regFlag[0])
						    } else {
						      nameResult.innerHTML = "한글만 입력이 가능합니다.(2~10개)";
						      regFlag[0] = false;
						      console.log("regFlag[0] : " + regFlag[0])
						    }
						  } else if (nameInput.value.length === 0) {
						    nameResult.innerHTML = "이름을 입력해주세요.(2~10개)";
						    regFlag[0] = false;
						    console.log("regFlag[0] : " + regFlag[0])
						  } else {
						    nameResult.innerHTML = "한글만 입력이 가능합니다.(2~10개)";
						    regFlag[0] = false;
						    console.log("regFlag[0] : " + regFlag[0])
						  }
						}

						nameInput.addEventListener("blur", nameCheck);
						
						// 목표 : 이메일문법확인하기

						let emailInput = document.querySelector("#email");
						let emailResult = document.querySelector(".email");
						let reg_email = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;

						function emailCheck() {
						  if (reg_email.test(emailInput.value)) {
						    emailResult.innerHTML = "GOOD";
						    regFlag[1] = true;
						    console.log("regFlag[1] : " + regFlag[1])
						  } else {
						    emailResult.innerHTML = "이메일을 입력하세요.";
						    regFlag[1] = false;
						    console.log("regFlag[1] : " + regFlag[1])
						  }
						}

						emailInput.addEventListener("blur", emailCheck);

						// 목표 : 비밀번호를 입력하세요.

						let passwordInput = document.querySelector("#pwd");
						let passwordResult = document.querySelector(".password");
						let reg_password = /^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;

						function passwordCkeck() {
						  if (reg_password.test(passwordInput.value)) {
						    passwordResult.innerHTML = "GOOD";
						    regFlag[2] = true;
						    console.log("regFlag[2] : " + regFlag[2])
						  } else {
						    passwordResult.innerHTML =
						      "비밀번호는 8자 이상이어야 하며, 숫자/소문자/특수문자를 모두 포함해야 합니다.";
						    regFlag[2] = false;
						    console.log("regFlag[2] : " + regFlag[2])
						  }
						}

						passwordInput.addEventListener("blur", passwordCkeck);
					
						// 목표 : 전화번호를 입력하세요.

						let phoneInput = document.querySelector("#pnum");
						let phoneResult = document.querySelector(".phone");
						let reg_Phone = /^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/;

						function phoneCkeck() {
						  if (reg_Phone.test(phoneInput.value)) {
						    phoneResult.innerHTML = "GOOD";
						    regFlag[3] = true;
						    console.log("regFlag[3] : " + regFlag[3])
						  } else {
						    phoneResult.innerHTML = "전화번호를 입력하세요.(-없이 번호만 입력)";
						    regFlag[3] = false;
						    console.log("regFlag[3] : " + regFlag[3])
						  }
						}

						phoneInput.addEventListener("blur", phoneCkeck);
						
						/* // 목표 : 버튼을 눌렀을때 유효성검사가 완료되지 않은 곳을 확인한다. 이런것도 있다...

						let button = document.querySelector("#btn");
						let buttonResult = document.querySelector(".button");

						function formCheck(event) {
						  event.preventDefault();
						  if (!
						    nameResult.textContent === "GOOD" &&
						    emailResult.textContent === "GOOD" &&
						    passwordResult.textContent === "GOOD" &&
						    phoneResult.textContent === "GOOD" 
						   
						  ) {
						    buttonResult.innerHTML = "바른 입력 부탁드립니다.";
						    
						  }else{
							  //button.submit();
						  } 
						 
						}

						button.addEventListener("click", formCheck);  */
						
						
						//   비밀번호 확인 
						
						$('#pwdc').keyup(function() {
							if($('#pwd').val() != $('#pwdc').val()){
								$('#message').text('암호가 일치하지 않습니다');
							}else{
								$('#message').text('암호가 일치합니다.');
							}
						});
						
						
						$('#IdCheck').click(
									function(e) {
										e.preventDefault();
										var value = $('#id').val();
										console.log("value : " + value);
										$.ajax({
											url : "idcheck.ump",
											type : 'POST',
											dataType : 'json',
											data:{
												id: $('#id').val()
											},
											success : function(data) {
												//아이디 중복시 아이디 인풋값 제거
												if(data.checkResult === 1){ //아이디 존재
													$('.idcheck').html("아이디가 존재합니다.")
													$('#id').val("");
													$('#id').focus();
												}else{
													$('.idcheck').html("사용하셔도 됩니다.")
												}
											},
											error : function(request, status, error) {
												console.log("code:" + request.status + "\n"
														+ "error:" + error);
				
											}
										})
				
										console.log("입력 아이디 : " + value);
									});
						

			});


	</script>

<script src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>
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
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>
	<script>
	
	
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
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
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
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
							document.getElementById("sample6_detailAddress")
									.focus();
						}
					}).open();
		}
	</script>


</body>
</html>

