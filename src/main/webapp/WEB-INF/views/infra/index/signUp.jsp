<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>


<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<title>NEXTLEVEL</title>
<meta content="" name="description" />
<meta content="" name="keywords" />

<!-- include link -->
<%@include file=".././common/user/includeV1/link.jsp"%>
<!-- include link -->

</head>

<body>
	<!-- include header -->
	<%@include file=".././common/user/includeV1/header.jsp"%>
	<!-- include header -->

	<main id="main">
		<section id="services" class="services">
			<div class="container-fluid">
				<div class="row">
					<div class="col-4 text-black"></div>
					<div class="col-4">
						<div class="d-flex align-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5">
							<form id="form" name="form" style="width: 27rem" style="justify-content: center">
								<div class="row">
									<h3 class="fw-normal mb-3 pb-3" id="userHeader">사용자 회원가입</h3>
									<h3 class="fw-normal mb-3 pb-3" style="display: none" id="teacherHeader">강사 회원가입</h3>
									<div class="form-check form-switch form-check-reverse">
										<input class="form-check-input" type="checkbox" id="type">
										<label class="form-check-label" for="type">강사이신가요?</label>
									</div>
								</div>

								<!-- ifmmName -->
								<div class="form-outline mb-4">
									<label class="form-label" for="ifmmName">이름 </label>
									<input type="text" id="ifmmName" name="ifmmName" class="form-control form-control" placeholder="홍길동" />
								</div>

								<!-- ifmmId -->
								<div class="form-outline mb-4">
									<label class="form-label" for="ifmmId">ID </label>
									<input type="text" id="ifmmId" name="ifmmId" class="form-control form-control" />
								</div>

								<!-- ifmmEmail -->
								<div class="form-outline mb-4">
									<label class="form-label" for="mailPreview">이메일</label>
									<input type="email" id="mailPreview" name="mailPreview" class="form-control form-control" placeholder="example@naver.com" />
									<input type="hidden" id="ifmmEmail" name="ifmmEmail" />
									<input type="hidden" id="ifmmDoamin" name="ifmmDoamin" />
								</div>

								<!-- ifmmMobile -->
								<div class="form-outline mb-4">
									<label class="form-label" for="ifmmMobile">모바일</label>
									<input type="email" id="ifmmMobile" name="ifmmMobile" class="form-control form-control" />
								</div>

								<!-- ifmmCarrier -->
								<div class="form-outline mb-4">
									<select class="form-select" id="ifmmCarrier" name="ifmmCarrier">
										<option selected>통신사</option>
										<option value="1">SKT</option>
										<option value="2">KT</option>
										<option value="3">LGT</option>
									</select>
								</div>

								<!-- ifmmPassword -->
								<div class="form-outline mb-4">
									<label class="form-label" for="ifmmPassword">비밀번호</label>
									<input type="password" id="ifmmPassword" name="ifmmPassword" class="form-control form-control" />
								</div>
								<div class="form-outline mb-4">
									<label class="form-label" for="confirmPw">비밀번호 확인 </label>
									<input type="password" id="confirmPw" class="form-control form-control" />
								</div>

								<!-- Submit -->
								<div class="d-grid gap-2 col-12 mx-auto">
									<button class="btn" type="button" style="background-color: orange; color: white" onClick="onSubmit()">동의하고 회원가입</button>
								</div>
								
								<hr />
								
								<div class="d-grid gap-2 col-12 mx-auto" id="snsLogin">
									<button type="button" class="btn btn-warning" style="font-weight: bold; height: 40px">카카오로 3초 만에 시작하기</button>
									<button type="button" class="btn btn-success" style="font-weight: bold; color: white; height: 40px">네이버로 시작하기</button>
									<button type="button" class="btn btn-primary" style="font-weight: bold; color: white; height: 40px">페이스북으로 시작하기</button>
									<button type="button" class="btn btn-light" style="font-weight: bold; height: 40px">구글로 시작하기</button>
								</div>
							
							</form>
						</div>
						<div class="col-4 text-black"></div>
					</div>
				</div>
			</div>
		</section>
	</main>


	<!-- include footer -->
	<%@include file=".././common/user/includeV1/footer.jsp"%>
	<!-- include footer-->

	<script>
		let typeChecked = false;
	
		document.getElementById('type').addEventListener('click', (e) => {
		    if (e.target.checked == true) {
		    	typeChecked = true;
		    	document.getElementById('userHeader').style.display = 'none';
		    	document.getElementById('teacherHeader').style.display = 'block';
		    } else {
		    	typeChecked = false
		    	document.getElementById('teacherHeader').style.display = 'none';
		    	document.getElementById('userHeader').style.display = 'block';
		    }
		});
	
		function onSubmit() {
			const form = $("form[name=form]");
			const str = $("#mailPreview").val().split('@')
			console.log(str[0])
			console.log(str[1])
			
			if (typeChecked == true) {
				$.ajax({
					url:'./teacherSignUpProc',
					type:'post',
					data:{
						"iftcId" : $("#ifmmId").val(),
						"iftcName" : $("#ifmmName").val(),
						"iftcPassword" : $("#ifmmPassword").val(),
						"iftcEmail" : str[0],
						"iftcDomain" : str[1],
						"iftcMobile" : $("#ifmmMobile").val(),
						"iftcCarrier" : $("#ifmmCarrier").val(),
					},
					success:(res) => {
						if (res.rt == "success") {
							alert("회원가입을 축하합니다!");
							location.href = "/index/login";
						} else {
							alert("회원가입 실패");
						}
					},
					error:(jqXHR) => {
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
			} else {
				$.ajax({
					url:'./signUpProc',
					type:'post',
					data:{
						"ifmmId" : $("#ifmmId").val(),
						"ifmmName" : $("#ifmmName").val(),
						"ifmmPassword" : $("#ifmmPassword").val(),
						"ifmmEmail" : str[0],
						"ifmmDomain" : str[1],
						"ifmmMobile" : $("#ifmmMobile").val(),
						"ifmmCarrier" : $("#ifmmCarrier").val(),
						"ifmmType" : "22"
					},
					success:(res) => {
						if (res.rt == "success") {
							alert("회원가입을 축하합니다!");
							location.href = "/index/login";
						} else {
							alert("회원가입 실패");
						}
					},
					error:(jqXHR) => {
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
			}		
		};
	</script>

</body>
</html>
