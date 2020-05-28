<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/remixicon@2.4.0/fonts/remixicon.css" rel="stylesheet"> <!-- 아이콘 -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/usercss/vendors/images/favicon.ico">
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/usercss/assets/css/main.css" /> --%>
		
<jsp:include page="/WEB-INF/user/common/head.jsp"></jsp:include>


<title>자유게시판 상세보기</title>
</head>

<!-- header include-->
<jsp:include page="../common/header.jsp"></jsp:include>

<body>
	<c:set var="boardFreeDto" value="${requestScope.boardFreeDto}" />
	<c:set var="f_code" value="${requestScope.f_code}" />

	<div class="board_notice_detail">
		<h1 class="titDep1" style="padding-top: 3%; color: white;">
			<strong>자유게시판 상세보기</strong>
		</h1>
		<ul style="padding-left: 10%; margin-top: 5%;">
			<li id="topli"><a href="../Mcdonald_main.html"
				style="color: white;">Home</a></li>
			<li id="topli"><a href="../menu/Mcdonald_menu_hamburger.html"
				style="color: white;">menu</a></li>
		</ul>
	</div>
	<!-- //visualArea -->


	<div class="container" style="padding-top: 2%; padding-right: 2%;">

			<div class="row mb-3">
				<div class="col-8">
					<strong>${boardFreeDto.f_title}</strong>
				</div>

				<div class="col-4 d-flex align-items-center ">
					<div class="mr-auto"></div>
					<div class="ml-auto">
						<strong>${boardFreeDto.f_writer}&nbsp;&nbsp;|&nbsp;&nbsp;${boardFreeDto.f_date}&nbsp;&nbsp;|
							&nbsp;&nbsp;조회수 : ${boardFreeDto.f_readnum}&nbsp;&nbsp;&nbsp;</strong>
					</div>
				</div>
			</div>
			
			<div class="mb-3" style="border-bottom: 3px solid #292929; margin-bottom:10px;">
			</div>


			<%-- <div class="input-group mb-4">
				
				
				<input type="hidden" name="title" id="title" class="form-control mb-4"
					placeholder="글제목" aria-label="Recipient's username"
					aria-describedby="button-addon2" value="${boardFreeDto.f_title}"
					readonly>
				<div class="input-group-append"></div>
				
			</div> --%>


			<div class="mb-4">
				<div name="content" readonly>
            			${boardFreeDto.f_content}
            	</div>
			</div>


			<%-- <div class="input-group">
				<textarea name="" id="" cols="30" rows="10">
			${boardFreeDto.f_content}
			</textarea>
			</div> --%>



			<div class="card mb-2">
				<!-- Post Content Column -->
				<div class="card-body main">

					<div class="d-flex justify-content-end">
				<c:choose>
					<c:when test="${boardFreeDto.f_file_upload == null}">
						첨부파일 : <a  class="mr-auto">&nbsp;첨부된 파일이 없습니다.</a>
						<a href="#" style="margin-right: 5px;"> 
					</c:when>
					<c:otherwise>
						첨부파일 : <a href="BoardFreeFileDownload.b?f_file_upload=${boardFreeDto.f_file_upload}" class="mr-auto">&nbsp;${boardFreeDto.f_file_upload}</a>

						<a href="#" style="margin-right: 5px;"> 
					</c:otherwise>
				</c:choose>		
						<%-- <img src="${pageContext.request.contextPath}/usercss/vendors/images/svg/heart-regular.svg">
						</a> 
						<strong style="margin: 0 10px;">좋아요&nbsp;${boardFreeDto.f_like}</strong> --%>
						<a href="#" style="margin-right: 5px;"> 
						<img style="margin-right: 5px;" src="${pageContext.request.contextPath}/usercss/vendors/images/svg/comment-dots-regular.svg">
						</a> 
						<strong style="margin-right: 10px;">댓글&nbsp;?</strong> 
						
				<c:choose>
					<c:when test="${boardFreeDto.f_writer == id}">	
						<a href="BoardFreeReRegisterPage.b?f_code=	${boardFreeDto.f_code}&f_title=${boardFreeDto.f_title}" 
						class="btn btn-primary" style="margin: 0 5px;">답글
						</a> 
						<a href="BoardFreeUpdatePage.b?f_code=${f_code}" class="btn btn-warning" style="margin: 0 5px;">수정
						</a> 
						<a href="BoardFreeDelete.b?f_code=${f_code}" class="btn btn-danger" style="margin: 0 5px;">삭제</a>
					</c:when>
					<c:otherwise>
						<a href="BoardFreeReRegisterPage.b?f_code=	${boardFreeDto.f_code}&f_title=${boardFreeDto.f_title}" 
						class="btn btn-primary" style="margin: 0 5px;">답글
						</a> 
					</c:otherwise>
				</c:choose>	

					</div>
					<hr>
					<!-- Comments Form -->
					<div class="card my-4">
						<h5 class="card-header">댓글 쓰는 공간</h5>
						<div class="card-body">
							<!-- <form> -->
								<div class="form-group">
									<textarea class="form-control" rows="3" id="comment" name="comment"></textarea>
								</div>
								<button class="btn btn-primary" id="commentWrite" name="commentWrite">Submit</button>
							<!-- </form> -->
						</div>
					</div>

					<!-- Single Comment -->
					<div class="media mb-4">
						<img class="d-flex mr-3 rounded-circle"
							src="http://placehold.it/50x50" alt="">
						<div class="media-body" id="com">
							<h5 class="mt-0">${boardFreeDto.f_writer}</h5>
						</div>
					</div>
				</div>
			</div>
		

	</div>
	<!-- //container  -->
	<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
	<jsp:include page="/WEB-INF/user/common/footer.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/user/common/script.jsp"></jsp:include>

	<script
		src="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/summernote-lite.js"></script>
	<script
		src="${pageContext.request.contextPath}/usercss/vendors/vendors/summernote/lang/summernote-ko-KR.js"></script>

	<script
		src="${pageContext.request.contextPath}/usercss/assets/js/weather.js"></script>

	<script>
		$(function() {
			// Add the following code if you want the name of the file appear on select
			$(".custom-file-input").on(
					"change",
					function() {
						var fileName = $(this).val().split("\\").pop();
						$(this).siblings(".custom-file-label").addClass(
								"selected").html(fileName);
					});

		});
	</script>

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
		
	//////비동기	
		$.ajax({
			url: "SelectCommentList.ua",
			data: {
				f_code:'${f_code}'},
			dataType: "json",
			success: function(resData) {
				makeComment(resData);
			}
		});
		
		//댓글 등록
		$('#commentWrite').click(function() {
			if($('#comment').val() == "") {
				alert('내용을 입력하세요');
				return false;
			}
			
			$.ajax({
				url: "InsertComment.ua",
				data: {
					f_code:'${f_code}',
					name:'${requestScope.f_writer}',
					content:$('#comment').val()
				},
				dataType: "json",
				success: function(resData) {
					console.log(resData);
					$('#com').empty();
					makeComment(resData);
					$('#comment').val("");
				}
			});
		});
		
		//댓글 삭제
		$('#com').on('click', '.deleteComment', function() {
			$.ajax({
				url: "DeleteComment.ua",
				data: {
					f_code: '${f_code}',
					r_code: $(this).data("value")
				},
				dataType: "json",
				success: function(resData) {
					$('#com').empty();
					makeComment(resData);
				}
			});
		});
		
		//댓글 수정
		var check = true;
		$('#com').on('click', '.updateComment', function() {
			if(check) {
				check = false;
				//클릭한 a태그의 class를 cancelUpdate로 바꾸고 아이콘 바꾸기
				$(this).attr('class', 'cancelUpdate');
				$(this).html("<i class='ri-close-line'></i>");
				
				//this(a태그)의 부모태그(blockquote태그)를 parentTag변수에 담기
				var parentTag = $(this).parent();

				//자식태그 중 code(댓글내용이 들어있는 태그)를 찾아서 변수에 담기
				var code = parentTag.find('code');
				//댓글내용 변수에 담기
				var codeText = parentTag.find('code').text();
				//댓글내용이 있는 code태그 삭제
				$(code).remove();
				//input태그 append하기(value에는 기존의 값 셋팅하고, 포커스주기)
				var html = "";
				html += '<div id="updateDiv">';
				html += '<input type="text" value="'+codeText+'" name="content" id="updateContent">';
				html += '<button class="button special small alt" id="commUpdateBtn">Edit</button>';
				html += '</div>';
				parentTag.append(html);
				parentTag.find('input').focus();
				
				var commentNum = $(this).data("value");
				$('#commUpdateBtn').click(function() {
					if($('#updateContent').val() == "") {
						alert('내용을 입력하세요');
						return false;
					}
					
					$.ajax({
						url: "UpdateComment.ua",
						data: {
							f_code: '${f_code}',
							r_code: commentNum,
							r_content: $('#updateContent').val()
						},
						dataType: "json",
						success: function(resData) {
							$('#com').empty();
							makeComment(resData);
						}
					});
				});
			}
			
			//수정 취소 눌렀을 경우 리스트 다시 불러오기
			$('#com').on('click', '.cancelUpdate', function() {
				$.ajax({
					url: "SelectCommentList.ua",
					data: {f_code:'${f_code}'},
					dataType: "json",
					success: function(resData) {
						$('#com').empty();
						makeComment(resData);
					}
				});
				check = true;
			});
		});

			//댓글 목록 그리는 함수
			function makeComment(result) {
				var html = "";
				$.each(result, function(index, obj) {
					html += "<blockquote>" + obj.r_code + " " + obj.r_write_date;
					html += " <a href='javascript:void(0);' data-value='" + obj.r_code + "' class='updateComment' ><i class='ri-pencil-line'></i></a>";
					html += " <a href='javascript:void(0);' data-value='" + obj.r_code + "' class='deleteComment'><i class='ri-delete-bin-line'></i></a><br>";
					html += "<code>" + obj.r_content + "</code></blockquote>";
				});
				$('#com').append(html);
			}
		
		
		
			
	</script>




</body>



</html>